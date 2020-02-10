require 'rest-client'
require 'json'

url = 'https://reddit.com/.json'

# reddit_hash['data']['children'][0]['data']['subreddit']

response = RestClient.get url
parsed_hash = JSON.parse response
posts = parsed_hash['data']['children']

def pretty_print_subs_and_titles(posts)
  posts.each do |post|
    data = post['data']
    puts '----------------------------------'
    puts data['subreddit']
    puts data['title']
    puts '----------------------------------'
  end
end

pretty_print_subs_and_titles posts
