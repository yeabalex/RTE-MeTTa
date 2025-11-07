! (register-module! ../RTE-MeTTa)
! (import! &self RTE-MeTTa:zero-subsume)

! (assertEqual (zero-subsume (AND A (OR (AND A) (AND (NOT B) (OR (AND E) (AND F))) (OR (AND C) TRUE)))) 
                (AND A (OR (AND A) (AND (NOT B) (OR (AND E) (AND F))))))