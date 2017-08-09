function [x,y] = TiroParabolico( th, t, vo )

g = 9.8132;

x= vo*tand(th)*t;

y = x*tand(th) - (g*(x.^2))/(2*vo^2*cosd(th)^2);

end

