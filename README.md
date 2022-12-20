## Benchmarking SOTA UDA Semantic Segmentation Models using Distributed Training

**by [Pratyaksh Prabhav Rao](pr2257@nyu.edu), [Taiyan Yu](ty2226@nyu.edu)**

## Overview
Semantic segmentation is a fundamental task in computer vision and enables many downstream applications. The idea is to predict per-pixel category prediction given an input image. Recent success in deep learning has resulted to many SOTA semantic segmentation algorithms that have shown remarkable performance. More recently, the field of High Performance Computing (HPC) has aided deep learning algorithm to optimize performance. One of the key ingredients to the current success of ML is the ability to perform computations on very large amounts of training data. Hence, the goal of this course project it to implement different HPC techniques to enhance the performance of SOTA semantic segmentation algorithms. The objectives of our project are enumerated below -

1. Benchmark different SOTA semantic segmentation algorithms on Cityscapes dataset.
2. Performance optimization using different HPC methods
3. Implemented SOTA models in a distributed data parallel setting to overcome performance bottlenecks.

## Setup Environment

For this project, we used python 3.8.5. We recommend setting up a new virtual
environment:

```shell
python -m venv ~/venv/hpml
source ~/venv/hpml/bin/activate
```

Please follow the GitHub instructions to install the codebase for DAFormer and HRDA from the links listed below - 

1. DAFormer - https://github.com/lhoyer/DAFormer  
2. HRDA - https://github.com/lhoyer/HRDA  

After installing the codebase for two models, please read readme.md in two folders and overlay the modify_test.py to {architecture folder}/mmseg/apis/test.py

## Train(in HPC enviroment)
```shell
sbatch {Architecture folder}/train_with_{GPU type}.sh
```
In our experiments, Architecture folder should be DAFormer or HRDA  
GPU type should be v100, a100 or rtx8000
## Evaluate(in HPC enviroment)
```shell
sbatch {Architecture folder}/test_with_{GPU type}.sh
```
Please run Evaluate code after running train code and makesure you have work_dirs folder in each architecture folder.
