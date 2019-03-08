% Calculate curve radius for every wheel

function [R_RR, R_RL, R_FR, R_FL] = findRadius(vrl, vrr, vfl, vfr, w, tv)

R_RL = zeros(size(tv));
R_RR = zeros(size(tv));
R_FL = zeros(size(tv));
R_FR = zeros(size(tv));

    for i = 1:length(matrix.tv)
        
        R_RL(i) = w/((vrr(i) / vrl(i)) - 1);
        R_RR(i) = (R_RL(i) * vrr(i)) / vrl(i);
        R_FR(i) = (R_RL(i) * vfr(i)) / vrl(i);
        R_FL(i) = (R_RL(i) * vfl(i)) / vrl(i);
           
    end
        R_RR(isnan(R_RR)|isinf(R_RR)) = 0.0;
        R_RL(isnan(R_RL)|isinf(R_RL)) = 0.0;
        R_FR(isnan(R_FR)|isinf(R_FR)) = 0.0;
        R_FL(isnan(R_FL)|isinf(R_FL)) = 0.0;
    
    plot(tv, R_RR, tv, R_RL, tv, R_FR, tv, R_FL)
    
    R_RR = [tv, R_RR]
    R_RL = [tv, R_RL]
    R_FR = [tv, R_FR]
    R_FL = [tv, R_FL]
    
end
    