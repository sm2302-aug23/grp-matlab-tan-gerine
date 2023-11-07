ax = [3.8 5.32 5.8 5.32 4.4 4.4 5.85 5.85 5.66 7.1];
ay = [0.25 2.5 2.4 2.5 1.5 0 0.5 2.5 0.6 0.25];

[t, tt] = tpar(ax);
axx = spline(t, ax, tt);
ayy = spline(t, ay, tt);

nameplot(ax,ay,axx,ayy)