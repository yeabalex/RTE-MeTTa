(= (incon-handle-pt $expr $poa)
    (let $each (superpose $expr)
        (if (== (get-metatype $each) Symbol)
            $each
            (unify $each $poa
                (collapse)
                (collapse (incon-handle-pt $each $poa))))))

(= (incon-handle $expr $poa)
    (collapse (incon-handle-pt $expr $poa)))