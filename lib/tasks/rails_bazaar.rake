namespace :rails_bazaar do
  desc "Run rubocop"
  task :rubocop do
    system("docker compose exec rails_bazaar bundle exec rubocop")
  end

  task :brakeman do
    system("docker compose exec rails_bazaar bundle exec brakeman --no-pager")
  end

  task :rspec do
    system("docker compose exec rails_bazaar bundle exec rspec")
  end
end
