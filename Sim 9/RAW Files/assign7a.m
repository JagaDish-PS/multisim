%% Assignment 7A
%question 1
clc
clear all
Tr=0;
Ts=0;
Tp=0;
Mp=0;
i=0;
zeros=[0;0.5;1;2;3];

i=i+1;
n1=1;
d1=[1 1 0];
g1=tf(n1,d1);
t1=feedback(g1,1)
step(t1,'r')
hold on
s=stepinfo(t1);
Tr(i)=s.RiseTime
Tp(i)=s.PeakTime
Ts(i)=s.SettlingTime
Mp(i)=s.Overshoot

i=i+1;
Tz=0.5;
Z1=[Tz 1];
n2=conv(n1,Z1);
g2=tf(n2,d1);
t2=feedback(g2,1)
step(t2,'b')
s1=stepinfo(t2);
Tr(i)=s1.RiseTime
Tp(i)=s1.PeakTime
Ts(i)=s1.SettlingTime
Mp(i)=s1.Overshoot
hold on

i=i+1;
Tz=1;
Z2=[Tz 1];
n3=conv(n1,Z2);
g3=tf(n3,d1);
t3=feedback(g3,1)
step(t3,'y')
s2=stepinfo(t3);
Tr(i)=s2.RiseTime
Tp(i)=s2.PeakTime
Ts(i)=s2.SettlingTime
Mp(i)=s2.Overshoot
hold on

i=i+1;
Tz=2;
Z3=[Tz 1];
n4=conv(n1,Z3);
g4=tf(n4,d1);
t4=feedback(g4,1)
step(t4,'g')
s3=stepinfo(t4);
Tr(i)=s3.RiseTime
Tp(i)=s3.PeakTime
Ts(i)=s3.SettlingTime
Mp(i)=s3.Overshoot
hold on

i=i+1;
Tz=3;
Z4=[Tz 1];
n5=conv(n1,Z4);
g5=tf(n5,d1);
t5=feedback(g5,1)
step(t5,'m')
s4=stepinfo(t5);
Tr(i)=s4.RiseTime
Tp(i)=s4.PeakTime
Ts(i)=s4.SettlingTime
Mp(i)=s4.Overshoot

Tr=Tr';
Ts=Ts';
Tp=Tp';
Mp=Mp';
t=table(zeros,Tr,Ts,Tp,Mp)

%% question2
clc
clear all
close

Tr=0;
Ts=0;
Tp=0;
Mp=0;
i=0;
zeros=[0;0.5;1;2;3];

i=i+1;
n1=1;
d1=[1 1 1];
g1=tf(n1,d1);
step(g1,'r')
hold on
s=stepinfo(g1);
Tr(i)=s.RiseTime
Tp(i)=s.PeakTime
Ts(i)=s.SettlingTime
Mp(i)=s.Overshoot

i=i+1;
Tz=0.5;
Z1=[Tz 1];
n2=conv(n1,Z1);
g2=tf(n2,d1)
step(g2,'b')
s1=stepinfo(g2);
Tr(i)=s1.RiseTime
Tp(i)=s1.PeakTime
Ts(i)=s1.SettlingTime
Mp(i)=s1.Overshoot
hold on

i=i+1;
Tz=1;
Z2=[Tz 1];
n3=conv(n1,Z2);
g3=tf(n3,d1)
step(g3,'y')
s2=stepinfo(g3);
Tr(i)=s2.RiseTime
Tp(i)=s2.PeakTime
Ts(i)=s2.SettlingTime
Mp(i)=s2.Overshoot
hold on

i=i+1;
Tz=2;
Z3=[Tz 1];
n4=conv(n1,Z3);
g4=tf(n4,d1)
step(g4,'g')
s3=stepinfo(g4);
Tr(i)=s3.RiseTime
Tp(i)=s3.PeakTime
Ts(i)=s3.SettlingTime
Mp(i)=s3.Overshoot
hold on

i=i+1;
Tz=3;
Z4=[Tz 1];
n5=conv(n1,Z4);
g5=tf(n5,d1)
step(g5,'m')
s4=stepinfo(g5);
Tr(i)=s4.RiseTime
Tp(i)=s4.PeakTime
Ts(i)=s4.SettlingTime
Mp(i)=s4.Overshoot

Tr=Tr';
Ts=Ts';
Tp=Tp';
Mp=Mp';
t=table(zeros,Tr,Ts,Tp,Mp)