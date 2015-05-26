(ns sstd.core)


(defn new-block-from-lines
  "(vector-of Line) => (Block B)
   create a new block"
  [LINES]
  {:isa :block :lines (vec LINES)}
  )



(declare check-isa-alter-foreign, check-isa-create-table
         normer-block
         normer-alter-foreign-block, normer-create-table-block
         normer-create-table-line )


(defn normer-block
  "(Block B1) => (Block B2)"
  [B1]
  (let [B3 (check-isa-alter-foreign B1)
        B4 (check-isa-create-table B3) ]
    (cond (:isa-alter-foreign B4) (normer-alter-foreign-block B4)
          (:isa-create-table B4)  (normer-create-table-block  B4)
          true B4 )))


(defn check-isa-alter-foreign
  "(Block B1) => (Block B2)
  (:isa-alter-foreign B2) : boolean"
  [B1]
  (let [LINES             (:lines B1)
        ISA-ALTER-FOREIGN (if (= (count LINES) 4)
                            (let [LINE1             (nth LINES 0)
                                  LINE3             (nth LINES 2) ]
                              (and (.startsWith LINE1 "alter table") (.startsWith LINE3 "foreign key")) ))
        B2                (assoc B1 :isa-alter-foreign ISA-ALTER-FOREIGN) ]
    B2 ))

(defn check-isa-create-table
  "(Block B1) => (Block B2)
  (:isa-create-table B2) : boolean"
  [B1]
  (let [LINES             (:lines B1)
        ISA-CREATE-TABLE (if (> (count LINES) 0)
                              (.startsWith (nth LINES 0) "create table") )
        B2                (assoc B1 :isa-create-table ISA-CREATE-TABLE) ]
    B2 ))


(defn normer-alter-foreign-block
  "B1 => B2
  (and (Block B1) (:isa-alter-foreign B1))
  (and (Block B2) (:is-norme B2))"
  [B1]
  (let [LINES             (:lines B1)
        LINE1             (nth LINES 0)
        LINE1-SCHEMATABLE (last (clojure.string/split LINE1 #" "))
        FROM-TABLE        (last (clojure.string/split LINE1-SCHEMATABLE #"\."))
        LINE4             (nth LINES 3)
        LINE4-SCHEMATABLE (last (clojure.string/split LINE4 #" "))
        TO-TABLE          (last (clojure.string/split LINE4-SCHEMATABLE #"\."))
        LINES2            (assoc LINES 1 (str "add constraint FK_" FROM-TABLE "_" TO-TABLE))
        B2                (assoc B1 :is-norme true :lines LINES2) ]
    B2 ))


(defn normer-create-table-block
  "B1 => B2
  (and (Block B1) (:isa-create-table B1))
  (and (Block B2) (:is-norme B2))"
  [B1]
  (let [LINES             (:lines B1)
        LINES2            (map normer-create-table-line LINES)
        B2                (assoc B1 :is-norme true :lines (vec LINES2)) ]
    B2 ))


; (normer-create-table-line "primary key (ADRC_ID)")
; (normer-create-table-line "ADRC_ADRESSETYPE varchar(255),")
(defn normer-create-table-line
  "L => L2
  (and (Create-Table-Line L) (Create-Table-Line-Normee L2))"
  [L]
  (if-let [MATCH (re-matches #"primary key \((.*)_ID\)" L)]
    (str "CONSTRAINT PK_" (second MATCH) " PRIMARY KEY (" (second MATCH) "_ID)")
    L ))


(declare fix-sql fic2strings strings2blocks blocks2strings strings2fic)

(defn fix-sql
  "FP1, FP2 => nil.
  (and (FilePath FP1) (FilePath FP1))"
  [FP1 FP2]
  (let [STRING*1 (fic2strings FP1)
        BLOCK*1  (strings2blocks STRING*1)
        BLOCK*2  (map normer-block BLOCK*1)
        STRING*2 (blocks2strings BLOCK*2)]
    (strings2fic STRING*2 FP2) ))

(defn fic2strings
  "FP => (list-of String)
  (FilePath FP)"
  [FP]
  (map clojure.string/trim (clojure.string/split-lines (slurp FP))) )

(defn strings2blocks
  ""
  [S*]
  (map new-block-from-lines (remove (partial = [""]) (partition-by (partial = "") S*))) )

(defn blocks2strings [B*]
  (flatten (interpose [""] (map :lines B*))) )

(defn strings2fic [S* FP]
  (spit FP (clojure.string/join "\n" S*)) )

; (= "D:\\repo\\sstd\\repl\\inputs\\create_full_1.5.sql" (input-path "create_full_1.5.sql"))
(defn input-path
  "return input path from file name F.
   (FileName F)."
  [F]
  (str "D:\\repo\\sstd\\repl\\inputs\\" F) )

; (= "D:\\repo\\sstd\\repl\\outputs\\create_full_1.5.sql" (output-path "create_full_1.5.sql"))
(defn output-path
  "return output path from file name F.
   (FileName F)."
  [F]
  (str "D:\\repo\\sstd\\repl\\outputs\\" F) )



; (apply fix-sql (map #(% "create_full_1.7.sql") [input-path output-path]))

;(def STRING*1 (fic2strings "D:\\repo\\sstd\\repl\\inputs\\create_full_1.4.sql"))

;(def BLOCK*1  (strings2blocks STRING*1))

;(def BLOCK*2  (map normer-block BLOCK*1))

;(last BLOCK*2)

;(def STRING*2 (blocks2strings BLOCK*2))

;(last STRING*2)

;(take 3 (reverse STRING*2))

;(strings2fic STRING*2 "D:\\repo\\sstd\\repl\\inputs\\create_full_1.4-fixed.sql")



















