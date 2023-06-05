detector = maskrcnn("resnet50-coco");
unzip set.zip
I = imread("food.jpg");


[masks,labels,scores,boxes] = segmentObjects(detector,I,Threshold=0.95);

overlayedImage = insertObjectMask(I,masks);

imshow(overlayedImage)
showShape("rectangle",boxes,Label=labels,LineColor=[1 0 0])

%% 
detector = maskrcnn("resnet50-coco");
A = imread("car.jpg");
[masks,labels,scores,boxes] = segmentObjects(detector,A,Threshold=0.95);
overlayedImage2 = insertObjectMask(A,masks);
figure;imshow(overlayedImage2)
showShape("rectangle",boxes,Label=labels,LineColor=[1 0 0])
%%
detector = maskrcnn("resnet50-coco");
B = imread("flower.jpg");
[masks,labels,scores,boxes] = segmentObjects(detector,B,Threshold=0.95);
overlayedImage2 = insertObjectMask(B,masks);
figure;imshow(overlayedImage2)
showShape("rectangle",boxes,Label=labels,LineColor=[1 0 0])
%%
detector = maskrcnn("resnet50-coco");
C = imread("person.jpg");
[masks,labels,scores,boxes] = segmentObjects(detector,C,Threshold=0.95);
overlayedImage2 = insertObjectMask(C,masks);
figure;imshow(overlayedImage2)
showShape("rectangle",boxes,Label=labels,LineColor=[1 0 0])
%%
detector = maskrcnn("resnet50-coco");
D = imread("aa.jpg");
[masks,labels,scores,boxes] = segmentObjects(detector,D,Threshold=0.95);
overlayedImage2 = insertObjectMask(D,masks);
figure;imshow(overlayedImage2)
showShape("rectangle",boxes,Label=labels,LineColor=[1 0 0])
