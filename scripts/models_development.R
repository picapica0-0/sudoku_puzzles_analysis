# Load Libraries
library(car)
library(pscl)
library(MASS)
library(caret)
library(ggplot2)
library(readxl)

# Load Dataset
MyData <- read_excel("Sudoku_data.xlsx")

# -----------------------------
# Poisson Regression Model
# -----------------------------
PoiReg <- glm(No.Solved ~ Difficulty + DaysIn2023 + No.Comment + Observed
              + Killer + Arrows + Thermo + German + Renban + Kropki.Pairs
              + Auth.No.published.2023 + Auth.Solved.Avg + Auth.Published.Avg,
              family="poisson", data=MyData)
summary(PoiReg)

# -----------------------------
# Rating Regression Model
# -----------------------------
RatingQBReg <- glm((Rating/100) ~ Difficulty + No.Comment + Observed + Arrows
                   + German + Renban + Auth.Total.solved + Auth.Total.published
                   + Auth.No.solved.2023 + Auth.Solved.Avg + Auth.Published.Avg,
                   data=MyData, family="quasibinomial")
summary(RatingQBReg)

# -----------------------------
# Difficulty Ordinal Regression
# -----------------------------
DiffReg <- polr(as.factor(Difficulty) ~ No.Comment + Observed + Killer + Arrows
                + Thermo + German + Kropki.Pairs + Auth.No.published.2023
                + Auth.Solved.Avg + Auth.Published.Avg, data=MyData, Hess=T)
summary(DiffReg)
