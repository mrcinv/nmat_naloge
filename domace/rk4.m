function [y,x]=rk2(f,x0,y0,h,n)
% funkcija [y,x]=rk2(f,x0,y0,h,n)
% izračuna približek za začetni problem
% za NDE y'(x)=f(x,y) z y(x0)=y0
% z Runge-Kutta metodo reda 2 s korakom h
% Vhod
% f ... desna stran DE
% x0,y0 ... začetni pogoj y(x0)=y0
% h ... korak
% n ... število korakov
% Rezultat
% y ... zaporedje približkov
% x ... točke, v katerih računamo približke
y=zeros(length(y0),n+1);
x=linspace(x0,x0+n*h,n+1);

y(:,1)=y0; % zacetni pogoj v y0

for i=1:n
	k1 = h*f(x(i),y(:,i));
	k2 = h*f(x(i)+h,y(:,i)+k1);	
	y(:,i+1)=y(:,i)+(k1+k2)/2;
end
