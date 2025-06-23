#!/bin/bash

# List of your project folders
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

  # Start the index.md
  echo "# $folder" > "$index_path"
  echo "" >> "$index_path"
  echo "## Files" >> "$index_path"

  # List all files except index.md and README.md
  for file in "$folder"/*; do
    filename=$(basename "$file")
    if [[ "$filename" != "index.md" && "$filename" != "README.md" ]]; then
      echo "- [$filename](./$filename)" >> "$index_path"
    fi
  done

  echo "" >> "$index_path"
  echo "- [Project Overview (README)](./README.md)" >> "$index_path"
  echo "" >> "$index_path"
  echo "[← Back to main portfolio](../index.md)" >> "$index_path"
done
