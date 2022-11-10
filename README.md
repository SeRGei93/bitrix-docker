# Features

* Configure php version 7.x by .env file
* Mailhog for mail test
* Cron is enabled
* Xdebug is enabled
* Download `bitrixsetup` to install bitrix

# Installation

#### Step 1

* Create a project dir `mkdir bxproject && cd ./bxproject`
* Clone the repository to have docker separate

``` shell
 git clone https://github.com/SeRGei93/bitrix-docker.git bxdocker
``` 

* Go to repository `cd ./bxdocker`

#### Step 2

* Make `init.sh` executable `chmod +x init.sh`

#### Step 3

* Run init script `./init.sh`
* It will create .env for docker-compose and ask you to type some paths

```
//parent dir by default, because i prefer have docker separate from project

# Type the project path: *********
# Type the project name: *********
# Type the domain for project: *********
# Type the path to docker data: *********
# Type the log path: *********
# Download bitrix_setup.php? Y
# File is downloaded.
```

#### Step 4

* Check .env file and correct it if need
* In case you need cron put path to bitrix in `./images/php/cron.d/www`

#### Step 5

* Build the docker

```
docker-compose up --build -d
```

* Then you can open `http://localhost` and see php info

---

#### Step 6

* Install bitrix in public directory as you wish
