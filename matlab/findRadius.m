% Calculate curve radius for every wheel

function [R_RR, R_RL, R_FR, R_FL] = findRadius(vrl, vrr, vfl, vfr, w, tv, sw)

R_RL = zeros(size(tv));
R_RR = zeros(size(tv));
R_FL = zeros(size(tv));
R_FR = zeros(size(tv));

    for i = 1:length(tv)
    % Calculate radiuses
        R_RL(i) = w/((vrr(i) / vrl(i)) - 1);
        R_RR(i) = (R_RL(i) * vrr(i)) / vrl(i);
        R_FR(i) = (R_RL(i) * vfr(i)) / vrl(i);
        R_FL(i) = (R_RL(i) * vfl(i)) / vrl(i);

    end
    
    % Filter bad values
    R_RR(isnan(R_RR)|isinf(R_RR)) = 0.0;
    R_RL(isnan(R_RL)|isinf(R_RL)) = 0.0;
    R_FR(isnan(R_FR)|isinf(R_FR)) = 0.0;
    R_FL(isnan(R_FL)|isinf(R_FL)) = 0.0;

    %plot(tv, R_RR, tv, R_RL, tv, R_FR, tv, R_FL)

    %Calculating with pythogras and matrix op
    %w_m=zeros(size(tv));
    %w_m(:,1) = w;
    %r_hl=(w_m./((v_hr./v_hl)-1));
    %r_hr=r_hl+w;
    %r_fr=sqrt(1.53^2 + r_hr.^2);
    %r_fl=sqrt(1.53^2 + r_hl.^2)


    %Plotting
    figure('Name','Radiuses','NumberTitle','off');
    
    subplot(5,2,1);
    plot(tv,vfl);
    title('V_{FL}');
    subplot(5,2,2);
    plot(tv,vfr);
    title('V_{FR}');
    subplot(5,2,3);
    plot(tv,vrl);
    title('V_{RL}');
    subplot(5,2,4);
    plot(tv,vrr);
    title('V_{RR}');
    
    subplot(5,2,5);
    plot(tv,R_FL);
    title('R_{FL}');
    subplot(5,2,6);
    plot(tv,R_FR);
    title('R_{FR}');
    subplot(5,2,7);
    plot(tv, R_RL);
    title('R_{RL}');
    subplot(5,2,8);
    plot(tv,R_RR);
    title('R_{RR}');
    
    subplot(5,2,[9 10]);
    plot(tv, sw);
    title('sw-angle');

    R_RR = [tv, R_RR];
    R_RL = [tv, R_RL];
    R_FR = [tv, R_FR];
    R_FL = [tv, R_FL];

end
