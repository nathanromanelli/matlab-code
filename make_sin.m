% Seeding
rng(3141592653);

% Sine wave randomized 

Fs = 1000;                   % samples per second
dt = 1/Fs;                   % seconds per sample
StopTime = 50;             % seconds
t = (0:dt:StopTime-dt)';     % seconds
Fc = 60;                     % hertz
x = cos(2*pi*Fc*t);
x = x + randn(size(x))/10000;

FileName = "sine_wave_coarse.txt";

%Printing the dataset as a txt for attimo
[fid, msg] = fopen(FileName, 'w');
assert(fid ~= -1, 'Cannot open file for writing: %s\n%s\n', FileName, msg);
fmt = [repmat('%10.10f', 1, 1), '\n'];
fprintf(fid, fmt, x');
fclose(fid);

figure;
plot(t,x);
xlabel('time (in seconds)');
title('Signal versus Time');
zoom xon;