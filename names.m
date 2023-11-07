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
nexttile([1 3])
% Plot settings
nameplot(hx,hy,hxx,hyy)
nameplot(ax,ay,axx,ayy)
nameplot(ix,iy,ixx,iyy)
nameplot(mx,my,mxx,myy)
nameplot(ax2,ay2,axx2,ayy2)
nameplot(nx,ny,nxx,nyy)
grid on
axis ([-1 20 -2 6])
title('Haiman')
xlabel('X')
ylabel('Y')
hold off


%% Definining data points for the name "Afiq"

% Coordinates of cursive a
axA = [3.3 1 3 3.4 3.5 5];
ayA = [2 1.2 0.6 2.2 1 0.5];

% Coordinates of cursive f
fxA = [5 7 8 5 5.5 7 10 6.5];
fyA = [0.5 2 4 4 2 -0.5 -0.5 1];

% Coordinates of cursive i
ixA = [6.5 9 10 11 13];
iyA = [1 1.25 3 1.25 1.2];

% Coordinates of cursive q
qxA = [3.8 5.32 5.8 5.32 4.4 4.4 5.85 5.85 5.66 6.5 7.1];
qyA = [1.2 2.5 2.4 2.5 1.5 0 0.5 2.5 0.6 -1.5 0.25];

qxA = qxA + 9.2;

%------------------------------------------------------------------

% Spline interpolation

[t, tt] = tpar(axA);
axxA = spline(t, axA, tt);
ayyA = spline(t, ayA, tt);

[t, tt] = tpar(fxA);
fxxA = spline(t, fxA, tt);
fyyA = spline(t, fyA, tt);

[t, tt] = tpar(ixA);
ixxA = spline(t, ixA, tt);
iyyA = spline(t, iyA, tt);

[t, tt] = tpar(qxA);
qxxA = spline(t, qxA, tt);
qyyA = spline(t, qyA, tt);

%------------------------------------------------------------------
nexttile([1 3])
% Plot settings

nameplot(axA,ayA,axxA,ayyA)
nameplot(fxA,fyA,fxxA,fyyA)
nameplot(ixA,iyA,ixxA,iyyA)
nameplot(qxA,qyA,qxxA,qyyA)

grid on
axis ([-1 20 -2 6])
title('afiq')
xlabel('X')
ylabel('Y')
hold off


%% Definining data points for the name "QL"

 % Define data points for x and y coordinates
 qxQ = [1.5 1.0 0.7 0.35 0.5 1.8 2.9 2.5 1.6 1.8 3.0];
 qyQ = [0.3 0.3 0.5 1.0 2.3 3.3 2.0 0.8 0.25 0.55 0.2];

 ixQ = [1.0 0.4 0.5 1.6 2.5 2.7 2.0 2.6 3.6 4.4 5.1 ];
 iyQ = [1.15 1.4 0.5 0.7 2.2 4.0 4.0 1.1 0.6 0.7 0.9 ];

 ixQ = ixQ + 3;

 n = length(qxQ);
 t = 0:n-1; % Parametric coordinate t
tt = 0:0.01:n-1; % More dense coordinate tt for spline interpolation

 % Compute spline interpolation
 qxxQ = spline(t, qxQ, tt);
 qyyQ = spline(t, qyQ, tt);

 xxQ = spline(t, ixQ, tt);
 yyQ = spline(t, iyQ, tt);

nexttile([1 3])
 % Plot settings
 figure(1)
 plot(qxxQ, qyyQ, 'k', 'LineWidth', 1.5) % plot spline
hold on
 plot(qxQ, qyQ, 'bo', 'MarkerFaceColor', 'b') % plot data points
 axis([-0.2 10 -0.2 4.5])
 grid on
 title('Spline Interpolation of Cursive Letter Q')
 xlabel('x')
 ylabel('y')
 set(gca, 'FontSize', 10, 'LineWidth', 1)
 grid on

 figure(2)
 plot(xxQ, yyQ, 'k', 'LineWidth', 1.5) % plot spline
hold on
 plot(ixQ, iyQ, 'bo', 'MarkerFaceColor', 'b') % plot data points
 axis([-0.2 10 -0.2 4.5])
 grid on
 title('QL')
 xlabel('x')
 ylabel('y')
 set(gca, 'FontSize', 10, 'LineWidth', 1)
 grid on