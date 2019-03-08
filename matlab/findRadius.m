function [R_RR, R_RL, R_FR, R_FL] = findRadius()
matrix = load('curve.mat')
w=2.65;
b=1.53;

R_RL = zeros(size(matrix.tv))
R_RR = zeros(size(matrix.tv))
R_FL = zeros(size(matrix.tv))
R_FR = zeros(size(matrix.tv))



    for i = 1:length(matrix.tv)
        
        vrl = matrix.vrl(i);
        vrr = matrix.vrr(i);
        vfl = matrix.vfl(i);
        vfr = matrix.vfr(i);
        R_RL(i) = w/((vrr / vrl) - 1);
        R_RR(i) = (R_RL(i) * vrr) / vrl;
        R_FR(i) = (R_RL(i) * vfr) / vrl;
        R_FL(i) = (R_RL(i) * vfl) / vrl;
        
    end
    plot(matrix.tv, R_RL, matrix.tv, R_RR, matrix.tv, R_FR, matrix.tv, R_FL)
    
end