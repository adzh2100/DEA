function homework
  hold on;
  grid on;
  y=dsolve('Dy+sin(x)*y=exp((cos(x))*cot(3*x)','y(1)=1','x');
  x=-10:0.01:10;
  ezplot(y,x);
  axis([-10 10 2 4]);
  xlabel('x');
  ylabel('y');
end
