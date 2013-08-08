; generate a list of number that is a product of exacly 2 prime factor
; example: 4 = 2 x 2; 6 = 3 x 2; 9 = 3 x 3; 15 = 3 x 5
; generate a list of prime number
(print "Finding prime numbers...")

(defun semiprimep (num)
    (if (equal num 1)
        (return-from semiprimep nil))
    (let ((count 0))
        (dotimes (divoper num)
            (let ((frac (/ num (+ divoper 1))))
                (if (integerp frac)
                    (setf count (+ count 1)))))
        (if (equal count 2)
            (return-from semiprimep t))))

(let ((count 0))
    (dotimes (i 100)
        (let ((num (+ i 1)))
            (cond
                ((semiprimep num)
                    (setf count (+ count 1))
                    (print num)))))
    (print (format nil "~D semiprime~:P found." count)))
