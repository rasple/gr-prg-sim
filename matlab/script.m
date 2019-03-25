

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
sw = matrix.sw;

vrl_simulink = [tv, vrl];
vrr_simulink = [tv, vrr];
vfl_simulink = [tv, vfl];
vfr_simulink = [tv, vfr];


% Get radiuses
[R_RR, R_RL, R_FR, R_FL] = findRadius(vrl, vrr, vfl, vfr, w, tv, sw);

% D3

sim('D3', 700);

% D4

sim('D4', 700);

% D5

% Generate own tire velocity data for testing using randomNumberGenerator()

% Amount of data points
n = 100;

% Create random test data
%vrl_simulink_noise = randomNumberGenerator(21, 23, 80, 1, n);
%vrr_simulink_noise = randomNumberGenerator(7, 13, 81, 2, n);
%vfl_simulink_noise = randomNumberGenerator(31, 17, 90, 3, n);
%vfr_simulink_noise = randomNumberGenerator(39, 11, 76, 4, n);

vrl_simulink_noise = randomNumberGenerator(21, 23, 100, 1, n);
vrr_simulink_noise = randomNumberGenerator(11, 13, 100, 2, n);
vfl_simulink_noise = randomNumberGenerator(31, 17, 100, 3, n);
vfr_simulink_noise = randomNumberGenerator(41, 11, 100, 4, n);

f2 = figure('Name', 'Random Speeds', 'NumberTitle', 'off');
figure(f2)
subplot(2,2,1)
plot(tv(1:n), vrl_simulink_noise)
title('V_{RL, noise}')

subplot(2,2,2)
plot(tv(1:n), vrr_simulink_noise)
title('V_{RR, noise}')

subplot(2,2,3)
plot(tv(1:n), vfl_simulink_noise)
title('V_{FL, noise}')

subplot(2,2,4)
plot(tv(1:n), vfr_simulink_noise)
title('V_{FR, noise}')

% D6

% Generate noise for short interval

n = 500;

% stretch factor

stretch_x = 5;
stretch_y = 1;

% Length of final signal

tv_length = 56093;

% Scale noise to be within bounds
vrl_rand = (randomNumberGenerator(11, 11, n, 4, n) - n/2 ) ./ n * stretch_y;
vrr_rand = (randomNumberGenerator(11, 31, n, 10, n) - n/2) ./ n * stretch_y;
vfl_rand = (randomNumberGenerator(11, 23, n, 14, n) - n/2) ./ n * stretch_y;
vfr_rand = (randomNumberGenerator(11, 121, n, 18, n) - n/2) ./ n * stretch_y;

% Reduce "jumpiness" in noise by stretching
vrl_rand = imresize(vrl_rand, [stretch_x*n 1], 'nearest');
vrr_rand = imresize(vrr_rand, [stretch_x*n 1], 'nearest');
vfl_rand = imresize(vfl_rand, [stretch_x*n 1], 'nearest');
vfr_rand = imresize(vfr_rand, [stretch_x*n 1], 'nearest'); 

vrl_rand = vrl_rand(1:n);
vrr_rand = vrr_rand(1:n);
vfl_rand = vfl_rand(1:n);
vfr_rand = vfr_rand(1:n);

vrl_rand = imresize(vrl_rand, [56093 1], 'nearest');
vrr_rand = imresize(vrr_rand, [56093 1], 'nearest');
vfl_rand = imresize(vfl_rand, [56093 1], 'nearest');
vfr_rand = imresize(vfr_rand, [56093 1], 'nearest');

f3 = figure('Name', 'Random Speeds For Simulation', 'NumberTitle', 'off');
figure(f3)

subplot(2,2,1)
plot(tv, vrl_rand(1:tv_length))
title('V_{RL, rand}')

subplot(2,2,2)
plot(tv, vrr_rand(1:tv_length))
title('V_{RR, rand}')

subplot(2,2,3)
plot(tv, vfl_rand(1:tv_length))
title('V_{FL, rand}')
 
subplot(2,2,4)
plot(tv, vfr_rand(1:tv_length))
title('V_{FR, rand}')

vrl_simulink_rand = [tv, vrl_rand];
vrr_simulink_rand = [tv, vrr_rand];
vfl_simulink_rand = [tv, vfl_rand];
vfr_simulink_rand = [tv, vfr_rand];

sim('D6', 700);




