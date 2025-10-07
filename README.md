# Week 6 Mini Assignment - SQLite Database Operations

This project demonstrates working with a SQLite database containing university rankings data. The project performs various CRUD (Create, Read, Update, Delete) operations on the database.

## Project Structure

- `university_database.db`: The SQLite database containing university rankings data
- `university_rankings.ipynb`: Jupyter notebook containing all the database operations
- `README.md`: Project documentation

## Database Operations Performed

1. **Database Connection**
   - Successfully connected to the SQLite database
   - Created helper functions for database operations

2. **Data Exploration**
   - Examined database structure
   - Retrieved basic statistics about university rankings by year

3. **Insert Operation**
   - Added Duke Tech to the 2014 rankings
   - Institution details:
     - Country: USA
     - World Rank: 350
     - Score: 60.5

4. **Query Operation**
   - Analyzed Japanese universities in the global top 200 for 2013
   - Retrieved detailed information about these institutions

5. **Update Operation**
   - Updated University of Oxford's score for 2014
   - Increased score by 1.2 points
   - Implemented with proper error handling and verification

6. **Delete Operation**
   - Removed universities with scores below 45 in 2015
   - Implemented with preview of affected institutions
   - Added verification step to confirm deletion

## How to Run

1. Ensure you have Python and Jupyter Notebook installed
2. Install required Python packages:
   ```bash
   pip install pandas sqlite3
   ```
3. Open the Jupyter notebook:
   ```bash
   jupyter notebook university_rankings.ipynb
   ```
4. Run all cells in sequence

## Implementation Details

The project implements several helper functions for database operations:

- `connect_to_db()`: Establishes database connection with error handling
- `explore_database()`: Provides database structure information
- `insert_university()`: Handles new university record insertion
- `count_top_universities()`: Analyzes rankings for specific criteria
- `update_university_score()`: Updates university scores
- `delete_low_scoring_universities()`: Removes records based on score threshold

Each function includes error handling and verification steps to ensure data integrity.