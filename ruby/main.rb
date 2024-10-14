require 'octokit'

client = Octokit::Client.new(access_token:ENV['GH_TOKEN'])

# Create
client.create_ref(
    "amprod2000/GitHub-Cert-Learning",
    "heads/sdks",
    "4124f595703f73aab2e882916ad841be1de8713c"
)

# Run The Script: bundle exec ruby main.rb