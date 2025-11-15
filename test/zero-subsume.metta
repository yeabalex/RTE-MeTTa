! (register-module! ../RTE-MeTTa)
! (import! &self RTE-MeTTa:zero-subsume)



!(assertEqual (zs (AND X (OR (AND D) TRUE)) (OR (AND D) TRUE)) (AND X))
!(assertEqual (zs (AND A (OR (AND A) (AND (NOT B) (OR (AND E) (AND F))) (OR (AND C) TRUE))) (OR (AND C) TRUE))
                    (AND A (OR (AND A) (AND (NOT B) (OR (AND E) (AND F))))))

!(assertEqual (zs (AND P (OR TRUE (AND (NOT Q)))) (OR TRUE (AND (NOT Q)))) (AND P))
!(assertEqual (zs (AND Z (OR (AND T) (OR (AND U) TRUE))) (OR (AND U) TRUE)) (AND Z (OR (AND T))))