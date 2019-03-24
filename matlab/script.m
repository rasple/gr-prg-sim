

% _____  _              ______                                           ___  ___               _  _                 _               
%|_   _|(_)             | ___ \                                          |  \/  |              (_)| |               (_)              
%  | |   _  _ __   ___  | |_/ / _ __   ___  ___  ___  _   _  _ __   ___  | .  . |  ___   _ __   _ | |_   ___   _ __  _  _ __    __ _ 
%  | |  | || '__| / _ \ |  __/ | '__| / _ \/ __|/ __|| | | || '__| / _ \ | |\/| | / _ \ | '_ \ | || __| / _ \ | '__|| || '_ \  / _` |
%  | |  | || |   |  __/ | |    | |   |  __/\__ \\__ \| |_| || |   |  __/ | |  | || (_) || | | || || |_ | (_) || |   | || | | || (_| |
%  \_/  |_||_|    \___| \_|    |_|    \___||___/|___/ \__,_||_|    \___| \_|  |_/ \___/ |_| |_||_| \__| \___/ |_|   |_||_| |_| \__, |
%                                                                                                                               __/ |
%                                                                                                                              |___/ 

% D2
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

% D3

sim('D3', 700)

% D4

sim('D4', 700)

% D5

% Generate own tire velocity data for testing using randomNumberGenerator()
% Will generate data up to 80 km/h per wheel

% Amount of data points
n = 1000

% Create random test data
vrl_simulink_noise = randomNumberGenerator(5, 3, 80, 1, n);
vrr_simulink_noise = randomNumberGenerator(5, 3, 80, 2, n);
vfl_simulink_noise = randomNumberGenerator(5, 3, 80, 3, n);
vfr_simulink_noise = randomNumberGenerator(5, 3, 80, 4, n);

figure('Name', 'Random Speeds', 'NumberTitle', 'off')
subplot(4,1,1)
plot(tv(1:n), vrl_simulink)
title(V_{RL, rand})

subplot(4,1,2)
plot(tv(1:n), vrr_simulink)
title(V_{RR, rand})

subplot(4,1,3)
plot(tv(1:n), vfl_simulink)
title(V_{FL, rand})

subplot(4,1,4)
plot(tv(1:n), vfr_simulink)
title(V_{FR, rand})

% D6

