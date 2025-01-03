# User Data Collection Script in R

This R script is designed to collect user information (name, age, and city), store it in a structured format, and save it as a CSV file. The script ensures data validation and provides a user-friendly interface for entering records.

## Features

- **Dynamic Folder Creation**: The script creates a specified folder (`./R-1st-approach/output_data`) if it does not already exist.
- **Data Collection Loop**: Continuously collects user records until the user chooses to stop.
- **Input Validation**: Ensures that the age entered is a numeric value.
- **CSV File Generation**: Saves the collected data into a CSV file (`user_data.csv`) within the specified folder.

## Prerequisites

- R installed on your system.
- No additional libraries are required; the script uses base R functions.

## How to Use

1. **Run the Script**:
   Execute the script in your R environment.

2. **Input Data**:
   - Enter your **name** when prompted.
   - Enter your **age** (numeric only; invalid inputs will be rejected).
   - Enter your **city**.
   - Decide whether to add another record by typing `y` (yes) or `n` (no).

3. **View Results**:
   - After exiting the input loop, the script displays the collected data in the console.

4. **File Generation**:
   - The data is saved as a CSV file in the `./R-1st-approach/output_data` folder.

## File Structure

- **`output_data` Folder**:
  - Contains the generated `user_data.csv` file with the collected data.

## Example Output

### Sample Input:

``` 
Enter your name: Alice Enter your age (numeric): 30 
```
``` 
Enter your city: New York Do you want to add another record? (y/n): y
``` 
``` 
Enter your name: Bob Enter your age (numeric): 25 
``` 
``` 
Enter your city: San Francisco Do you want to add another record? (y/n): n
``` 

### Sample Data in Console
### Generated CSV File:

`user_data.csv` will contain:
| Name  | Age | City          |
|-------|-----|---------------|
| Alice | 30  | New York      |
| Bob   | 25  | San Francisco |

## Notes

- Ensure the script has write permissions for the folder where the output file will be created.
- The script gracefully handles non-numeric inputs for age, prompting the user until a valid value is provided.

## Contact

For questions or suggestions, feel free to reach out!

---

Happy coding! 😊

