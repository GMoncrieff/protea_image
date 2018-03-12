#!/usr/bin/python

import sys
import warnings
warnings.filterwarnings("ignore")
from keras.models import load_model
from keras.models import Sequential
import cv2
import numpy as np 

#load saved model
model = load_model('proteas_final.h5')

photo = str(sys.argv[1])

#resize and classify image
def fynbos_id(model, photo):
    img = cv2.imread(photo).astype(np.float32) / 255
    img = cv2.resize(img, (150, 150))
    img = np.expand_dims(img, axis=0)
    classes = model.predict(img)
    if classes <0.5:
        sp_id = "Protea"
    else:
        sp_id = "Restio"      
    return sp_id;

#print result
print(fynbos_id(model,photo))

