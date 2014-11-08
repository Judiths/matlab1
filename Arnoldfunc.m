function Arnoldtest1(Image,Frequency,crypt)
%
Q=imread(Image);
M = Q ;
figure(1)
imshow(M);
title('original...')
Size_Q = size(Q);

   %Arnold exchanging
   n = 0;
   K = Size_Q(1);
   M1_t = Q;
   M2_t = Q;
     %置乱
   for count=0:1:2
   for s = 1:Frequency
       n = n + 1;
       if mod(n,2) == 0
            for i = 1:K
               for j = 1:K
                  c = M2_t(i,j);
                  M1_t(mod(i+j-2,K)+1,mod(i+2*j-3,K)+1) = c;
               end
            end
       else
            for i = 1:K
               for j = 1:K
                   c = M1_t(i,j);
                   M2_t(mod(i+j-2,K)+1,mod(i+2*j-3,K)+1) = c;
               end
            end
       end
   end
  
   if mod(Frequency,2) == 0
      M = M1_t;
   else
      M = M2_t;
   end
   %------------------------------------------
   imwrite( double(M)/255,'aimanhua001.bmp' );
   figure(count+2)
   if count == 0
      imshow(M);title('after encoding...');
   elseif count==1
      imshow(M);title('after decoding...') 
   end
     %解密
       Frequency=150-Frequency; 
   end
