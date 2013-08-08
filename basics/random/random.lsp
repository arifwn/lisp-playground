; generating random numbers

; 
(setf *random-state* (make-random-state t))

(print (format nil "(random 1000) -> ~d" (random 1000)))
(print (format nil "(random 1000.0) -> ~d" (random 1000.0)))

(let ((state (make-random-state)))
    (print "-- Start Predefined Random State ---")
    (print state)

    ; make a copy of predifined state object, so we can use the same state over and over again to generate the same number
    (let ((s (make-random-state state))) (print (format nil "(random 1000 state) -> ~d" (random 1000 s))))
    (let ((s (make-random-state state))) (print (format nil "(random 1000 state) -> ~d" (random 1000 s))))
    (let ((s (make-random-state state))) (print (format nil "(random 1000 state) -> ~d" (random 1000 s))))
    (let ((s (make-random-state state))) (print (format nil "(random 1000.0 state) -> ~d" (random 1000.0 s))))
    (let ((s (make-random-state state))) (print (format nil "(random 1000.0 state) -> ~d" (random 1000.0 s))))
    (let ((s (make-random-state state))) (print (format nil "(random 1000.0 state) -> ~d" (random 1000.0 s))))
    (print state)
    (print "-- End Predefined Random State ---")
)

(print (format nil "(random 1000) -> ~d" (random 1000)))
(print (format nil "(random 1000.0) -> ~d" (random 1000.0)))
