% Seeding
rng(3141592653);
x = randn(1,50000);

FileName = "pure_noise.txt";
[fid, msg] = fopen(FileName, 'w');
assert(fid ~= -1, 'Cannot open file for writing: %s\n%s\n', FileName, msg);
fmt = [repmat('%10.10f', 1, 1), '\n'];
fprintf(fid, fmt, x');
fclose(fid);