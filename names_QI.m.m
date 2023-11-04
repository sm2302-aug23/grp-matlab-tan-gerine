 % Define data points for x and y coordinates
 qx = [1.5 1.0 0.7 0.35 0.5 1.8 2.9 2.5 1.6 1.8 3.0];
 qy = [0.3 0.3 0.5 1.0 2.3 3.3 2.0 0.8 0.25 0.55 0.2];

 ix = [1.0 0.4 0.5 1.6 2.5 2.7 2.0 2.6 3.6 4.4 5.1 ];
 iy = [1.15 1.4 0.5 0.7 2.2 4.0 4.0 1.1 0.6 0.7 0.9 ];

 n = length(qx);
 t = 0:n-1; % Parametric coordinate t
tt = 0:0.01:n-1; % More dense coordinate tt for spline interpolation

 % Compute spline interpolation
 qxx = spline(t, qx, tt);
 qyy = spline(t, qy, tt);

 xx = spline(t, ix, tt);
 yy = spline(t, iy, tt);

 % Plot settings
 figure(1)
 plot(qxx, qyy, 'k', 'LineWidth', 1.5) % plot spline
hold on
 plot(qx, qy, 'bo', 'MarkerFaceColor', 'b') % plot data points
 axis([-0.2 6 -0.2 4.5])
 grid on
 title('Spline Interpolation of Cursive Letter Q')
 xlabel('x')
 ylabel('y')
 set(gca, 'FontSize', 10, 'LineWidth', 1)
 grid on

 figure(2)
 plot(xx, yy, 'k', 'LineWidth', 1.5) % plot spline
hold on
 plot(ix, iy, 'bo', 'MarkerFaceColor', 'b') % plot data points
 axis([-0.2 6 -0.2 4.5])
 grid on
 title('Spline Interpolation of Cursive Letter I')
 xlabel('x')
 ylabel('y')
 set(gca, 'FontSize', 10, 'LineWidth', 1)
 grid on