load('Detector.mat');

A = imread('C:\Users\ISRO\Downloads\pexels-hikaique-109919.jpg');

[bboxes,scores] = detect(detector,A);


for i =1:length(scores)
    annotation = sprintf('Confidence = %.1f',scores(i));
    A =insertObjectAnnotation(A,'rectangle',bboxes(i,:),annotation);
end

figure 
imshow(A);
