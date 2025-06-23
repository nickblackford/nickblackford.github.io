#!/bin/bash

# List of your actual project folders
folders=(
  "ALS Patient Clustering"
  "Car Price Estimation Linear Regression"
  "CNN Image Classification"
  "Customer Review Sentiment Analysis"
  "Data Pipeline Building"
  "Data Viz : Business Recommendations"
  "DS Salary Prediction Model"
  "Fantasy Football Predictive Model"
  "Fuel Efficiency Regression"
  "Heart Disease Classification"
  "Iris Data Viz"
  "Loan Approval Logistic Regression"
  "Movie Recommender System"
  "Supervised Learning Diabtetes Detection"
  "Survival Logistic Regression"
)

for folder in "${folders[@]}"
do
  index_path="$folder/index.md"
  echo "Generating $index_path..."

  # Start index.md with YAML front matter
  cat > "$index_path" << EOF
---
layout: default
title: $folder
---

# $folder

## Files
EOF

  # List all files (skip index.md itself)
  for file in "$folder"/*; do
    filename=$(basename "$file")
    if [[ "$filename" != "index.md" ]]; then
      echo "- [$filename](./$filename)" >> "$index_path"
    fi
  done

  # Add footer link
  echo "" >> "$index_path"
  echo "[← Back to main portfolio](../index.md)" >> "$index_path"
done
