
close all

% Variables a bornes del motor
% Corrientes de secuencia

t=Isn.time;
Isn1=Isn.data; 
figure(1)
plot(t, Isn1)
grid on
axis([0 6 0 60])
xlabel('tiempo (seg)')
ylabel('I_{sn} (A)')


Isp1=Isp.data; 
figure(2)
plot(t, Isp1)
grid on
%axis([0 16 0 60])
xlabel('tiempo (seg)')
ylabel('I_{sp} (A)')

%tensiones de secuencia

Vsn1=Vsn.data; 
figure(3)
plot(t, Vsn1)
grid on
axis([0 16 0 10])
xlabel('tiempo (seg)')
ylabel('V_{sn} (V)')



Vsp1=Vsp.data; 
figure(4)
plot(t, Vsp1)
grid on
%axis([0 16 0 60])
xlabel('tiempo (seg)')
ylabel('V_{sp} (V)')


Zp=Vsp1./Isp1;
Zn=Vsn1./Isn1;
h=figure(5)
x=8.5;
y=6;
set(h, 'PaperUnits', 'centimeters');
set(h, 'PaperPosition', [1, 1, x, y]);
set(h, 'Units', 'centimeters');
set(h, 'Position', [3, 3, x, y]);

plot(t, Zn,t, Zp)
grid on
axis([0 6 0 7])
xlabel('tiempo (seg)')
ylabel('|Z| (\Omega)')
legend('|Z_{n}|','|Z_{p}|')





h=figure(6)
x=10;
y=16;
set(h, 'PaperUnits', 'centimeters');
set(h, 'PaperPosition', [1, 1, x, y]);
set(h, 'Units', 'centimeters');
set(h, 'Position', [3, 3, x, y]);

subplot(4,1,1)
plot(t, Isp1)
axis([0 6 0 1500])
grid on
ylabel('I_{sp} (A)')

subplot(4,1,2)
plot(t, Isn1)
grid on
axis([0 6 0 50])
ylabel('I_{sn} (A)')

subplot(4,1,3)
plot(t, Vsp1)
axis([0 6 200 400])
grid on
ylabel('V_{sp} (V)')

subplot(4,1,4)
plot(t, Vsn1)
axis([0 6 0 12])
grid on
ylabel('V_{sn} (V)')
xlabel('tiempo (seg)')



% Variables a bornes del Transformador

t=Isn.time-8.3;

Isnt1=Isnt.data; 
figure(7)
plot(t, Isnt1)
grid on
axis([0 6 0 60])
xlabel('tiempo (seg)')
ylabel('I_{sn} (A)')


Ispt1=Ispt.data; 
figure(8)
plot(t, Ispt1)
grid on
%axis([0 16 0 60])
xlabel('tiempo (seg)')
ylabel('I_{sp} (A)')

%tensiones de secuencia

Vsnt1=Vsnt.data; 
figure(3)
plot(t, Vsnt1)
grid on
axis([0 6 0 10])
xlabel('tiempo (seg)')
ylabel('V_{sn} (V)')



Vspt1=Vspt.data; 
figure(4)
plot(t, Vspt1)
grid on
%axis([0 16 0 60])
xlabel('tiempo (seg)')
ylabel('V_{sp} (V)')



h=figure(9)
x=10;
y=16;
set(h, 'PaperUnits', 'centimeters');
set(h, 'PaperPosition', [1, 1, x, y]);
set(h, 'Units', 'centimeters');
set(h, 'Position', [3, 3, x, y]);

subplot(4,1,1)
plot(t, Ispt1)
axis([0 6 0 1500])
grid on
ylabel('I_{sp} (A)')

subplot(4,1,2)
plot(t, Isnt1)
grid on
axis([0 6 0 180])
ylabel('I_{sn} (A)')

subplot(4,1,3)
plot(t, Vspt1)
axis([0 6 200 400])
grid on
ylabel('V_{sp} (V)')

subplot(4,1,4)
plot(t, Vsnt1)
axis([0 6 0 12])
grid on
ylabel('V_{sn} (V)')
xlabel('tiempo (seg)')



Zpt=Vspt1./Ispt1;
Znt=Vsnt1./Isnt1;
h=figure(10)
x=8.5;
y=6;
set(h, 'PaperUnits', 'centimeters');
set(h, 'PaperPosition', [1, 1, x, y]);
set(h, 'Units', 'centimeters');
set(h, 'Position', [3, 3, x, y]);
plot(t, Znt,t, Zpt)
grid on
axis([0 6 0 8])
xlabel('tiempo (seg)')
ylabel('|Z| (\Omega)')
legend('|Z_{n}|','|Z_{p}|')


