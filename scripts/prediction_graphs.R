# -----------------------------
# No.Solved Scatterplot Actual vs. Predicted
# -----------------------------
PoiReg <- glm(No.Solved ~ Difficulty + DaysIn2023 + Observed + No.Comment 
              + Killer + Arrows + Thermo + German + Renban + Kropki.Pairs 
              + Auth.No.published.2023 + Auth.Solved.Avg + Auth.Published.Avg, 
              family = "poisson", data = MyData)

No.Solved_SepPredict <- predict(PoiReg, newdata = Sepdata, type = "response")
write.csv(data.frame(No.Solved.Predict = No.Solved_SepPredict), "No.Solved_SepPredict.csv", row.names = FALSE)
No.Solved_SepActual <- Sepdata$No.Solved

plot(No.Solved_SepActual, No.Solved_SepPredict,
     main = "No.Solved Actual vs Predicted (September Data)",
     xlab = "Actual Data",
     ylab = "Predicted Data",
     xlim = c(0,800),
     ylim = c(0,800)
)

# -----------------------------
# Rating Scatterplot Actual vs. Predicted
# -----------------------------
RatingQBReg <- glm(RatingP ~ Difficulty + Observed + No.Comment + Arrows 
                   + German + Renban + Auth.Total.solved + Auth.No.solved.2023 
                   + Auth.Total.published + Auth.Solved.Avg + Auth.Published.Avg, 
                   data = MyData, family = "quasibinomial")

Rating_SepPredict <- predict(RatingQBReg, newdata = Sepdata, type = "response")
write.csv(data.frame(Rating.Predict = Rating_SepPredict), "Rating_SepPredict.csv", row.names = FALSE)
Rating_SepActual <- Sepdata$RatingP

plot(Rating_SepActual, Rating_SepPredict,
     main = "Rating Actual vs Predicted (September Data)",
     xlab = "Actual Rating",
     ylab = "Predicted Rating",
     xlim = c(0.6,1),
     ylim = c(0.6,1)
)

# -----------------------------
# Difficulty Scatterplot Actual vs. Predicted
# -----------------------------
DiffReg<-polr(as.factor(Difficulty) ~ Observed + No.Comment + Killer + Arrows 
              + Thermo + German + Kropki.Pairs + Auth.No.published.2023 
              + Auth.Solved.Avg + Auth.Published.Avg, data=MyData, Hess=T)

Diff_SepPredict <- predict(DiffReg, newdata = Sepdata, type = "class")
write.csv(data.frame(Diffculty.Predict = Diff_SepPredict), "Difficulty_SepPredict.csv", row.names = FALSE)
Diff_SepActual <- Sepdata$Difficulty

plot(Diff_SepActual, Diff_SepPredict,
     main = "Difficulty Actual vs Predicted (Sep Data)",
     xlab = "Actual Difficulty",
     ylab = "Predicted Difficulty"
)
