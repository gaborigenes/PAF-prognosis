#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Tue Feb 11 13:59:25 2025

@author: gabriel
"""

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestClassifier
from sklearn.model_selection import GridSearchCV
from sklearn.tree import plot_tree
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import (
    accuracy_score,
    f1_score,
    confusion_matrix,
    precision_score,
    recall_score,
    )
import joblib
import keras
import tensorflow as tf

df = pd.read_csv('/home/gabriel/fisica/certificados/git and github/PAF-prognosis/database/30min_normalizado.csv')
X = df.drop(['Unnamed: 0', 'rr_mean_boxcox','rmssd_boxcox','pnn50_sqrt','sd1_boxcox','lmean_boxcox','entropia_boxcox','captura_boxcox','determinismo_boxcox','etiqueta'], axis=1)
scaler = StandardScaler()
X = pd.DataFrame(scaler.fit_transform(X), columns = X.columns)
y = df['etiqueta']
y_encoded = tf.keras.utils.to_categorical(y)

X_train, X_test, y_train, y_test = train_test_split(X.values, y_encoded, test_size = 0.2)



model= keras.models.load_model('/home/gabriel/fisica/Proyecto_final/modelos/30min/MLP_30min_CV')

#model = mlp.predict(X_test)




y_pred_class = np.argmax(model.predict(X_test), axis=-1)
y_pred = model.predict(X_test)
y_test_class = np.argmax(y_test, axis=1)
cm = confusion_matrix(y_test_class, y_pred_class)
exactitud = accuracy_score(y_test_class,y_pred_class)
precision = precision_score(y_test_class,y_pred_class,average = 'weighted')
f1 = f1_score(y_test_class,y_pred_class,average = 'weighted')
print('exactitud :{:.2f} %'.format(exactitud*100))
print('precision :{:.2f} %'.format(precision*100))
print('puntaje f1 :{:.2f} %'.format(f1*100))
sns.heatmap(cm, annot = True, cmap='Blues', fmt='d')
