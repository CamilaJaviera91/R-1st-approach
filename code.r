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