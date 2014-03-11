function [y,x]=rk4(f,x0,y0,xk,n)
% funkcija [y,x]=rk4(f,x0,y0,xk,n)
% izračuna približek za začetni problem
% za NDE y'(x)=f(x,y) z y(x0)=y0
% z Runge-Kutta metodo reda 4 s korakom h
% Vhod
% f ... desna stran DE
% x0,y0 ... začetni pogoj y(x0)=y0
% xk ... končni čas
% n ... število korakov
% Rezultat
% y ... zaporedje približkov
% x ... točke, v katerih računamo približke
y=zeros(length(y0),n+1);
x=linspace(x0,xk,n+1);
h=x(2)-x(1)

y(:,1)=y0; % zacetni pogoj v y0

for i=1:n
	k1 = h*f(x(i),y(:,i));
	k2 = h*f(x(i)+h/2,y(:,i)+k1/2);
	k3 = h*f(x(i)+h/2,y(:,i)+k2/2);
	k4 = h*f(x(i)+h,y(:,i)+k3);	
	y(:,i+1)=y(:,i) + (k1 + 2*(k2 + k3) + k4)/6;
end
