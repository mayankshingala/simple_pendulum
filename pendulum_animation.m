%Animation of Pendulum
%Counter Variable = ct
%ct = 1;
l = 1;
theta = theta(:,1);

v = VideoWriter('pendulum_anim.avi');
v.FrameRate = 60;
open(v);

for i = 1:length(theta)
    theta_1 = theta(i);

    x0 = 0;
    y0 = 0;

    x1 = l*sin(theta_1);
    y1 = -l*cos(theta_1);
    
    figure(3)
    title('Motion of Pendulum with SMC');
    plot([-0.7 0.7],[0 0],'linewidth',3,'color','b');
    hold on
    plot([x0 x1],[y0 y1],'linewidth',2,'color','g');
    hold on 
    
    plot(x0,y0,'P','markersize',10,'MarkerEdgeColor','g','MarkerFaceColor','r');
    plot(x1,y1,'O','markersize',30,'MarkerEdgeColor','k','MarkerFaceColor','r');
    grid on;

    %axis([-1.5 1.5 -1.5 0.5]);
    xlim([-l-0.2*l l+0.2*l]);
    ylim([-l-0.2*l 0.2*l]);
    hold off;

    %M(ct) = getframe(gcf);
    frame = getframe(gcf);
    writeVideo(v,frame);

    %ct = ct+1;
end

% Making the animation by collecting each frame
%movie(M)
%videofile = VideoWriter('pendulum.avi','uncompressed AVI');
%open(videofile);
%writeVideo(videofile,M);
%close(videofile);

close(v)