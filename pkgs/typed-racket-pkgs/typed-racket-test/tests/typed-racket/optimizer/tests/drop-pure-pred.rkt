#;
#<<END
TR opt: drop-pure-pred.rkt 16:6 (list 2) -- dead else branch
TR opt: drop-pure-pred.rkt 14:6 (exact-integer? x) -- useless pure code
'(1)

END

#lang typed/scheme
#:optimize

(let ()
  (define x 7)
  (if (exact-integer? x)
      (list 1)
      (list 2)))
