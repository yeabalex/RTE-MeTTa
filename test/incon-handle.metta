! (import! &orcut ../incon-handle)

! (assertEqual (collapse (incon-handle (AND A (OR (AND (NOT A) (OR (AND B) (AND C)))) (AND B))))
                (AND A (OR (AND B))))