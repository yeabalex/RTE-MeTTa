! (register-module! ../RTE-MeTTa)
! (import! &self RTE-MeTTa:incon-handle)


! (assertEqual (incon-handle (AND A (OR (AND (NOT A) (OR (AND B) (AND C)))) (AND B)) 
                                                    (AND (NOT A) (OR (AND B) (AND C)))) 
                                                    (AND A (OR (AND B))))


!(assertEqual(incon-handle (AND D (OR (AND (NOT D) (OR (AND A) (AND (NOT A)))) (AND B))) (AND (NOT D) (OR (AND A) (AND (NOT A)))))
                            (AND D (OR (AND B))))