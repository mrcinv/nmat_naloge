function latex(M,file)
% funkcija latex(M,file)
% shrani spremenljivko M v datoteko file
% v obliki matrike primerne za latex
M = round(M*100)/100; % zaokrozimo na 2 decimalki
tex = strrep(strrep(mat2str(M)," ","&"),";","\\\\\n")(2:end-1);
fid = fopen (file, "w");
fwrite(fid,tex);
fclose(fid);
