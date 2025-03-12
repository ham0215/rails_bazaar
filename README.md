# README

This is a Rails application with multiple Rails engines.

## Rails Engine Management

### Adding a New Rails Engine

To add a new Rails engine to the application:

1. Generate a new engine with the following command:
   ```bash
   rails plugin new engines/feature_name --mountable --full --dummy-path=test/dummy
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
