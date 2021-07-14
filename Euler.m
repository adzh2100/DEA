function Euler
 
	% Инициализираме параметрите, които ще използваме
	x0=2; y0=1; b=4;
	h1=0.4; h2=0.2 ; h3=0.02;
    xmin=2;
    xmax=4;
    
    % Чертаем графиката на решението с черен цвят
    hold on;
    grid on;
    axis([xmin, xmax, -5, 60]);
    y=dsolve('x*Dy-x^3=3*y','y(2)=1','x');
    x=linspace(xmin,xmax);
    plot(x,eval(y),'k');
    
	% Инициализираме масивите
	x1=[];y1=[];
	x1(1)=x0;y1(1)=y0;
	
	x2=[];y2=[];
	x2(1)=x0;y2(1)=y0;
	
	x3=[]; y3=[]; 
	x3(1)=x0; y3(1)=y0;
	
	N=(b-x0);
     
    % Дефинираме функцията
	function z=ff(x,y)
		z=(3*y+x^3)/x;
    end

	% Попълваме масивите
	for m=1:(N/h1)
        x1(m+1)=x0+m*h1;
        y1(m+1)=y1(m)+ff(x1(m),y1(m))*h1; 
    end
    
    for k=1:(N/h2)
        x2(k+1)=x0+k*h2;
        y2(k+1)=y2(k)+ff(x2(k),y2(k))*h2;
    end
    
	for j=1:(N/h3)
		x3(j+1)=x0+j*h3;
		y3(j+1)=y3(j)+ff(x3(j),y3(j))*h3;
    end
    
	% Чертаем графиките приближенията
	plot(x1,y1,'g',x2,y2,'b',x3,y3,'r')
 
end