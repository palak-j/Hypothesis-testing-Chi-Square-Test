#Example 1

observed <- c(45, 40, 65)
names(observed) <- c("A", "B", "C")
barplot(observed, density = 10, col = "blue", ylab = 
          "Number of Preference")
result1 <- chisq.test(observed, correct = FALSE)
result1


# Here X-squared value is 7 and p value = 0.0302
# As p value is less than 0.05, we can reject null hypothesis 
# and can say that there is a difference among beer drinkers in 
# their preference for different brands of light beer.






# Example 2



contable1= matrix(c(68, 22, 110, 92, 18, 90), byrow = TRUE, 
                  ncol = 3)
result2 <- chisq.test(contable1, correct = FALSE)
result2



# On using Fisher's exact test instead of Chi-square test

Fisher_test <- fisher.test(contable1)
print(Fisher_test)



























