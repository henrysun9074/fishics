# install_keras(version = "release")  install the core Keras library and TensorFlow
library(keras)
library(tensorflow)
library(reticulate)
py_config()

# load data
library(dslabs)
mnist<- read_mnist()
set.seed(123)

# train_test split
train_images<- mnist$train$x
train_labels<- mnist$train$y
train_labels<- to_categorical(train_labels)

test_images<- mnist$test$x
test_labels<- mnist$test$y
test_labels<- to_categorical(test_labels)
