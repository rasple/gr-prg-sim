

% _____  _              ______                                           ___  ___               _  _                 _               
%|_   _|(_)             | ___ \                                          |  \/  |              (_)| |               (_)              
%  | |   _  _ __   ___  | |_/ / _ __   ___  ___  ___  _   _  _ __   ___  | .  . |  ___   _ __   _ | |_   ___   _ __  _  _ __    __ _ 
%  | |  | || '__| / _ \ |  __/ | '__| / _ \/ __|/ __|| | | || '__| / _ \ | |\/| | / _ \ | '_ \ | || __| / _ \ | '__|| || '_ \  / _` |
%  | |  | || |   |  __/ | |    | |   |  __/\__ \\__ \| |_| || |   |  __/ | |  | || (_) || | | || || |_ | (_) || |   | || | | || (_| |
%  \_/  |_||_|    \___| \_|    |_|    \___||___/|___/ \__,_||_|    \___| \_|  |_/ \___/ |_| |_||_| \__| \___/ |_|   |_||_| |_| \__, |
%                                                                                                                               __/ |
%                                                                                                                              |___/ 

matrix = load('curve.mat')

b=2.65;
w=1.53;

vrl = matrix.vrl;
vrr = matrix.vrr;
vfl = matrix.vfl;
vfr = matrix.vfr;
tv = matrix.tv;
sw = matrix.sw

vrl_simulink = [tv, vrl];
vrr_simulink = [tv, vrr];
vfl_simulink = [tv, vfl];
vfr_simulink = [tv, vfr];


% Get radiuses
[R_RR, R_RL, R_FR, R_FL] = findRadius(vrl, vrr, vfl, vfr, w, tv, sw);

% Generate own tire velocity data for testing using randomNumberGenerator()
% Will generate data up to 80 km/h per wheel

vrl_rand = randomNumberGenerator(5, 3, 80, 1, 56093)
vrr_rand = randomNumberGenerator(5, 3, 80, 2, 56093)
vfl_rand = randomNumberGenerator(5, 3, 80, 3, 56093)
vfr_rand = randomNumberGenerator(5, 3, 80, 4, 56093)