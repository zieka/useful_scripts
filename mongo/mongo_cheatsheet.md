# Mongo DB Cheatsheet

## Installing

1. Download/Install Mongo:
  ```bash
  brew install mongodb #OSX using homebrew
  ```
2. Mongo needs default data folder:
  ```bash
  sudo mkdir -p /data/db
  sudo chown -R `id -u` /data/db #change ownership
  ```
3. Start MongoDB:
  ```
  mongod
  ```
4. Start Mongo shell:
  ```
  mongo
  ```

### Helpful configuration
```
mongod --config /etc/mongod.conf
```
* Journalling allocates 3GB for write ahead logging to guarentee write operations
  - not recommended to turn off, especially in prod
  - if you want to turn off use `nojournal=true` in config


* Ruby Integration:
  - Gems:
  ```ruby
  gem update -system
  gem install mongo
  gem install bson_ext
  ```
  - make sure to `require mongo`


* Elixir Integration:
  - In mix.exs:
  ```elixir
  {:mongo, "~> 0.5.4"},
  {:mongodb, "~> 0.1.1"}
  ```


## Nomenclature
* Collections - similar to a table in relational db
  - Collection of documents
* Documents - similar to rows in relational db
  - JSON/BSON document

## Importing DB
Lets get some example data from media.mongodb.org/zips.json


Now lets create a database called test with a collection called zips containing the data we just retrieved
```bash
mongoimport --db test --collection zips --drop --file zips.json
```

## CRUD Operations

### Read Operations
In Mongo:
```
 db.collection.find()
```
Equivalent to SQL select statement

### Write Operations
