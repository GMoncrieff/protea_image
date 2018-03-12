## Automated fynbos identification using iNaturalist and Deep Learning

The code provided in this repo describes the fitting of a convolutional neural network along with [this blog post](https://www.lentilcurtain.com/posts/automated-fynbos-identification-using-inaturalist-and-deep-learning/) on lentilcurtain.com, my personal blog. Much of the code and workflow is adapted from [this post on the keras blog](https://blog.keras.io/building-powerful-image-classification-models-using-very-little-data.html) by Francois Chollet.
  
Before running the model, download [VGG16_weight.h5](https://drive.google.com/file/d/0Bz7KyqmuGsilT0J5dmRCM0ROVHc/view?usp=sharing), which are the pretrained model weights from VGG16.

To obtain the training data run imagenet.r  
To train the image classifyer run:    
proteas_bottleneck.ipynb   
then proteas_finetune.ipynb  
To make predictions run proteas_predict_single.py

Model build using Keras 2.0 running with tensorflow backend on Python 2.7

