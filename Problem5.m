function Problem5()
n = (-1:204);
x = input('Input a value ');
for o = 1:200
    if o == 1
        A(o) = x(o+1); B(o) = -1.5.*x(o+1)+2.*x(o+2)-0.5.*x(o+3);  
    elseif 1 < o <= 198
        A(o) = x(o+1); B(o) = 0.5.*x(o+2)-0.5.*x(o);     
    elseif o == 199
        A(o) = x(o+1); B(o) = 1.5.*x(o+1)-2.*x(o)+0.5.*x(o-1);
    else
        A(o) = x(o+1); B(o) = NaN;
    end
end
n = 0:199;
plot(n,A,'--r>','markersize',5,'markerfacecolor','r'),
hold on,
plot(n,B,':gs','markersize',5,'markerfacecolor','g'),
grid on
legend('X(n)','Y(n)');

        