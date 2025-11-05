! (import! &orcut ../zero-subsume)

! (assertEqual (collapse (zero-subsume (AND A (OR (AND A) (AND (NOT B) (OR (AND E) (AND F))) (OR (AND C) TRUE)))))
                (AND A (OR (AND A) (AND (NOT B) (OR (AND E) (AND F))))))