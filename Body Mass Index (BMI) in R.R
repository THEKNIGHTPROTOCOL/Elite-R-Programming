# Function to calculate BMI
calculate_bmi <- function(weight, height) {
  bmi <- weight / (height^2)
  return(bmi)
}

# Example: Input weight in kg and height in meters
weight <- 70   # Example: 70 kg
height <- 1.75 # Example: 1.75 meters

bmi_value <- calculate_bmi(weight, height)

# Print the result with category classification
cat("Your BMI is:", round(bmi_value, 2), "\n")

# BMI Classification
if (bmi_value < 18.5) {
  cat("Category: Underweight\n")
} else if (bmi_value >= 18.5 & bmi_value < 24.9) {
  cat("Category: Normal weight\n")
} else if (bmi_value >= 25 & bmi_value < 29.9) {
  cat("Category: Overweight\n")
} else {
  cat("Category: Obese\n")
}
