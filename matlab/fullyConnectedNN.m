clear all

%Input 300x23
X = [
    1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0; % 1 + 1 = 2
    0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0; % 2       3
    0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0; % 3       4
    0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0; % 4       5
    0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0; % 5       6
    0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0; % 6       7
    0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0; % 7       8
    0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0; % 8       9
    0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 1 0 0; % 9       10
    0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 1 0 0; % 0       1

    1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0; % 1 + 2 = 3
    0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0;
    0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0;
    0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0;
    0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0;
    0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0;
    0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0;
    0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0;
    0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 1 0 0;
    0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 1 0 0;
    
    1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0; % 1 + 3 = 4
    0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0;
    0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0;
    0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0;
    0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0;
    0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0;
    0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0;
    0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0;
    0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 1 0 0;
    0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 0;
    
    1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0; % 1 + 4 = 5
    0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0;
    0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0;
    0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0;
    0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0;
    0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0;
    0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0;
    0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0;
    0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 1 0 0;
    0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 1 0 0;
    
    1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0; % 1 + 5 = 6
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0;
    0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0;
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0;
    0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0;
    0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0;
    0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0;
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0;
    0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0 0;
    0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 1 0 0;
    
    1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0; % 1 + 6 = 7
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0;
    0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0;
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0;
    0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0;
    0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0;
    0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0;
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0;
    0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 1 0 0;
    0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 1 0 0;
    
    1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0; % 1 + 7 = 8
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0;
    0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0;
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0;
    0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0;
    0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0;
    0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0;
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0;
    0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 1 0 0;
    0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 1 0 0;
    
    1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0; % 1 + 8 = 9
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0;
    0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0;
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0;
    0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0;
    0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0;
    0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0;
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0;
    0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 1 0 0;
    0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 1 0 0;
    
    1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0; % 1 + 9 = 10
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0;
    0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0;
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0;
    0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0;
    0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0;
    0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0;
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0;
    0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 1 0 0;
    0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 1 0 0;
    
    1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0; % 1 + 0 = 1
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0;
    0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0;
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0;
    0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0;
    0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0;
    0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0;
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0;
    0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 1 0 0;
    0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 1 0 0;

    1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0; % 1 - 1 = 0
    0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0; % 2       1
    0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0; % 3       2
    0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0; % 4       3
    0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0; % 5       4
    0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0; % 6       5
    0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0; % 7       6
    0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0; % 8       7
    0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 1 0; % 9       8
    0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 1 0; % 0       -1

    1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0; % 1 - 2 = -1
    0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0;
    0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0;
    0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0;
    0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0;
    0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 1 0;
    
    1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0; % 1 - 3 = -2
    0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0;
    0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0;
    0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0;
    0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0;
    0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 1 0;
    
    1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0; % 1 - 4 = -3
    0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0;
    0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0;
    0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0;
    0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0;
    0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 1 0;
    
    1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0; % 1 - 5 = -4
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0;
    0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0;
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0;
    0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0;
    0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 1 0;
    
    1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0; % 1 - 6 = -5
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0;
    0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0;
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0;
    0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0;
    0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0;
    0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0;
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0;
    0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 1 0;
    0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 1 0;
    
    1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0; % 1 - 7 = -6
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0;
    0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0;
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0;
    0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0;
    0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0;
    0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0;
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0;
    0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 1 0;
    0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 1 0;
    
    1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0; % 1 - 8 = -7
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0;
    0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0;
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0;
    0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0;
    0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0;
    0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0;
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0;
    0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 1 0;
    0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 1 0;
    
    1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0; % 1 - 9 = -8
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0;
    0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0;
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0;
    0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0;
    0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0;
    0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0;
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0;
    0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 1 0;
    0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 1 0;
    
    1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0; % 1 - 0 = 1
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0;
    0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0;
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0;
    0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0;
    0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0;
    0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0;
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0;
    0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 1 0;
    0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 1 0;

    1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1; % 1 * 1 = 1
    0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1; % 2       2
    0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1; % 3       3
    0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1; % 4       4
    0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1; % 5       5
    0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1; % 6       6
    0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1; % 7       7
    0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1; % 8       8
    0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 1; % 9       9
    0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 1; % 0       0

    1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1; % 1 * 2 = 2
    0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1; % 2 * 2 = 4
    0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1; % 3 * 2 = 6
    0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1;
    0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1;
    0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 1;
    
    1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1; % 1 * 3 = 3
    0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1; % 2 * 3 = 6
    0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1; % 3 * 3 = 9
    0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1;
    0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1;
    0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 0 1;
    
    1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1; % 1 * 4 = 4
    0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1; % 2 * 4 = 8
    0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1; % 3 * 4 = 12
    0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1;
    0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1;
    0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 1;
    
    1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1; % 1 * 5 = 5
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1; % 2 * 5 = 10
    0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1; % 3 * 5 = 15
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1;
    0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1;
    0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 1;
    
    1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1; % 1 * 6 = 6
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1; % 2 * 6 = 12
    0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1; % 3 * 6 = 18
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1;
    0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1;
    0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1;
    0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1;
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1;
    0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1;
    0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 1;
    
    1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1; % 1 * 7 = 7
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1; % 2 * 7 = 14
    0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1; % 3 * 7 = 21
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1;
    0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1;
    0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1;
    0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1;
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1;
    0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 1;
    0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 1;
    
    1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1; % 1 * 8 = 8
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1; % 2 * 8 = 16
    0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1; % 3 * 8 = 24
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1;
    0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1;
    0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1;
    0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1;
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1;
    0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 1;
    0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 1;
    
    1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1; % 1 * 9 = 9
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1; % 2 * 9 = 18
    0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1; % 3 * 9 = 27
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1;
    0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1;
    0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1;
    0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1;
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1;
    0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 1;
    0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 1;
    
    1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1; % 1 * 0 = 0
    0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1; % 2 * 0 = 0
    0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1; % 3 * 0 = 0
    0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1;
    0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1;
    0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1;
    0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1;
    0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1;
    0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 1;
    0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 1;
    ];


