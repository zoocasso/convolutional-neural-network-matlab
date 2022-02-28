clear all

%Input 49x8
X = [
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 1 1;
    0 0 0 0 0 1 0 0;
    0 0 0 0 0 1 0 1;
    0 0 0 0 0 1 1 0;
    0 0 0 0 0 1 1 1;
    0 0 0 0 1 0 0 0;
    0 0 0 0 1 0 0 1;
    0 0 0 0 1 0 1 0;
    0 0 0 0 1 0 1 1;
    0 0 0 0 1 1 0 0;
    0 0 0 0 1 1 0 1;
    0 0 0 0 1 1 1 0;
    0 0 0 0 1 1 1 1;
    0 0 0 1 0 0 0 0;
    0 0 0 1 0 0 0 1;
    0 0 0 1 0 0 1 0;
    1 0 0 0 0 0 0 1;
    1 0 0 0 0 0 1 0;
    1 0 0 0 0 0 1 1;
    1 0 0 0 0 1 0 0;
    1 0 0 0 0 1 0 1;
    1 0 0 0 0 1 1 0;
    1 0 0 0 0 1 1 1;
    1 0 0 0 1 0 0 0;
    1 0 0 0 1 0 0 1;
    0 0 0 1 0 1 0 0;
    0 0 0 1 0 1 0 1;
    0 0 0 1 1 0 0 0;
    0 0 0 1 1 0 0 1;
    0 0 0 1 1 0 1 1;
    0 0 0 1 1 1 0 0;
    0 0 0 1 1 1 1 0;
    0 0 1 0 0 0 0 0;
    0 0 1 0 0 0 1 1;
    0 0 1 0 0 1 0 0;
    0 0 1 0 1 0 0 0;
    0 0 1 0 1 0 1 0;
    0 0 1 0 1 1 0 1;
    0 0 1 1 0 0 0 0;
    0 0 1 1 0 0 0 1;
    0 0 1 1 0 1 1 0;
    0 0 1 1 1 0 0 0;
    0 0 1 1 1 1 1 1;
    0 1 0 0 0 0 0 0;
    0 1 0 0 1 0 0 0;
    0 1 0 1 0 0 0 1;
    ];

%Correct Output 49x14
D = [
    1 1 1 1 1 1 0 1 1 1 1 1 1 0;
    1 1 1 1 1 1 0 0 1 1 0 0 0 0;
    1 1 1 1 1 1 0 1 1 0 1 1 0 1;
    1 1 1 1 1 1 0 1 1 1 1 0 0 1;
    1 1 1 1 1 1 0 0 1 1 0 0 1 1;
    1 1 1 1 1 1 0 1 0 1 1 0 1 1;
    1 1 1 1 1 1 0 1 0 1 1 1 1 1;
    1 1 1 1 1 1 0 1 1 1 0 0 1 1;
    1 1 1 1 1 1 0 1 1 1 1 1 1 1;
    1 1 1 1 1 1 0 1 1 1 0 0 1 1;
    0 1 1 0 0 0 0 1 1 1 1 1 1 0;
    0 1 1 0 0 0 0 0 1 1 0 0 0 0;
    0 1 1 0 0 0 0 1 1 0 1 1 0 1;
    0 1 1 0 0 0 0 1 1 1 1 0 0 1;
    0 1 1 0 0 0 0 0 1 1 0 0 1 1;
    0 1 1 0 0 0 0 1 0 1 1 0 1 1;
    0 1 1 0 0 0 0 1 0 1 1 1 1 1;
    0 1 1 0 0 0 0 1 1 1 0 0 1 0;
    0 1 1 0 0 0 0 1 1 1 1 1 1 1;
    0 0 0 0 0 0 1 0 1 1 0 0 0 0;
    0 0 0 0 0 0 1 1 1 0 1 1 0 1;
    0 0 0 0 0 0 1 1 1 1 1 0 0 1;
    0 0 0 0 0 0 1 0 1 1 0 0 1 1;
    0 0 0 0 0 0 1 1 0 1 1 0 1 1;
    0 0 0 0 0 0 1 1 0 1 1 1 1 1;
    0 0 0 0 0 0 1 1 1 1 0 0 1 0;
    0 0 0 0 0 0 1 1 1 1 1 1 1 1;
    0 0 0 0 0 0 1 1 1 1 0 0 1 1;
    1 1 0 1 1 0 1 1 1 1 1 1 1 0
    1 1 0 1 1 0 1 0 1 1 0 0 0 0
    1 1 0 1 1 0 1 0 1 1 0 0 1 1
    1 1 0 1 1 0 1 1 0 1 1 0 1 1
    1 1 0 1 1 0 1 1 1 1 0 0 1 0
    1 1 0 1 1 0 1 1 1 1 1 1 1 1
    1 1 1 1 0 0 1 1 1 1 1 1 1 0
    1 1 1 1 0 0 1 1 1 0 1 1 0 1
    1 1 1 1 0 0 1 1 0 1 1 0 1 1
    1 1 1 1 0 0 1 1 0 1 1 1 1 1
    0 1 1 0 0 1 1 1 1 1 1 1 1 0
    0 1 1 0 0 1 1 1 1 0 1 1 0 1
    0 1 1 0 0 1 1 1 0 1 1 0 1 1
    0 1 1 0 0 1 1 1 1 1 1 1 1 1
    0 1 1 0 0 1 1 1 1 1 0 0 1 1
    1 0 1 1 0 1 1 0 1 1 0 0 1 1
    1 0 1 1 0 1 1 1 0 1 1 1 1 1
    1 0 1 1 1 1 1 1 1 1 1 0 0 1
    1 0 1 1 1 1 1 0 1 1 0 0 1 1
    1 1 1 0 0 1 0 1 1 0 1 1 0 1
    1 1 1 1 1 1 1 0 1 1 0 0 0 0
    ];

%Weight Matrix (-1 ~ 1 in random)
W1 = 2*rand(20,8) - 1;
W2 = 2*rand(20,20) - 1;
W3 = 2*rand(20,20) - 1;
W4 = 2*rand(14,20) - 1;
for epoch = 1:10000
    epoch
    [W1, W2, W3, W4] = BackpropCE2(W1,W2,W3,W4,X,D);
end

save('sevenSegment.mat');

% Test
%
N = 49;
for k = 1:N
        %1st Hidden Layer
        x = X(k,:)';
        v1 = W1*x;
        y1 = Sigmoid(v1);
        
        %2nd Hidden Layer
        v2 = W2*y1;
        y2 = Sigmoid(v2);
        
        %3rd Hidden Layer
        v3 = W3*y2;
        y3 = Sigmoid(v3);
        
        %Output Layer
        v = W4*y3;
        y = Sigmoid(v)';
        fprintf("k=%d, y=",k); disp(y);     %모든값을 한번에 출력하여 보기위한 함수
end