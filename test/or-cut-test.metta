! (register-module! ../RTE-MeTTa)
! (import! &self RTE-MeTTa:or-cut)

! (assertEqual (or-cut (AND A (OR (AND (NOT C)) (AND B (OR (NOT D)))))) 
                (AND A (OR (AND (NOT C)) (AND B (NOT D)))))


!(assertEqual (or-cut (AND X (OR (AND Y)))) 
                                (AND X Y))
!(assertEqual (or-cut (OR (AND P) (OR (AND Q)))) 
                        (OR (AND P) (AND Q)))
!(assertEqual (or-cut (AND M (OR (AND (NOT N))))) 
                        (AND M (AND (NOT N))))