%Correct Output 300x8


D = [
    0 0 0 0 0 0 1 0; % plus part
    0 0 0 0 0 0 1 1;
    0 0 0 0 0 1 0 0;
    0 0 0 0 0 1 0 1;
    0 0 0 0 0 1 1 0;
    0 0 0 0 0 1 1 1;
    0 0 0 0 1 0 0 0;
    0 0 0 0 1 0 0 1;
    0 0 0 0 1 0 1 0;
    0 0 0 0 0 0 0 1;

    0 0 0 0 0 0 1 1;
    0 0 0 0 0 1 0 0;
    0 0 0 0 0 1 0 1;
    0 0 0 0 0 1 1 0;
    0 0 0 0 0 1 1 1;
    0 0 0 0 1 0 0 0;
    0 0 0 0 1 0 0 1;
    0 0 0 0 1 0 1 0;
    0 0 0 0 1 0 1 1;
    0 0 0 0 0 0 1 0;

    0 0 0 0 0 1 0 0;
    0 0 0 0 0 1 0 1;
    0 0 0 0 0 1 1 0;
    0 0 0 0 0 1 1 1;
    0 0 0 0 1 0 0 0;
    0 0 0 0 1 0 0 1;
    0 0 0 0 1 0 1 0;
    0 0 0 0 1 0 1 1;
    0 0 0 0 1 1 0 0;
    0 0 0 0 0 0 1 1;

    0 0 0 0 0 1 0 1;
    0 0 0 0 0 1 1 0;
    0 0 0 0 0 1 1 1;
    0 0 0 0 1 0 0 0;
    0 0 0 0 1 0 0 1;
    0 0 0 0 1 0 1 0;
    0 0 0 0 1 0 1 1;
    0 0 0 0 1 1 0 0;
    0 0 0 0 1 1 0 1;
    0 0 0 0 0 1 0 0;

    0 0 0 0 0 1 1 0;
    0 0 0 0 0 1 1 1;
    0 0 0 0 1 0 0 0;
    0 0 0 0 1 0 0 1;
    0 0 0 0 1 0 1 0;
    0 0 0 0 1 0 1 1;
    0 0 0 0 1 1 0 0;
    0 0 0 0 1 1 0 1;
    0 0 0 0 1 1 1 0;
    0 0 0 0 0 1 0 1;

    0 0 0 0 0 1 1 1;
    0 0 0 0 1 0 0 0;
    0 0 0 0 1 0 0 1;
    0 0 0 0 1 0 1 0;
    0 0 0 0 1 0 1 1;
    0 0 0 0 1 1 0 0;
    0 0 0 0 1 1 0 1;
    0 0 0 0 1 1 1 0;
    0 0 0 0 1 1 1 1;
    0 0 0 0 0 1 1 0;

    0 0 0 0 1 0 0 0;
    0 0 0 0 1 0 0 1;
    0 0 0 0 1 0 1 0;
    0 0 0 0 1 0 1 1;
    0 0 0 0 1 1 0 0;
    0 0 0 0 1 1 0 1;
    0 0 0 0 1 1 1 0;
    0 0 0 0 1 1 1 1;
    0 0 0 1 0 0 0 0;
    0 0 0 0 0 1 1 1;

    0 0 0 0 1 0 0 1;
    0 0 0 0 1 0 1 0;
    0 0 0 0 1 0 1 1;
    0 0 0 0 1 1 0 0;
    0 0 0 0 1 1 0 1;
    0 0 0 0 1 1 1 0;
    0 0 0 0 1 1 1 1;
    0 0 0 1 0 0 0 0;
    0 0 0 1 0 0 0 1;
    0 0 0 0 1 0 0 0;

    0 0 0 0 1 0 1 0;
    0 0 0 0 1 0 1 1;
    0 0 0 0 1 1 0 0;
    0 0 0 0 1 1 0 1;
    0 0 0 0 1 1 1 0;
    0 0 0 0 1 1 1 1;
    0 0 0 1 0 0 0 0;
    0 0 0 1 0 0 0 1;
    0 0 0 0 1 0 0 1;

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
    0 0 0 0 0 0 0 0;

    0 0 0 0 0 0 0 0; % minus part
    0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 1 1;
    0 0 0 0 0 1 0 0;
    0 0 0 0 0 1 0 1;
    0 0 0 0 0 1 1 0;
    0 0 0 0 0 1 1 1;
    0 0 0 0 1 0 0 0;
    1 0 0 0 0 0 0 1;

    1 0 0 0 0 0 0 1;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 1 1;
    0 0 0 0 0 1 0 0;
    0 0 0 0 0 1 0 1;
    0 0 0 0 0 1 1 0;
    0 0 0 0 0 1 1 1;
    1 0 0 0 0 0 1 0;

    1 0 0 0 0 0 1 0;
    1 0 0 0 0 0 0 1;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 1 1;
    0 0 0 0 0 1 0 0;
    0 0 0 0 0 1 0 1;
    0 0 0 0 0 1 1 0;
    1 0 0 0 0 0 1 1;

    1 0 0 0 0 0 1 1;
    1 0 0 0 0 0 1 0;
    1 0 0 0 0 0 0 1;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 1 1;
    0 0 0 0 0 1 0 0;
    0 0 0 0 0 1 0 1;
    1 0 0 0 0 1 0 0;

    1 0 0 0 0 1 0 0;
    1 0 0 0 0 0 1 1;
    1 0 0 0 0 0 1 0;
    1 0 0 0 0 0 0 1;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 1 1;
    0 0 0 0 0 1 0 0;
    1 0 0 0 0 1 0 1;

    1 0 0 0 0 1 0 1;
    1 0 0 0 0 1 0 0;
    1 0 0 0 0 0 1 1;
    1 0 0 0 0 0 1 0;
    1 0 0 0 0 0 0 1;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 1 1;
    1 0 0 0 0 1 1 0;

    1 0 0 0 0 1 1 0;
    1 0 0 0 0 1 0 1;
    1 0 0 0 0 1 0 0;
    1 0 0 0 0 0 1 1;
    1 0 0 0 0 0 1 0;
    1 0 0 0 0 0 0 1;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 1 0;
    1 0 0 0 0 1 1 1;

    1 0 0 0 0 1 1 1;
    1 0 0 0 0 1 1 0;
    1 0 0 0 0 1 0 1;
    1 0 0 0 0 1 0 0;
    1 0 0 0 0 0 1 1;
    1 0 0 0 0 0 1 0;
    1 0 0 0 0 0 0 1;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 1;
    1 0 0 0 1 0 0 0;

    1 0 0 0 1 0 0 0;
    1 0 0 0 0 1 1 1;
    1 0 0 0 0 1 1 0;
    1 0 0 0 0 1 0 1;
    1 0 0 0 0 1 0 0;
    1 0 0 0 0 0 1 1;
    1 0 0 0 0 0 1 0;
    1 0 0 0 0 0 0 1;
    0 0 0 0 0 0 0 0;
    1 0 0 0 1 0 0 1;

    0 0 0 0 0 0 0 1;
    0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 1 1;
    0 0 0 0 0 1 0 0;
    0 0 0 0 0 1 0 1;
    0 0 0 0 0 1 1 0;
    0 0 0 0 0 1 1 1;
    0 0 0 0 1 0 0 0;
    0 0 0 0 1 0 0 1;
    0 0 0 0 0 0 0 0;

    0 0 0 0 0 0 0 1; % multi part
    0 0 0 0 0 0 1 0;
    0 0 0 0 0 0 1 1;
    0 0 0 0 0 1 0 0;
    0 0 0 0 0 1 0 1;
    0 0 0 0 0 1 1 0;
    0 0 0 0 0 1 1 1;
    0 0 0 0 1 0 0 0;
    0 0 0 0 1 0 0 1;
    0 0 0 0 0 0 0 0;

    0 0 0 0 0 0 1 0;
    0 0 0 0 0 1 0 0;
    0 0 0 0 0 1 1 0;
    0 0 0 0 1 0 0 0;
    0 0 0 0 1 0 1 0;
    0 0 0 0 1 1 0 0;
    0 0 0 0 1 1 1 0;
    0 0 0 1 0 0 0 0;
    0 0 0 1 0 0 1 0;
    0 0 0 0 0 0 0 0;

    0 0 0 0 0 0 1 1;
    0 0 0 0 0 1 1 0;
    0 0 0 0 1 0 0 1;
    0 0 0 0 1 1 0 0;
    0 0 0 0 1 1 1 1;
    0 0 0 1 0 0 1 0;
    0 0 0 1 0 1 0 1;
    0 0 0 1 1 0 0 0;
    0 0 0 1 1 0 1 1;
    0 0 0 0 0 0 0 0;

    0 0 0 0 0 1 0 0;
    0 0 0 0 1 0 0 0;
    0 0 0 0 1 1 0 0;
    0 0 0 1 0 0 0 0;
    0 0 0 1 0 1 0 0;
    0 0 0 1 1 0 0 0;
    0 0 0 1 1 1 0 0;
    0 0 1 0 0 0 0 0;
    0 0 1 0 0 1 0 0;
    0 0 0 0 0 0 0 0;

    0 0 0 0 0 1 0 1;
    0 0 0 0 1 0 1 0;
    0 0 0 0 1 1 1 1;
    0 0 0 1 0 1 0 0;
    0 0 0 1 1 0 0 1;
    0 0 0 1 1 1 1 0;
    0 0 1 0 0 0 1 1;
    0 0 1 0 1 0 0 0;
    0 0 1 0 1 1 0 1;
    0 0 0 0 0 0 0 0;

    0 0 0 0 0 1 1 0;
    0 0 0 0 1 1 0 0;
    0 0 0 1 0 0 1 0;
    0 0 0 1 1 0 0 0;
    0 0 0 1 1 1 1 0;
    0 0 1 0 0 1 0 0;
    0 0 1 0 1 0 1 0;
    0 0 1 1 0 0 0 0;
    0 0 1 1 0 1 1 0;
    0 0 0 0 0 0 0 0;

    0 0 0 0 0 1 1 1;
    0 0 0 0 1 1 1 0;
    0 0 0 1 0 1 0 1;
    0 0 0 1 1 1 0 0;
    0 0 1 0 0 0 1 1;
    0 0 1 0 1 0 1 0;
    0 0 1 1 0 0 0 1;
    0 0 1 1 1 0 0 0;
    0 0 1 1 1 1 1 1;
    0 0 0 0 0 0 0 0;

    0 0 0 0 1 0 0 0;
    0 0 0 1 0 0 0 0;
    0 0 0 1 1 0 0 0;
    0 0 1 0 0 0 0 0;
    0 0 1 0 1 0 0 0;
    0 0 1 1 0 0 0 0;
    0 0 1 1 1 0 0 0;
    0 1 0 0 0 0 0 0;
    0 1 0 0 1 0 0 0;
    0 0 0 0 0 0 0 0;

    0 0 0 0 1 0 0 1;
    0 0 0 1 0 0 1 0;
    0 0 0 1 1 0 1 1;
    0 0 1 0 0 1 0 0;
    0 0 1 0 1 1 0 1;
    0 0 1 1 0 1 1 0;
    0 0 1 1 1 1 1 1;
    0 1 0 0 1 0 0 0;
    0 1 0 1 0 0 0 1;
    0 0 0 0 0 0 0 0;

    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0;
    0 0 0 0 0 0 0 0;
    ];

%Weight Matrix (-1 ~ 1 in random)
W1 = 2*rand(20,23) - 1;
W2 = 2*rand(20,20) - 1;
W3 = 2*rand(20,20) - 1;
W4 = 2*rand(8,20) - 1;
for epoch = 1:10000
    epoch
    [W1, W2, W3, W4] = BackpropCE1(W1,W2,W3,W4,X,D);
end

save('NN.mat');

% Test
%
N = 300;
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