RGB=imread('C:\Users\DELL\Documents\endoscope\data\colorcheck\cc_2.tiff');
R=RGB(:,:,1);G=RGB(:,:,2);B=RGB(:,:,3);
R1=mean(mean(R));G1=mean(mean(G));B1=mean(mean(B));
g=(R1+G1+B1)/3;
KR=g/R1;KG=g/G1;KB=g/B1;
R2=KR*R;G2=KG*G;B2=KB*B;
rgb=cat(3,R2,G2,B2);
imshow([RGB rgb]);