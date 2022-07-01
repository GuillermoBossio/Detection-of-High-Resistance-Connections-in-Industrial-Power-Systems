
%close all

% Corrientes de secuencia

t=Isn.time;
Isn1=Isn.data; 
figure(1)
plot(t, Isn1)
grid on
axis([0 16 0 60])
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

% velocidad

W1=W.data; 
figure(5)
plot(t, W1)
grid on
%axis([0 16 0 60])
xlabel('tiempo (seg)')
%ylabel('velocidad (rad/seg)')
ylabel('\omega (rad/seg)')



h=figure(6);
x=10;
y=16;
set(h, 'PaperUnits', 'centimeters');
set(h, 'PaperPosition', [1, 1, x, y]);
set(h, 'Units', 'centimeters');
set(h, 'Position', [3, 3, x, y]);

subplot(5,1,1)
plot(t, W1)
grid on
axis([0 16 0 400])
ylabel('\omega (rad/s)')
hold on
subplot(5,1,2)
plot(t, Isp1)
axis([0 16 0 2500])
grid on
ylabel('{\itI_{sp}} (A)')
hold on
subplot(5,1,3)
plot(t, Isn1)
grid on
axis([0 16 0 60])
ylabel('{\itI_{sn}} (A)')
hold on
subplot(5,1,4)
plot(t, Vsp1)
axis([0 16 200 400])
grid on
ylabel('{\itV_{sp}} (V)')
hold on
subplot(5,1,5)
plot(t, Vsn1)
axis([0 16 0 8])
grid on
ylabel('{\itV_{sn}} (V)')
xlabel('tiempo (s)')

hold on
