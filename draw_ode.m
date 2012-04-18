function y = draw_ode(f, delta, range)
%
% draw the image of an ode with dy/dx = f(x,y)
%

%f = @(x,y) y;

%range = 5;
%delta = 1;
%scale = 100;

n = range / delta;

hold on;

for i = -n:n
	for j = -n:n
		p = [i*delta,j*delta];
		k = f(p(1),p(2));
		t = [delta,k*delta];
		m = sqrt(t(1)^2 + t(2)^2);
		tm = t/m;
		p1 = p - tm;
		p2 = p + tm;
		M = [p1; p2];
		plot(M(:,1),M(:,2))
	endfor
endfor

endfunction
