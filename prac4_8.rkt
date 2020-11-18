#lang racket

(define (getElemRec list_j num)
  (cond [ (= num 0)
         (last list_j)
        ]
        [else
         (define list_t null)
         (set! list_t (take list_j (- (length list_j) 1)))
         (define num_t (- num 1))
         (getElemRec list_t num_t)
        ]
  )
)


(printf "НИКОЛАЕВ НИКИТА СЕРГЕЕВИЧ - ИКБО-13-17 - ПРАКТИКА 4 - ВАРИАНТ 8\n")
(printf "НОМЕРА СПИСКОВ НАЧИНАЮТСЯ С КОНЦА И С 0\n")
(define list_k (list 1 2 3 4 'a 'b (list 'a 'b) 'c))
(printf "Элемент: ~a\n\n" (getElemRec list_k 1))
(printf "Элемент: ~a\n\n" (getElemRec list_k 6))