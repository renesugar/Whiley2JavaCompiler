constant ADD is 1
constant SUB is 2
constant MUL is 3
constant DIV is 4

type binop is ({int op, expr left, expr right} r) where r.op == ADD || r.op == SUB || r.op == MUL || r.op == DIV
type asbinop is ({int op, expr left, expr right} r) where r.op == ADD || r.op == SUB

type expr is int | binop

type asexpr is int | asbinop

function f(asexpr e) -> asexpr:
    return e

method main() -> expr:
    expr e1 = {op: MUL, left: 1, right: 2}
    return f(e1)
