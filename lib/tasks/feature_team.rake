namespace :feature_team do
  desc "Run rubocop"
  task :rubocop do
    system("docker compose exec feature_team bundle exec rubocop")
  end

  task :brakeman do
    system("docker compose exec feature_team bundle exec brakeman --no-pager")
  end

  task :rspec do
    system("docker compose exec feature_team bundle exec rspec")
  end
end
