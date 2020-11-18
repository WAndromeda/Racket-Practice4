#lang racket

(define (getAtomaticElem list_k num)
   (cond [ (list? (first list_k))
          (define list_t null)
          (set! list_t (drop list_k 1))
          (getAtomaticElem list_t num)
        ]
        [else
         (cond [ (= num 1)
                 (first list_k)
                 ]
               [else
                (define list_t null)
                (set! list_t (drop list_k 1))
                (define num_t (- num 1))
                (getAtomaticElem list_t num_t)
                ]
         )
        ]
  )
)

(printf "НИКОЛАЕВ НИКИТА СЕРГЕЕВИЧ - ИКБО-13-17 - ПРАКТИКА 4 - ВАРИАНТ 13\n")
(printf "НОМЕРА СПИСКОВ НАЧИНАЮТСЯ С НАЧАЛА И С 1\n")
(define list_k (list (list 2) (list 3) 4 5 'a (list 'e 'r) 'g))
(printf "Элемент: ~a\n\n" (getAtomaticElem list_k 3))
(printf "Элемент: ~a\n\n" (getAtomaticElem list_k 4))




