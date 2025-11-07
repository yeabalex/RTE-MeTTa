(= (or-cut-pt $expr) 
    (let $each (superpose $expr)
        (if(== (get-metatype $each) Symbol)
            $each
            (unify $each (OR $x)
                $x
                (collapse (or-cut-pt $each))))))

(= (or-cut $expr) (collapse (or-cut-pt $expr)))