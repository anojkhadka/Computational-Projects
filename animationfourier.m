
close all;
l_limit = -6;
u_limit = 0;
m = 1;
f_x = 0;

for k = 1:3
    l_limit = l_limit;
    u_limit = l_limit + 4;
    x1 = [l_limit, u_limit];
    y1 = [-2, 2];
    plot(x1,y1, Color='blue',LineWidth= 2)
    xlabel('X', 'FontSize',14, 'FontWeight','bold')
    ylabel('f(x)', 'FontSize',14, 'FontWeight','bold')
    hold on
    l_limit = u_limit;   
end

ax = gca;
ax.XAxisLocation = 'origin';
ax.YAxisLocation = 'origin';
ax.GridAlpha = 0.8;
ax.XGrid = 'on';
ax.GridLineStyle = "-.";
ax.XAxis.FontSize = 14;
ax.YAxis.FontSize = 14;
ax.XAxis.FontWeight = 'bold';
ax.YAxis.FontWeight = 'bold';
ax.YLim = [-3 3];

while m< 52
        x2 = linspace(-6,6);
        f_x = f_x + (4/(m*pi))*((-1)^(m+1))*sin((m*pi*x2)/2);   
        
        if m == 1
            plot(x2,f_x, Color='red', LineWidth= 1)
            title("Fourier series approximation with" + " " + num2str(m) + " " + "terms", FontSize=15, Color='m')
        elseif m == 5
            plot(x2,f_x, Color='red', LineWidth= 1)
            title("Fourier series approximation with" + " " + num2str(m) + " " + "terms", FontSize=15, Color='m')
        elseif m == 15
            plot(x2,f_x, Color='red',LineWidth= 1 )
            title("Fourier series approximation with" + " " + num2str(m) + " " + "terms", FontSize=15, Color='m')
        elseif m == 50
            plot(x2,f_x, Color='red', LineWidth = 1)
            title("Fourier series approximation with" + " " + num2str(m) + " " + "terms", FontSize=15, Color='m')
        end
        m = m + 1;
end

