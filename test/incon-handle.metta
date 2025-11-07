! (register-module! ../RTE-MeTTa)
! (import! &self RTE-MeTTa:incon-handle)


! (assertEqual (incon-handle (AND A (OR (AND (NOT A) (OR (AND B) (AND C)))) (AND B))) 
                (AND A (OR (AND B))))