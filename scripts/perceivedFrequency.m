%Perceived frequency function, as defined in Appendix A.3

function fp = perceivedFrequency (f0, v0, d0, t)
    fp = (f0 * 343) ./ (343 - velocity(v0, d0, t));

endfunction