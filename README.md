# [Expenses Tracker](https://expense-db-h6ko.onrender.com)

Track, organize, and stay on top of your finances with this [handy tool](https://expense-db-h6ko.onrender.com).

### Key Features:
1. **Manage Expenses Easily**: Effortlessly add, edit, and delete expenses with simple actions.
2. **See Total Expenses**: Instantly view the sum of all your expenses to keep track of your spending.
3. **View Monthly Breakdown**: Check your spending habits by clicking on an expense item to explore related monthly expense breakdowns.

### Ruby version: ruby-3.3.0

### Dependencies
This app relies on **Rails 7**, **Tailwind CSS**, and **PostgreSQL**. 
It may also use extra gems for tasks like authentication, testing, and deployment. Check the Gemfile and Gemfile.lock for the full list of gems and their versions.

### Configuration
1. Clone the repository to your local machine using the following command:

```bash
git clone git@github.com:louisedungca/expenses_tracker.git
```
2. Once you have cloned the repository, navigate to the project directory and install the required dependencies using Bundler:

```bash
cd expenses_tracker
bundle install
```

3. Configure the database settings in the config/database.yml file according to your local database setup. Ensure that PostgreSQL is installed and running on your machine.

4. Run the database migrations to set up the database schema:

```bash
bin/rails db:create
bin/rails db:migrate
```

5. Once the configuration is complete, start the Rails server using bin/dev to run the application locally:

```bash
bin/dev
```

The application should now be accessible at http://localhost:3000 in your web browser.