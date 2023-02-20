
# README

Simple Rails App to upload and list videos category wise.

# Setup Instructions
#### Ruby version
    ruby 2.7.5
#### Rails version
    Rails 6.1.7

### Running Locally

- Clone the repository using
```
git clone git@github.com:TanyaSaroha/SAROHA_20230220.git
```
- Go to the cloned repo
```
cd SAROHA_20230220
```
- Inside the repo, first install the dependencies using
```
bundle install
```

- Once the dependencies are successfully installed, set up the database
  * We are using PostgresQL here so you must Setup that.
  * Once postgres is setup change the credentials (username/password) in config/database.yml file 
  * Once that is done, you can run.
        rails db:setup

  This will create categories & videos table. It will also add some data in categories table.

- Once the database Setup is done you can start server using
```
rails s
```

