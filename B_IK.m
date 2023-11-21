function [ndata] = IKspace_bin (Sdata,data, psi, t)
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
    q=dec2bin(centerIdx'-1);
    qq= q-'0';
    ndata=[ndata qq];
%     ndata=tall([ndata z']);
    
end 
end
