%% Definining data points for the name "Haiman"

% Coordinates of cursive H
hx = [1 2 1.25 0.75 0.25 3.75 3.25 2.5 3.8];
hy = [4 5 2 0.25 1.25 4.25 4.75 1 0.25];

% Coordinates of A
ax = [3.8 5.32 5.8 5.32 4.4 4.4 5.85 5.85 5.66 7.1];
ay = [0.25 2.5 2.4 2.5 1.5 0 0.5 2.5 0.6 0.25];

% Coordinates of I
ix = [7.1 8.2 7.5 7.7 8.45];
iy = [0.25 2.5 1.8 0 0.25];

% Coordinates of M
mx = [8.45 9 9.2 9.05 9 9.1 9.8 10.4 10.6 10.6 10.8 11.4 11.8 12.1 12.5];
my = [0.25 1.46 2.5 2 0 0.5 2.5 1.5 0 0.5 1.5 2.5 1.5 0 0.25];

% Coordinates of second A
ax2 = ax + 8.7;
ay2 = ay;

% Coordinates of N
nx = [15.8 16.4 16.25 16.2 16.3 16.8 17.5 17.8 18.5];
ny = [0.25 2.5 2 0 1 2.5 1.5 0 0.25];
%------------------------------------------------------------------

% Spline interpolation
[t, tt] = tpar(hx);
hxx = spline(t, hx, tt);
hyy = spline(t, hy, tt);

[t, tt] = tpar(ax);
axx = spline(t, ax, tt);
ayy = spline(t, ay, tt);

[t, tt] = tpar(ix);
ixx = spline(t, ix, tt);
iyy = spline(t, iy, tt);

[t, tt] = tpar(mx);
mxx = spline(t, mx, tt);
myy = spline(t, my, tt);

[t, tt] = tpar(ax2);
axx2 = spline(t, ax2, tt);
ayy2 = spline(t, ay2, tt);

[t, tt] = tpar(nx);
nxx = spline(t, nx, tt);
nyy = spline(t, ny, tt);


%------------------------------------------------------------------

% Plot settings
nameplot(hx,hy,hxx,hyy)
nameplot(ax,ay,axx,ayy)
nameplot(ix,iy,ixx,iyy)
nameplot(mx,my,mxx,myy)
nameplot(ax2,ay2,axx2,ayy2)
nameplot(nx,ny,nxx,nyy)
grid on
axis ([-1 20 -2 6])

xlabel('X')
ylabel('Y')
hold off