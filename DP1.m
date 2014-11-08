clc,clear
m = 1;
A =[15 19 26 19];
B =[18 23 17 21];
C = [21 22 16 23];
D = [24 18 19 17];
for i = 1:4
        for j = 1:4
                for k = 1:4
                        for l = 1:4
                                if i+j+k+l == 8
                                dom(m) = A(i)+B(j)+C(k)+D(l);
                                E(m,1) = i;
                                E(m,2) = j;
                                E(m,3) = k;
                                E(m,4) = l;
                                m = m + 1;
                        else
                                continue;
                                end
                        end
                end
        end
end
minNum = dom(1);
for p = 1:size(dom,2)
        if dom(p) < minNum
                minNum = dom(p);
                q = p;
        else
                continue;
        end
end
for p = 1:size(dom,2)
        if dom(p) == minNum
                E(1,:);
        else
                continue;
        end
end
% minNum
