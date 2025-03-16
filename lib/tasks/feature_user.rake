namespace :feature_user do
  desc "Run rubocop"
  task :rubocop do
    system("docker compose exec feature_user bundle exec rubocop")
  end

  task :brakeman do
    system("docker compose exec feature_user bundle exec brakeman --no-pager")
  end

  task :rspec do
    system("docker compose exec feature_user bundle exec rspec")
  end
end
