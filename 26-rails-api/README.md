rails new twitter --api

User

Tweet

render json: @users, only: [:id, :name], include: :tweets

CORS

Uncomment the `rack-cors` gem from your gemfile. Then `bundle install`

```ruby
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
```
