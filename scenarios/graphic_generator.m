clear all;
close all;

load odometry_pose10.log
load crash10.log
load stop10.log
load odometry_pose20.log
load crash20.log
load stop20.log
load odometry_pose30.log
load crash30.log
load stop30.log
load odometry_pose40.log
load crash40.log
load stop40.log
load odometry_pose50.log
load crash50.log
load stop50.log
load odometry_pose60.log
load crash60.log
load stop60.log

velocity10 = odometry_pose10(:,1)*3.6;
t_odom10 = odometry_pose10(:,2);
t_stop10 = stop10(1);
t_crash10 =crash10(1);

velocity20 = odometry_pose20(:,1)*3.6;
t_odom20 = odometry_pose20(:,2);
t_stop20 = stop20(1);
t_crash20 =crash20(1);

velocity30 = odometry_pose30(:,1)*3.6;
t_odom30 = odometry_pose30(:,2);
t_stop30 = stop30(1);
t_crash30 =crash30(1);

velocity40 = odometry_pose40(:,1)*3.6;
t_odom40 = odometry_pose40(:,2);
t_stop40 = stop40(1);
t_crash40 =crash40(1);

velocity50 = odometry_pose50(:,1)*3.6;
t_odom50 = odometry_pose50(:,2);
t_stop50 = stop50(1);
t_crash50 =crash50(1);

velocity60 = odometry_pose60(:,1)*3.6;
t_odom60 = odometry_pose60(:,2);
t_stop60 = stop60(1);
t_crash60 =crash60(1);

t_odom_10_aux = t_odom10 - t_crash10;
t_odom_20_aux = t_odom20 - t_crash20;
t_odom_30_aux = t_odom30 - t_crash30;
t_odom_40_aux = t_odom40 - t_crash40;
t_odom_50_aux = t_odom50 - t_crash50;
t_odom_60_aux = t_odom60 - t_crash60;

c4=[0, 0.4470, 0.7410];
c2=	[0.8350, 0.0780, 0.1840];
c3=[0.9, 0.0, 0.9];
c1=[0.4940, 0.1840, 0.5560];
c5=[0.4660, 0.6740, 0.1880];
c6=	[0.25, 0.25, 0.25];

figure
plot(t_odom_60_aux, velocity60, 'Color', c1,'LineWidth',1.5)
hold on
plot(t_odom_50_aux, velocity50, 'Color', c2,'LineWidth',1.5)
hold on
plot(t_odom_40_aux, velocity40, 'Color', c3,'LineWidth',1.5)
hold on
plot(t_odom_30_aux, velocity30, 'Color', c4,'LineWidth',1.5)
hold on
plot(t_odom_20_aux, velocity20, 'Color', c5,'LineWidth',1.5)
hold on
plot(t_odom_10_aux, velocity10, 'Color', c6,'LineWidth',1.5)
grid on
xlim([-1.5 0])
ylim([0 70])
%%legend('60 km/h', '50 km/h', '40 km/h', '30 km/h', '20 km/h', '10 km/h','Location', 'northeastoutside')
xlabel('Time (s)')
ylabel('Vehicle speed (km/h)')

plot(t_stop60-t_crash60,60.24,  '-gX','LineWidth',2,'MarkerEdgeColor',	c1,'MarkerFaceColor',	c1,'MarkerSize',8)
plot(t_stop50-t_crash50,50,  '-gX','LineWidth',2,'MarkerEdgeColor',	c2,'MarkerFaceColor',	c2,'MarkerSize',8)
plot(t_stop40-t_crash40,40,  '-gX','LineWidth',2,'MarkerEdgeColor',	c3,'MarkerFaceColor',	c3,'MarkerSize',8)
plot(t_stop30-t_crash30,30,  '-gX','LineWidth',2,'MarkerEdgeColor',	c4,'MarkerFaceColor',	c4,'MarkerSize',8)
plot(t_stop20-t_crash20,20,  '-gX','LineWidth',2,'MarkerEdgeColor',	c5,'MarkerFaceColor',	c5,'MarkerSize',8)
plot(t_stop10-t_crash10,10,  '-gX','LineWidth',2,'MarkerEdgeColor',	c6,'MarkerFaceColor',	c6,'MarkerSize',8)

xticks([-1.5 -1.25 -1 -0.75 -0.5 -0.25 0])
set(gca,'FontSize',12)

% figure
% plot(t_odom_15kmh, velocity_odom_15kmh, 'Color', 'b')
% xline(t_crash_15kmh, 'Color', 'b')
% hold on
% plot(t_odom_20kmh, velocity_odom_20kmh, 'Color', 'r')
% xline(t_crash_20kmh, 'Color', 'r')
% hold on
% plot(t_odom_25kmh, velocity_odom_25kmh, 'Color', 'k')
% xline(t_crash_25kmh, 'Color', 'k')
% hold on
% plot(t_odom_30kmh, velocity_odom_30kmh, 'Color', 'g')
% xline(t_crash_30kmh, 'Color', 'g')
% grid on
% dim1 = [.75 .8 .1 .1];
% str1 = {'15 km/h'};
% anot1 = annotation('textbox',dim1,'EdgeColor',[1 1 1],'String',str1,'FitBoxToText','on');
% anot1.Color = 'b';
% dim2 = [.75 .75 .1 .1];
% str2 = {'20 km/h'};
% anot2 = annotation('textbox',dim2,'EdgeColor',[1 1 1],'String',str2,'FitBoxToText','on');
% anot2.Color = 'r';
% dim3 = [.75 .7 .1 .1];
% str3 = {'25 km/h'};
% anot3 = annotation('textbox',dim3,'EdgeColor',[1 1 1],'String',str3,'FitBoxToText','on');
% anot3.Color = 'k';
% dim4 = [.75 .65 .1 .1];
% str4 = {'30 km/h'};
% anot4 = annotation('textbox',dim4,'EdgeColor',[1 1 1],'String',str4,'FitBoxToText','on');
% anot4.Color = 'g';
