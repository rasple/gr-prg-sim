function [dataset] = randomNumberGenerator(a, c, m, seed, n)
% Generater random test data for D5
% seed = X(0)
% n = length
% a,c,m according to formula of task D5

% Preallocate return array
dataset = zeros(1, n);
% Set seed
dataset(1) = seed;

for i = 2:1:n
    dataset(i) = mod(round((a * dataset(i-1) + c)),m);
    %fprintf('(%d * %d + %d) mod %d\n',a,dataset(i-1),c,round(max))
end
