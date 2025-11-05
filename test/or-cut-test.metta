! (import! &orcut ../or-cut)

! (assertEqual (collapse (or-cut (AND A (OR (AND (NOT C)) (AND B (OR (NOT D))))))) 
                (AND A (OR (AND (NOT C)) (AND B (NOT D)))))