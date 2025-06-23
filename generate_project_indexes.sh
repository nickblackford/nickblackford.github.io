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

for folder in "${folders[@]}"; do
  index_path="$folder/index.md"
  echo "Generating $index_path..."

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

    for file in "$folder"/*; do
      fname=$(basename "$file")
      if [[ "$fname" != "index.md" ]]; then
        echo "- [$fname](./$fname)"
      fi
    done

    echo ""
    echo "[← Back to main portfolio](../index.md)"
  } > "$index_path"
done
