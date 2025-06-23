#!/bin/bash

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

  # Start writing full file content
  {
    echo "---"
    echo "layout: default"
    echo "title: $folder"
    echo "---"
    echo ""
    echo "# $folder"
    echo ""
    echo "## Files"
    echo ""

    # list files
    for file in "$folder"/*; do
      filename=$(basename "$file")
      if [[ "$filename" != "index.md" ]]; then
        echo "- [$filename](./$filename)"
      fi
    done

    echo ""
    echo "[← Back to main portfolio](../index.md)"
  } > "$index_path"
done
