#!/bin/sh
../darknet-alexey-blas/darknet classifier predict cfg/mnist.dataset cfg/mnist_lenet.cfg backup/mnist_lenet_last.weights data/mnist/images/v_00000_c7.png
