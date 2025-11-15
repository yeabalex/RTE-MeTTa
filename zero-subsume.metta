(= (zero-subsume $expr $poa)
   (let $each (superpose $expr)
   (if (== (get-metatype $each) Symbol)
       $each
       (unify $each $poa
          (collapse)
          (collapse (zero-subsume $each $poa))          
             )
          )
       )
   )


(= (zs $expr $poa) (collapse (zero-subsume $expr $poa)))