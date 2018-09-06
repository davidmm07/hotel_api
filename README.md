# hotel-api-container
A ruby on rails application within containers (db,web)

## Requirements

* docker
* docker-compose

## For init container

```
docker-compose up -d && docker-compose run web rake db:create
```

## Add permisions
```
sudo chown -R $USER:$USER .
```


## If you want execute commands of Ruby on Rails
```
docker exec -it name_container /bin/bash
```
### If you add or change any alteration in the database model

```
docker-compose run web rake db:migrate
```
### If you add example data

```
docker-compose run web rake db:seed
```
