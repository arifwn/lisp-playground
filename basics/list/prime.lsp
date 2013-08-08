; generate a list of prime number
(print "Finding prime numbers...")

(defun primep (num)
    (if (equal num 1)
        (return-from primep nil))
    (let ((count 0))
        (dotimes (divoper num)
            (let ((frac (/ num (+ divoper 1))))
                (if (integerp frac)
                    (setf count (+ count 1)))))
        (if (equal count 2)
            (return-from primep t))))

(let ((count 0))
    (dotimes (i 100)
        (let ((num (+ i 1)))
            (cond
                ((primep num)
                    (setf count (+ count 1))
                    (print num)))))
    (print (format nil "~D prime~:P found." count)))
