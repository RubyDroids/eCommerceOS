# README


## Development environment

By default the app will start at `3001` port and will use SQLite3 database. Here is howto:

```
# Prepare the application
bundle install
rails db:create
rails db:migrate

# Start the app
foreman start
```

Point your browser at `http://localhost:3001/` and login to Dashboard.


## App configuration

Before first run you need to modify credentials. Use your favorite editor to change rails credentials. 

```
rails credentials:edit --environment development
```
