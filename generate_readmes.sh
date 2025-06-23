#!/bin/bash

write_readme() {
  folder="$1"
  title="$2"
  content="$3"

  echo "Writing README.md to $folder..."

  cat > "$folder/README.md" << EOF
# $title

$content
EOF
}

# Call write_readme for each project

write_readme "ALS Patient Clustering" "ALS Patient Clustering" "Applies unsupervised learning to identify patient clusters based on ALS symptom patterns for better research insight."

write_readme "Car Price Estimation Linear Regression" "Car Price Estimation" "Predicts car prices using linear regression and key features like horsepower and engine size."

write_readme "CNN Image Classification" "CNN Image Classification" "Trains a CNN model to classify handwritten digits (MNIST) with over 99% accuracy."

write_readme "Customer Review Sentiment Analysis" "Sentiment Analysis" "Uses NLP techniques to classify customer reviews by sentiment using logistic regression and vectorization."

write_readme "Data Pipeline Building" "Data Pipeline: Titanic ETL Workflow" "End-to-end ETL pipeline using NiFi, HDFS, Hive, and PySpark on Titanic data."

write_readme "Data Viz : Business Recommendations" "Dodgers Attendance Analysis" "Analyzes Dodgers game attendance to recommend marketing improvements for higher turnout."

write_readme "DS Salary Prediction Model" "Data Scientist Salary Prediction" "Uses R and regression modeling to predict U.S. data scientist salaries based on company and job factors."

write_readme "Fantasy Football Predictive Model" "Fantasy Football Prediction" "Predicts NFL player fantasy points using prior-season stats and random forest models."

write_readme "Fuel Efficiency Regression" "Fuel Efficiency Regression" "Uses linear regression to predict MPG from engine and vehicle specs. Includes ElasticNet comparison."

write_readme "Heart Disease Classification" "Heart Disease Prediction" "Logistic regression model predicts heart disease risk using clinical features like cholesterol and heart rate."

write_readme "Iris Data Viz" "Iris Data Visualization" "Visualizes sepal and petal dimensions of iris species using ggplot2."

write_readme "Loan Approval Logistic Regression" "Loan Approval Model Selection" "Compares multiple models for predicting loan approval. Logistic regression with L1 penalty performs best."

write_readme "Movie Recommender System" "Movie Recommender System" "Recommends movies based on user preference using content-based filtering and similarity scores."

write_readme "Supervised Learning Diabtetes Detection" "Diabetes Detection" "Classifies individuals as diabetic/pre-diabetic using Random Forest and CDC health data."

write_readme "Survival Logistic Regression" "Survival Analysis with Logistic Regression" "Models 1-year post-surgery survival using logistic regression with stepwise AIC selection."
