namespace :feature_review do
  desc "Run rubocop"
  task :rubocop do
    system("docker compose exec feature_review bundle exec rubocop")
  end

  task :brakeman do
    system("docker compose exec feature_review bundle exec brakeman --no-pager")
  end

  task :rspec do
    system("docker compose exec feature_review bundle exec rspec")
  end
end
