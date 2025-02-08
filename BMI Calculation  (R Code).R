# -------------------------------
# Body Mass Index (BMI) Calculator in R
# -------------------------------

# Function to calculate BMI
calculate_bmi <- function(weight_kg, height_m) {
  if (height_m <= 0) {
    stop("Height must be greater than 0!")  # Error handling
  }
  
  bmi <- weight_kg / (height_m^2)  # BMI formula
  
  # Categorizing BMI according to WHO standards
  category <- ifelse(bmi < 18.5, "Underweight",
              ifelse(bmi < 24.9, "Normal weight",
              ifelse(bmi < 29.9, "Overweight",
              ifelse(bmi < 34.9, "Obese (Class I)",
              ifelse(bmi < 39.9, "Obese (Class II)", "Obese (Class III)")))))
  
  return(list(BMI = round(bmi, 2), Category = category))
}

# Example usage
result <- calculate_bmi(70, 1.75)  # 70 kg, 1.75 m height
print(result)

# -------------------------------
# Interactive BMI Calculator
# -------------------------------

# Get user input for weight and height
bmi_interactive <- function() {
  weight <- as.numeric(readline("Enter your weight (kg): "))
  height <- as.numeric(readline("Enter your height (m): "))
  
  if (is.na(weight) || is.na(height) || weight <= 0 || height <= 0) {
    print("Invalid input. Please enter positive numbers.")
    return(NULL)
  }
  
  result <- calculate_bmi(weight, height)
  print(paste("Your BMI is:", result$BMI))
  print(paste("You are classified as:", result$Category))
}

# Uncomment the line below to use interactive mode in R Console
# bmi_interactive()

# -------------------------------
# Bulk BMI Calculation for Multiple People
# -------------------------------

# Sample dataset
people <- data.frame(
  Name = c("Alice", "Bob", "Charlie", "David"),
  Weight_kg = c(55, 85, 95, 120),
  Height_m = c(1.65, 1.80, 1.75, 1.90)
)

# Apply BMI function to each row
people$BMI <- mapply(calculate_bmi, people$Weight_kg, people$Height_m)

# Convert list columns to separate columns
people$BMI_Value <- sapply(people$BMI, function(x) x$BMI)
people$Category <- sapply(people$BMI, function(x) x$Category)
people$BMI <- NULL  # Remove list column

# Print the final dataset with BMI values and categories
print(people)
