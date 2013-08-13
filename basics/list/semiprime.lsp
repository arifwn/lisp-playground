; generate a list of number that is a product of exacly 2 prime factor
; using brute force approach
; example: 4 = 2 x 2; 6 = 3 x 2; 9 = 3 x 3; 15 = 3 x 5
; generate a list of prime number
(print "Finding prime numbers...")

(defun primep (num)
    (if (equal num 1)
        (return-from primep nil))
    (let ((count 0))
        (dotimes (divoper num)
            (let ((frac (/ num (+ divoper 1))))
                (if (integerp frac) (setf count (+ count 1)))
            )
        )
        (if (equal count 2) (return-from primep t))
    )
)

(defun semiprimep (num)
    (dotimes (i 100)
        (dotimes (j 100)
            ; j == num, break
            (cond 
                ((= j num)
                    (return)))

            ; if j is a prime
            (cond 
                ((primep j) 
                    ; if i is not a prime
                    (cond 
                        ((primep i)
                            ; if i * j == num, OK
                            (cond 
                                ((equal (* i j) num)
                                    (print (format nil "~D x ~D = ~D" i j num))
                                    (return-from semiprimep t))))))))
        (cond 
            ; i == num, break
            ((= i num)
                (return)))))

(let ((count 0))
    (dotimes (i 100)
        (let ((num (+ i 1)))
            (cond
                ((semiprimep num)
                    (setf count (+ count 1))
                    (print num)))))
    (print (format nil "~D semiprime~:P found." count)))
