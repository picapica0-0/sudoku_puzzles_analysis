# Quantitative Analysis of Sudoku Variant Puzzles

## Overview

This project analyzes publicly available Sudoku variant puzzle data from Logic Masters Deutschland (LMD), a German organization focused on logic puzzle competitions and puzzle development.

The research investigates how puzzle characteristics, author activity, difficulty ratings, and puzzle variants influence puzzle engagement and solving behavior within the Sudoku community.

The study focuses on puzzle data published between January 2023 and August 2023 to capture recent community trends and interactions.

---

## Research Objectives

- Analyze factors influencing Sudoku puzzle popularity
- Examine relationships between puzzle difficulty and engagement
- Evaluate the impact of Sudoku variants on puzzle-solving activity
- Develop predictive regression models for puzzle outcomes
- Identify measurable indicators of puzzle success and player satisfaction

---

## Dataset

The dataset was collected from publicly available records on Logic Masters Deutschland (LMD) and includes:

- Puzzle names
- Author information
- Publication dates
- Number of solved puzzles
- Earliest solved dates
- Difficulty ratings
- Puzzle observations and comments
- Puzzle satisfaction ratings
- Presence of puzzle variants:
  - Killer Sudoku
  - Arrow Sudoku
  - Thermo Sudoku
  - German Whispers
  - Reban
  - Kropki Pairs

---

## Tools & Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- Scikit-learn
- Jupyter Notebook

---

## Analysis Type

- Descriptive Analytics
- Predictive Analytics
- Regression Analysis

---

## Methodology

The project applied multiple regression analysis techniques to evaluate relationships between puzzle characteristics and player engagement metrics.

Independent variables included:
- Puzzle difficulty
- Variant type
- Publication timing
- Author activity metrics
- Puzzle observations and comments

Dependent variables included:
- Number of solved puzzles
- Puzzle difficulty ratings
- Puzzle satisfaction ratings

---

## Key Findings

- Certain Sudoku variants demonstrated stronger engagement levels than others
- Puzzle difficulty significantly influenced solving activity
- Author publishing activity showed measurable relationships with puzzle popularity
- Regression models provided predictive insight into puzzle performance and community engagement

---

## Predictive Validation

Developed regression models were applied to a subsequent monthly dataset to evaluate predictive performance.

### No. Solved Actual vs Predicted
![No Solved Prediction](images/no_solved_prediction.png)

### Rating Actual vs Predicted
![Rating Prediction](images/rating_prediction.png)

### Difficulty Actual vs Predicted
![Difficulty Prediction](images/difficulty_prediction.png)

---

## Repository Structure

```plaintext
├── data/
│   ├── sudoku_dataset.csv
│   └── september_validation_dataset.csv
│
├── scripts/
│   ├── model_development.R
│   └── model_prediction_validation.R
│
├── prediction_image/
│   ├── no_solved_prediction.png
│   ├── rating_prediction.png
│   └── difficulty_prediction.png
│
├── Poster.pdf
│
└── README.md
```

---

## Notes

This project was conducted for educational and research purposes using publicly available puzzle data from Logic Masters Deutschland (LMD).
