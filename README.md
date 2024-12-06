# Run Informix DB in a Docker container

NOTE: These instructions are taken from this website: https://www.ibm.com/docs/en/informix-servers/14.10?topic=docker-creating-informix-container

```sh
docker pull icr.io/informix/informix-developer-database:latest

docker run -it --name ifx -h ifx --privileged -e LICENSE=accept \
    -p 9088:9088 -p 9089:9089 -p 27017:27017 -p 27018:27018 -p 27883:27883 \
    icr.io/informix/informix-developer-database:latest
```

Username and password is provided in the console output of the `docker run` command and looks like this:

```log
Informix container login information:
    user:            informix
    password:        in4mix
```

[Liquibase/Informix tutorial available here](https://contribute.liquibase.com/extensions-integrations/directory/database-tutorials/informix/).

Default URL looks like this:

`url: jdbc:informix-sqli://<host>:9088/<dbname>`

Examples:

* `url: jdbc:informix-sqli://localhost:9088/sysmaster`
* `url: jdbc:informix-sqli://localhost:9088/adeelDB`
* `jdbc:informix-sqli://localhost:9088/sysmaster:INFORMIXSERVER=informix`

