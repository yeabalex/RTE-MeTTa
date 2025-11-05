(= (or-cut $expr) 
    (let $each (superpose $expr)
        (if(== (get-metatype $each) Symbol)
            $each
            (unify $each (OR $x)
                $x
                (collapse (or-cut $each))))))
