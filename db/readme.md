## Database Setup
To set up the database for this project, follow the steps below:

1. Install MySQL (version 8 or higher).
2. Create a new database:
   ```sql
   CREATE DATABASE project_db;
3. Import the dump file:
   ```sql
   mysql -u username -p project_db < database/dump.sql