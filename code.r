# Create a folder to store the information
# Define the folder name
folder <- "./R-1st-approach/output_data"

# Check if the folder exists; if not, create it
if (!dir.exists(folder)) {
  dir.create(folder)
  cat("Folder created:", folder, "\n")
} else {
  cat("Folder already exists:", folder, "\n")
}

# Initialize an empty list to store user records
records <- list()

# Set a control variable for the loop
continue <- TRUE

# Loop to collect user input until the user chooses to stop
while (continue) {
  # Prompt the user to enter their name
  name <- readline(prompt = "Enter your name: ")
  
  # Validate that the age entered is numeric
  age <- NA
  while (is.na(age)) {
    # Ask for the user's age
    age_input <- readline(prompt = "Enter your age (numeric): ")
    # Convert the input to numeric and suppress warnings if invalid
    age <- suppressWarnings(as.numeric(age_input))
    if (is.na(age)) {
      cat("Please enter a valid number for age.\n")
    }
  }
  
  # Prompt the user to enter their city
  city <- readline(prompt = "Enter your city: ")
  
  # Add the collected data to the records list
  records[[length(records) + 1]] <- data.frame(
    Name = name,
    Age = age,
    City = city
  )
  
  # Ask the user if they want to add another record
  response <- tolower(readline(prompt = "Do you want to add another record? (y/n): "))
  if (response != "y") {
    continue <- FALSE  # Stop the loop if the response is not "yes"
  }
}

# Combine all records into a single data frame
data <- do.call(rbind, records)

# Display the entered data
cat("Data entered:\n")
print(data)

# Save the data frame as a CSV file inside the folder
file_path <- file.path(folder, "user_data.csv")
write.csv(data, file = file_path, row.names = FALSE)

# Confirm that the file was created successfully
cat("File saved at:", file_path, "\n")
