! (register-module! ../RTE-MeTTa)
! (import! &self RTE-MeTTa:or-cut)

! (assertEqual (or-cut (AND A (OR (AND (NOT C)) (AND B (OR (NOT D)))))) 
                (AND A (OR (AND (NOT C)) (AND B (NOT D)))))