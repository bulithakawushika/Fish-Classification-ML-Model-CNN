# Fish Classification Machine Learning Model (CNN)
 In this project, created a machine learning project to classify 20 fish species, and it is also able to
 distinguish between fish and non-fish.

![R](https://github.com/bulithakawushika/Fish-Classification-ML-Model-CNN/assets/115935781/90706476-1dcd-4ac6-8287-2a29012cf67d)


## Introduction to the project

There are lot of unique fish species around the world, for people who
encounter a new fish species most of the they don’t have any
knowledge about it, sometimes even with the expertise it’s hard to
tell apart some species because they are having quite similar features.
Some species have unique body and wing shapes, colors patterns,
features. We use them to identify species.
At present with the evolution of the computer vision and deep
learning techniques we can use computers to identify unique features
with ease. CNN (Convolutional Neural Network) can be used as a
great technique when it comes to identifying patterns in the image.
As for an application of CNN, it has shown great accuracy on
predictions when it comes to feature extractions which can be a great
tool for identifying fish species.

## Project Aim

The aim of the project is to build a machine learning model that can
accurately predict the fish species using an image as the user input.
With this model, users will be able to know which species they
have encountered. Without any effort.

## Project objectives

First, we need to develop and train our CNN model, then we can
proceed to deploy our model.

First, we are going to train a binary classification model by using a pre-trained model 'MobileNet'. Model have been trained by using 12000 Test Data and 68000 Training Data for two classes, which is Fish vs Not-Fish.

Then, We made our own custom model for the classification model and trained for 20 classes using 6000 Test data and 34000 training dataset.

Finally, By combining both models we are able to predict if the input image has a fish or not, if yes then what is the name of the fish species.

## Workflow
1. **Fish/Non-Fish Detection**  
   - Uses a custom detection model to identify fish regions in images.  
   - Filters out non-fish images to improve classification accuracy.

2. **Feature Extraction**  
   - MobileNet is used as a feature extractor.  
   - Pretrained layers are frozen to avoid overtraining and retain learned features.

3. **Fish Classification**  
   - A CNN model takes the extracted features and classifies the fish into species or categories.  

## Highlights
- Efficient two-stage pipeline: detection → feature extraction → classification.  
- Reduces false positives by separating fish/non-fish detection.  
- Leverages transfer learning for faster and more accurate training.   

## Our solution

With the help of the mobile application users will be able to upload an image of the
fish species to the server and it will predict the species as the output.
Technologies that will be used

- Python – Python as the main programming language it has many
  libraries which is related to the Machine learning concepts, and the
  back end of the server is also programmed via Python
- Tensorflow – Tensorflow is a free and open-source software library for
  machine learning and Artificial Intelligence. Very useful on training
  and inference of deep learning neural networks.
- Keras – Keras acts as an interface for the Tensorflow library
- Flutter – Flutter is used to develop mobile applications which are
  supported to Android/iOS platforms. (not included in this repository)

In this repository I contain machine learing model only.
This app contains two machine learning models, one to identify an image as a fish or not and another
one to classify that image into what fish it is. This can only classify the species mentioned below.

### Recognizable Fish Species

- Anthias anthias
- Atherinomorus lacunosus
- Belone belone
- Boops boops
- Chlorophthalmus agassizi
- Coris julis
- Dasyatis centroura
- Epinephelus caninus
- Gobius niger
- Mugil cephalus
- Phycis phycis
- Polyprion americanus
- Pseudocaranx dentex
- Rhinobatos cemiculus
- Scomber japonicus
- Solea solea
- Squalus acanthias
- Tetrapturus belone
- Trachinus draco
- Trigloporus lastoviza

### Why use Mobile Net instead of Resnet?

This model was designed for embedding in a mobile app, so MobileNet is a more suitable solution than ResNet because it is lighter in weight.
