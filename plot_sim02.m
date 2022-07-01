
close all

% Variables a bornes del motor

% Corrientes en redes de secuencia

t=Isn.time-16; %Corrimiento de tiempo para graficar el arranque del segundo motor
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

%tensiones en redes de secuencia

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
ylabel('\omega (rad/seg)')

subplot(5,1,2)
plot(t, Isp1)
axis([0 16 0 2500])
grid on
ylabel('I_{sp} (A)')

subplot(5,1,3)
plot(t, Isn1)
grid on
axis([0 16 0 60])
ylabel('I_{sn} (A)')

subplot(5,1,4)
plot(t, Vsp1)
axis([0 16 200 400])
grid on
ylabel('V_{sp} (V)')

subplot(5,1,5)
plot(t, Vsn1)
axis([0 16 0 8])
grid on
ylabel('V_{sn} (V)')
xlabel('tiempo (seg)')


% Variables a bornes del Transformador
% Ingreso de la planta

Isnt1=Isnt.data; 
figure(7)
plot(t, Isnt1)
grid on
axis([0 16 0 60])
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
figure(9)
plot(t, Vsnt1)
grid on
axis([0 16 0 10])
xlabel('tiempo (seg)')
ylabel('V_{sn} (V)')



Vspt1=Vspt.data; 
figure(10)
plot(t, Vspt1)
grid on
%axis([0 16 0 60])
xlabel('tiempo (seg)')
ylabel('V_{sp} (V)')


W1=W.data; 
figure(11)
plot(t, W1)
grid on
%axis([0 16 0 60])
xlabel('tiempo (seg)')
%ylabel('velocidad (rad/seg)')
ylabel('\omega (rad/seg)')

h=figure(12)
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
ylabel('\omega (rad/seg)')

subplot(5,1,2)
plot(t, Ispt1)
axis([0 16 0 2500])
grid on
ylabel('I_{sp} (A)')

subplot(5,1,3)
plot(t, Isnt1)
grid on
axis([0 16 0 120])
ylabel('I_{sn} (A)')

subplot(5,1,4)
plot(t, Vspt1)
axis([0 16 200 400])
grid on
ylabel('V_{sp} (V)')

subplot(5,1,5)
plot(t, Vsnt1)
axis([0 16 0 8])
grid on
ylabel('V_{sn} (V)')
xlabel('tiempo (seg)')






