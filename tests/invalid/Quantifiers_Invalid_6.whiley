
function f(int[] ls) -> bool
requires all { i in 0..|ls| | ls[i] > 0 }:
    return true

function g(int[] ls) :
    f(ls)