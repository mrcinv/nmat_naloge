function latex(M,file,d)
% funkcija latex(M,file,d)
% shrani spremenljivko M v datoteko file
% v obliki matrike primerne za latex z številom decimalk d
M = round(M*10^d)/10^d; % zaokrozimo na d decimalk
tex = strrep(strrep(mat2str(M)," ","&"),";","\\\\\n")(2:end-1);
fid = fopen (file, "w");
fwrite(fid,tex);
fclose(fid);
