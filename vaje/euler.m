function [Y,X]=rk2kk(fun,x0,Y0,xk,epsilon)
% funkcija [Y,X]=rk2kk(fun,x0,Y0,xk,epsilon) poišče numerično rešitev
% začetnega problema za NDE
% y'(t)=fun(y(t),t), y(t0)=y0
% po metodi Runge-Kutta reda 2 s kontrolo koraka
%
% Y vektor približkov za vrednosti funkcije
% t vektor parametra t, pri katerih so izračunane vrednosti Y
%
% fun fukcija desnih strani
% t0, Y0 začetni pogoj
% tk rešitev računamo na intervalu [t0, tk]
% lnap predpisana zgornja meja za lokalno napakoY=zeros(n+1,1);
x=x0;
X=[x];
% korak
h=xk-x0;
% zacetni pogoj
y=Y0;
Y=[y];
% koraki metode
while abs(x-x0)<abs(xk-x0) 
  % popravek
  k1=h*feval(fun,y,x);
  k2=h*feval(fun,y+k1,x+h);
  % lokalna napaka
  lnap=(k2-k1)/2;
  % ce je priblizek dober
  if abs(lnap)<epsilon*h
  	% prejsnjo vrednost "popravimo" s (k1+k2)/2
  	y=y+(k1+k2)/2;
	Y=[Y y]; % resitve zlozimo v vektor
	x=x+h;
	X=[X x];
	h=h*sqrt(epsilon*h/abs(lnap))*0.9;
	if abs(x+h-x0)>abs(xk-x0)
	  h=xk-x;
	end
  % ce priblizek ni dober, zmanjsamo korak
  else
	h=h/2;
  end
end
