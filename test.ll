(DATA  z)
(FUNCTION  doAddition  [(void void)]
  (BB 1
    (OPER 3 Func_Entry []  [])
  )
  (BB 2
    (OPER 4 Mov [(r 5)]  [(i 4)])
    (OPER 5 Mov [(r 3)]  [(r 5)])
    (OPER 6 Load [(r 7)]  [(s z)])
    (OPER 7 Mov [(r 9)]  [(i 2)])
    (OPER 8 Add_I [(r 8)]  [(r 3)(r 9)])
    (OPER 9 Mov [(r 7)]  [(r 8)])
    (OPER 10 Store []  [(r 8)(s z)])
    (OPER 11 Load [(r 12)]  [(s z)])
    (OPER 12 Mov [(r 13)]  [(i 9)])
    (OPER 13 Pass []  [(r 13)])
    (OPER 14 JSR []  [(s getValue)])
    (OPER 15 Mov [(r 14)]  [(m RetReg)])
    (OPER 16 Add_I [(r 11)]  [(r 12)(r 0)])
    (OPER 17 Mov [(r 2)]  [(r 11)])
    (OPER 18 Mov [(m RetReg)]  [(r 2)])
    (OPER 19 Jmp []  [(bb 0)])
  )
  (BB 0
    (OPER 1 Func_Exit []  [])
    (OPER 2 Return []  [(m RetReg)])
  )
)
(FUNCTION  getValue  [(int x)]
  (BB 1
    (OPER 3 Func_Entry []  [])
  )
  (BB 2
    (OPER 4 Mov [(m RetReg)]  [(r 1)])
    (OPER 5 Jmp []  [(bb 0)])
  )
  (BB 0
    (OPER 1 Func_Exit []  [])
    (OPER 2 Return []  [(m RetReg)])
  )
)
