

% _____  _              ______                                           ___  ___               _  _                 _               
%|_   _|(_)             | ___ \                                          |  \/  |              (_)| |               (_)              
%  | |   _  _ __   ___  | |_/ / _ __   ___  ___  ___  _   _  _ __   ___  | .  . |  ___   _ __   _ | |_   ___   _ __  _  _ __    __ _ 
%  | |  | || '__| / _ \ |  __/ | '__| / _ \/ __|/ __|| | | || '__| / _ \ | |\/| | / _ \ | '_ \ | || __| / _ \ | '__|| || '_ \  / _` |
%  | |  | || |   |  __/ | |    | |   |  __/\__ \\__ \| |_| || |   |  __/ | |  | || (_) || | | || || |_ | (_) || |   | || | | || (_| |
%  \_/  |_||_|    \___| \_|    |_|    \___||___/|___/ \__,_||_|    \___| \_|  |_/ \___/ |_| |_||_| \__| \___/ |_|   |_||_| |_| \__, |
%                                                                                                                               __/ |
%                                                                                                                              |___/ 

matrix = load('curve.mat')

w=2.65;
b=1.53;

vrl = matrix.vrl;
vrr = matrix.vrr;
vfl = matrix.vfl;
vfr = matrix.vfr;
tv = matrix.tv;

% Get v in m/s
vrl_simulink = [tv, vrl./3.6];
vrr_simulink = [tv, vrr./3.6];
vfl_simulink = [tv, vfl./3.6];
vfr_simulink = [tv, vfr./3.6];

% Get radiuses
[R_RR, R_RL, R_FR, R_FL] = findRadius(vrl, vrr, vfl, vfr, w, tv);

% Random Number 