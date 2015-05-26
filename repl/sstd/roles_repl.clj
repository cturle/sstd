(ns sstd.roles-repl
  (:require [sstd.roles :refer :all]))

;
;"D:\\repo\\sstd\\repl\\inputs\\create_full_1.4-fixed.sql"
(def I1 (clojure.string/split-lines (slurp "D:\\repo\\sstd\\repl\\inputs\\roles-FU.txt")))

(spit "D:\\repo\\sstd\\repl\\inputs\\roles-FU_out.txt" (clojure.string/join ";" I1))




