# README

This is a Rails application with multiple Rails engines.

## Rails Engine Management

### Adding a New Rails Engine

To add a new Rails engine to the application:

1. Generate a new engine with the following command:
   ```bash
   rails plugin new engines/feature_team --mountable --api --database=mariadb-trilogy --skip-active-job --skip-action-mailer --skip-ci --skip-git --skip-action-cable --skip-action-text --skip-active-storage --skip-sprockets --skip-javascript
   ```

2. Add the engine to your Gemfile:
   ```ruby
   gem 'feature_name', path: 'engines/feature_name'
   ```

3. Install the gem:
   ```bash
   bundle install
   ```

4. Mount the engine in your routes file (`config/routes.rb`):
   ```ruby
   Rails.application.routes.draw do
     mount FeatureName::Engine, at: '/feature_name'
   end
   ```

### Copying Engine Migrations to Main Application

To copy the migrations from a Rails engine to the main application and run them:

1. Copy the migrations from an engine to the main application:
   ```bash
   bin/rails feature_name:install:migrations
   ```

2. Run the pending migrations:
   ```bash
   bin/rails db:migrate
   ```

To copy migrations from all engines at once:
```bash
bin/rails railties:install:migrations
```

## Custom Tasks

The application includes several custom rake tasks located in `lib/tasks` to help with development and testing. These tasks can be executed as follows:

### Prerequisites

Before running any custom tasks, you need to start the Docker containers:

```bash
docker compose up --build -d
```

This command builds and starts the Docker containers in detached mode. Make sure the containers are running before executing any of the tasks below.

### Code Quality and Testing

To run these tasks, use the following commands:

1. Run RuboCop (static code analyzer):
   ```bash
   bin/rails rails_bazaar:rubocop
   ```
   This runs the RuboCop linter inside the Docker container to check for code style violations.

2. Run Brakeman (security scanner):
   ```bash
   bin/rails rails_bazaar:brakeman
   ```
   This runs the Brakeman security scanner inside the Docker container to check for security vulnerabilities.

3. Run RSpec tests:
   ```bash
   bin/rails rails_bazaar:rspec
   ```
   This executes all RSpec tests inside the Docker container.

These commands are designed to be run in the context of your Docker environment. They are helpful for maintaining code quality and ensuring your application is well-tested and secure.
