(= (incon-handle $expr)
   (let $each (superpose $expr) 
   (if (== (get-metatype $each) Symbol)
           $each

           (unify $each ($r (AND (NOT $x) $y))
               $r
               (collapse (incon-handle $each))
           )
       )))