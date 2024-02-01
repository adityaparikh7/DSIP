%linear convolution of 2 discrete signals using tabular method

x=input('enter the first sequence');
h=input('enter the second sequence');
N1=length(x);
N2=length(h);
N=max(N1,N2);
x=[x,zeros(1,N-N1)];
h=[h,zeros(1,N-N2)];
for n=1:N
    for m=1:N
        y(n,m)=x(n)*h(m);
    end
end
for n=1:N
    y1(n,:)=y(n,:);
end
for n=1:N
    y2(n,:)=y1(n,N:-1:1);
end
for n=1:N
    y3(n,:)=y2(n,1:N);
end
for n=1:N
    y4(n)=sum(y3(n,:));
end
disp('the linear convolution of the two sequences is');
disp(y4);
subplot(3,1,1);
stem(x);
xlabel('time');
ylabel('amplitude');

subplot(3,1,2);
stem(h);
xlabel('time');
ylabel('amplitude');

subplot(3,1,3);
stem(y4);
xlabel('time');
ylabel('amplitude');

%linear convolution of 2 discrete signals using circular method

