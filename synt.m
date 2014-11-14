% @Description:      两个模糊矩阵的合成
% @author:          Judiths01 
% @time:            2014-11-14
% @parameter:       a,b
% @return:        
function ab=synt(a,b)
m=size(a,1);n=size(b,2);
for i=1:m
    for j=1:n
        ab(i,j)=max(min([a(i,:);b(:,j)']));
    end
end 
