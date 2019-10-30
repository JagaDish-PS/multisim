%% question 1
clc
clear all

Tr=0;
Ts=0;
Tp=0;
Mp=0;
i=0;
poles=[0;1;2;4];

i=i+1;
n1=1;
d1=[1 2 0];
g1=tf(n1,d1);
t1=feedback(g1,1)
step(t1,'r')
s=stepinfo(t1);
Tr(i)=s.RiseTime
Tp(i)=s.PeakTime
Ts(i)=s.SettlingTime
Mp(i)=s.Overshoot
hold on

i=i+1;
Tp=1;
P1=[Tp 1];
d2=conv(d1,P1);
g2=tf(n1,d2);
t2=feedback(g2,1)
step(t2,'g')
s=stepinfo(t2);
Tr(i)=s.RiseTime
Tp(i)=s.PeakTime
Ts(i)=s.SettlingTime
Mp(i)=s.Overshoot
hold on

i=i+1;
Tp=2;
P2=[Tp 1];
d3=conv(d1,P2);
g3=tf(n1,d3);
t3=feedback(g3,1)
step(t3,'b')
s=stepinfo(t3);
Tr(i)=s.RiseTime
Tp(i)=s.PeakTime
Ts(i)=s.SettlingTime
Mp(i)=s.Overshoot
hold on

i=i+1;
Tp=4;
P3=[Tp 1];
d4=conv(d1,P3);
g4=tf(n1,d4);
t4=feedback(g4,1)
step(t4,'m')
s=stepinfo(t4);
Tr(i)=s.RiseTime
Tp(i)=s.PeakTime
Ts(i)=s.SettlingTime
Mp(i)=s.Overshoot

Tr=Tr';
Ts=Ts';
Tp=Tp';
Mp=Mp';
t=table(poles,Tr,Ts,Tp,Mp)

%% question 2
clc
clear all
close

Tr=0;
Ts=0;
Tp=0;
Mp=0;
i=0;
poles=[0;1;2;4];

i=i+1;
n1=1;
d1=[1 0.6 1];
g1=tf(n1,d1);
step(g1,'r')
s=stepinfo(g1);
Tr(i)=s.RiseTime
Tp(i)=s.PeakTime
Ts(i)=s.SettlingTime
Mp(i)=s.Overshoot
hold on

i=i+1;
Tp=1;
P1=[Tp 1];
d2=conv(d1,P1);
g2=tf(n1,d2);
step(g2,'g')
s=stepinfo(g2);
Tr(i)=s.RiseTime
Tp(i)=s.PeakTime
Ts(i)=s.SettlingTime
Mp(i)=s.Overshoot
hold on

i=i+1;
Tp=2;
P2=[Tp 1];
d3=conv(d1,P2);
g3=tf(n1,d3);
step(g3,'b')
s=stepinfo(g3);
Tr(i)=s.RiseTime
Tp(i)=s.PeakTime
Ts(i)=s.SettlingTime
Mp(i)=s.Overshoot
hold on

i=i+1;
Tp=4;
P3=[Tp 1];
d4=conv(d1,P3);
g4=tf(n1,d4);
step(g4,'m')
s=stepinfo(g4);
Tr(i)=s.RiseTime
Tp(i)=s.PeakTime
Ts(i)=s.SettlingTime
Mp(i)=s.Overshoot

Tr=Tr';
Ts=Ts';
Tp=Tp';
Mp=Mp';
t=table(poles,Tr,Ts,Tp,Mp)
