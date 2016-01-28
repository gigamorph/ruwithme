# Patient Traking

Prototype for 2016 Yale Health Hackathon.

## Developer Notes

Create MySQL database, e.g.
```
> create database family_development;
> grant all privileges on family_development.* to 'username'@'localhost';
```

Copy `config/database.yml.example` to `config/database.yml` and edit it.

```
$ bundle install
$ rake db:migrate
$ rails server
```
