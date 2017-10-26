#lang racket



(provide ins_beg)

(define (ins_beg el lst)
  (cons el lst))

+(ins_beg '1 (list 2 3 4))
+(ins_beg '(a b) '(b c d))

;inserting at end
(provide ins_end)
(define (ins_end el lst)
  (append lst (list el)))

+(ins_end 'a '(b c d))
+(ins_end '(a b) '(b c d))

(provide count_top_level)
;counting top level items
(define (count_top_level lst) 
  (if (null? lst) 0
      (+1 (count_top_level (cdr lst)))))

;counting instances of item in list
(provide count_instances)
(define (count_instances item lst)
  (cond[(null? lst) 0]
       [(equal? item (car lst)) (+1 (count_instances item lst 0))]
       [else (count_instances item (cdr lst))]))

