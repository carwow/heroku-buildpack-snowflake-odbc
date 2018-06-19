heroku-buildpack-snowflake-odbc
===

## Usage
This requires [heroku-buildpack-apt](https://github.com/heroku/heroku-buildpack-apt) to run before
it, with the following in the Aptfile:

```
unix-odbc
https://github.com/carwow/heroku-buildpack-snowflake-odbc/blob/master/snowflake-odbc.deb?raw=true
```
