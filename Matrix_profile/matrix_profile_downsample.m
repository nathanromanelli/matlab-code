case4_1 = case2(1:1:end);
sz1 = size(case2);
sz2 = size(case4_1);
motif_len = round(512*(sz2/sz1));
tic;
mpx(case4_1,motif_len,motif_len);
disp(toc);