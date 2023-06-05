clear;close all;clc;
tic
detector = maskrcnn("resnet50-coco");

cam=webcam("Integrated Camera");
%preview(cam);
%while(1)

I=snapshot(cam);
figure(1);imshow(I)    


combine_audio = audioread("Audios\Beep.mp3");
[masks,labels,scores,boxes] = segmentObjects(detector,I,Threshold=0.95);
count_table = countlabels(labels);
for i=1:80
    if (table2array(count_table(i,2))~=0)
        filename = strcat('./Audios/',string(table2array(count_table(i,1))),'.mp3');
        filecount = strcat('./Audios/',string(table2array(count_table(i,2))),'.mp3');
        [y,fs]= audioread(filecount);
      combine_audio = [combine_audio;y];
        [y,fs]= audioread(filename);
      combine_audio = [combine_audio;y];
  
       
       
    end
    


end

display(labels)


sound(combine_audio,fs)



%overlayedImage = insertObjectMask(I,masks);

%showShape("rectangle",boxes,Label=labels,LineColor=[1 0 0]);

toc
%end
clear('cam')
