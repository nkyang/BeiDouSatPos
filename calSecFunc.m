function sec = calSecFunc(t)
date = datenum(t);
sec = 86400*mod(fix(date)-2,7)+ 3600*hour(t) + 60*minute(t) + second(t);
end