% Seeding
rng(3141592653);
motif = randn(1,512);
test = [randn(1,16666) motif randn(1,16666) motif randn(1,16666)];

FileName = "pure_noise_motif.txt";
[fid, msg] = fopen(FileName, 'w');
assert(fid ~= -1, 'Cannot open file for writing: %s\n%s\n', FileName, msg);
fmt = [repmat('%10.10f', 1, 1), '\n'];
fprintf(fid, fmt, test');
fclose(fid);