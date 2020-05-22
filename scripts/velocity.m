%Velocity function, as defined in Appendix A.2

function v = velocity(v0, d0, t)

    v = -(v0 .^ 2) * t ./ (distance(v0, d0, t));
endfunction