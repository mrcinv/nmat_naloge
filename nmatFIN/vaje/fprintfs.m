function fprintfs(file,varargin)
% funkcija FPRINTFS je poenostavljena različica funkcije fprintf, 
% ki namesto ročice na odprto datoteko sprejme ime datoteke.
fid = fopen (file, "w");
fprintf(fid,varargin{:});
fclose(fid);
