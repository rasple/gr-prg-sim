function [random] = randomNumberGenerator(a, c, m, seed, n)
% Generater random test data for D5
% seed = X(0)
% n = length
% a,c,m according to formula of task D5

% Preallocate return array
random = zeros(n)
% Set seed
random(1) = seed

for i = 2:n
    random(i) = mod(round((a * random(i-1) + c)), round(m))
end

