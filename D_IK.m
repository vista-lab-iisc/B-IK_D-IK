function [ndata] = IKspace_dec (Sdata,data, psi, t)
% mapping data to Isolation Kernel space 
% Sdata is used for partition

[sn,~]=size(Sdata);  
[n,d]=size(data);  
ndata=[];
for i = 1:t 
    subIndex = datasample(1:sn, psi, 'Replace', false);
    tdata=Sdata(subIndex,:);      
    dis=pdist2(tdata,data);  
   
    [~, centerIdx] = min(dis);
    q=(centerIdx');
    ndata=[ndata q];
%     ndata=tall([ndata z']); 
    
end 
end
