function tocke=bezier(t,P)
% funkcija tocke=bezier(t,P) 
% izračune točke na Bezierovi krivulji s 
% kontrolnim poligonom P pri vrednoti parametra t
% po definiciji z Bernsteinovimi polinomi
% Vhod
% t ... tabela parametrov 
% P ... 2xn tabela kontrolnih točk

% Bernsteinov polinom
b = @(n,i,t) nchoosek(n,i)*t.^i.*(1-t).^i;
% stopnja Bezierove krivulje
n = length(P)-1; 
tocke = zeros(2,length(t));
for i=0:n
  tocke += P(:,i+1)*b(n,i,t);
end
