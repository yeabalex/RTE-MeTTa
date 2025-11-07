(= (incon-handle-pt $expr)
    (let $each (superpose $expr)
        (if (== (get-metatype $each) Symbol)
            $each
            (unify $each ($r (AND (NOT $x) $y))
                $r
                (collapse (incon-handle-pt $each))))))

(= (incon-handle $expr)
    (collapse (incon-handle-pt $expr)))
