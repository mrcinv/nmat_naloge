function [Y,t] = euler(f,t0,y0,tk,n)
% funkcija [Y,t] = euler(f,t0,y0,tk,n)
% resi DE y'=f(y,t) z začetnim pogojem 
% y(t0) = y0
% z Eulerjevo metodo s korakom h=(tk-t0)/n

% ponavljamo formulo y(t+h) = y(t) + f(y,t)
% dokler ne dosežemo tk
t=linspace(t0,tk,n+1);
h=t(2)-t(1); % korak
y = y0;
Y = y;
for i=1:n
  % nov y
  y = y + h*feval(f,y,t(i));
  Y = [Y y];
end
  
