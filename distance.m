%The distance function, as described in Appendix A.1

function d = distance(v0, d0, t)  
    d = sqrt((v0 * t) .^ 2 + d0 .^ 2);
endfunction