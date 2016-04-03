# Mongo DB Cheatsheet

## Installing

1. Download Mongo
2. Mongo needs default data folder `/data/db`
3. Start MongoDB: `mongod`
4. Start Mongo shell: `mongo`

### Helpful configuration
* `mongod --config /etc/mongod.conf`
* Journalling allocates 3GB for write ahead logging to guarentee write operations
  - not recommended to turn off, especially in prod
  - if you want to turn off use `nojournal=true` in config
* Ruby integration
  ```ruby
  gem update -system
  gem install mongo
  gem install bson_ext
  ```
  - make sure to `require mongo`

## Nomenclature
* Collections - similar to a table in relational db
  - Collection of documents
* Documents - similar to rows in relational db
  - JSON/BSON document

## Importing DB
```
mongoimport --db test --collection zips --drop --file zips.json
```
This is using the example db from media.mongodb.org/zips,json
