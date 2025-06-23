#!/bin/bash

# List of folder names exactly as seen in your local repo
folders=(
  "ALS Patient Clustering"
  "CNN Image Classification"
  "Car Price Estimation Linear Regression"
  "Customer Review Sentiment Analysis"
  "DS Salary Prediction Model"
  "Data Pipeline Building"
  "Data Viz : Business Recommendations"
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

  # Start the index file
  echo "# $folder" > "$index_path"
  echo "" >> "$index_path"
  echo "" >> "$index_path"
  echo "## Files" >> "$index_path"

  # List all files in the folder (except index.md itself)
  for file in "$folder"/*; do
    filename=$(basename "$file")
    if [[ "$filename" != "index.md" ]]; then
      echo "- [$filename](./$filename)" >> "$index_path"
    fi
  done

  echo "" >> "$index_path"
  echo "[← Back to main portfolio](../index.md)" >> "$index_path"
done

