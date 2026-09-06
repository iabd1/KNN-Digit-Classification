# KNN Digit Classification

A small project classifying handwritten digits (0-9) using K-Nearest 
Neighbours, exploring the data in R and building/evaluating the model in Python.

## What I did
- Explored the dataset in R (digit distribution, visualised example images)
- Built a KNN classifier in Python (scikit-learn) to predict digit labels
- Tested multiple K values (1, 3, 5, 7, 10, 15, 20) to find the best setting
- Evaluated performance using accuracy on a held-out test set

## Results
- Best accuracy: 98.8% at K=7
- Accuracy improved from K=1 to K=7, then declined sharply beyond K=10, likely because at high K, the model starts including less similar, irrelevant neighbours in its vote, diluting the correct answer
- Digit distribution was well-balanced across all 10 classes (roughly 150-180 examples each), so no digit was under-represented in training

## Tools used
R (tidyverse, ggplot2) · Python (scikit-learn, pandas, matplotlib)

## Files
- `save_data.py` — exports the digit dataset to CSV
- `eda.R` — exploratory analysis and visualisation
- `model.py` — KNN model training, K-value comparison, accuracy plot
