function Image= Stack_linescan(Chemin1)
[file,Chemin1] =  uigetfile({'*.jpg;*.tif'},'Select linescan',Chemin1,'MultiSelect', 'on');
%list_sc=ls;
%%
Nomfichier=[Chemin1,file{1}];
Image_scan=imread(Nomfichier);
Image_scan=im2gray(Image_scan);
Image=uint8(zeros(size(file,2),size(Image_scan,2)));
f = waitbar(0,'Please wait...');
for i=1:size(file,2)
    Nomfichier=[Chemin1,file{i}];
Image_scan=imread(Nomfichier);
Image_scan=im2gray(Image_scan);
Image(i,:)=Image_scan;


 waitbar(round(i/size(file,2)),f,sprintf('%5d',i));
end
close(f)

%%

end