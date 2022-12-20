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
python -m venv ~/venv/daformer
source ~/venv/daformer/bin/activate
```

Please follow the GitHub instructions to install the codebase for DAFormer and HRDA from the links listed below - 

1. DAFormer - https://github.com/lhoyer/DAFormer
2. HRDA - https://github.com/lhoyer/HRDA


