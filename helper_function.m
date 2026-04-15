load('C:\Users\ISRO\Desktop\matproject1.mat')
Facedetect=selectLabels(gTruth,'face');

if isfolder(fullfile('TrainingData'))
cd TrainingData
else 
mkdir TrainingData
end
addpath('TrainingData')

trainingData = objectDetectorTrainingData(Facedetect,'SamplingFactor',1,'writeLocation','TrainingData');
detector = trainACFObjectDetector(trainingData,'numStages',20);
save('Detector.mat','detector');
rmpath('trainingData');
 
