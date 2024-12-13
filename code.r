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
  response <- tolower(readline(prompt = "Do you want to add another record? (yes/no): "))
  if (response != "yes") {
    continue <- FALSE  # Stop the loop if the response is not "yes"
  }
}