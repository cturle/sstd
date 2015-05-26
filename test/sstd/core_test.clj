(ns sstd.core-test
  (:require [clojure.test :refer :all]
            [sstd.core :refer :all]))



(deftest normer-block-test
  (testing "normer-block"
    (let [BLOCK1   (new-block-from-lines ["alter table acceptation.GARANTIEACCEPTATION_GAR"
                                          "add constraint FK_r6v6jbo6v7mv5gerofe1lxaep"
                                          "foreign key (FK_RIS_GAR)"
                                          "references acceptation.RISQUEACCEPTATION_RIS"] )
          BLOCK2        (normer-block BLOCK1) ]

      (is (= (nth (:lines BLOCK2) 0)
             "alter table acceptation.GARANTIEACCEPTATION_GAR" ))
      (is (= (nth (:lines BLOCK2) 1)
             "add constraint FK_GARANTIEACCEPTATION_GAR_RISQUEACCEPTATION_RIS" ))
      (is (= (nth (:lines BLOCK2) 2)
             "foreign key (FK_RIS_GAR)" ))
      (is (= (nth (:lines BLOCK2) 3)
              "references acceptation.RISQUEACCEPTATION_RIS" )) )))

; (run-tests)

