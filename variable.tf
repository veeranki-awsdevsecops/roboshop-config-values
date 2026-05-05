variable "token" {}

variable "secret-mounts" {
  default = {
    roboshop-dev = {
      description = "RoboShop Project Dev Secrets"
    }
    roboshop-infra = {
      description = "RoboShop Project Infra Secrets"
    }
  }

}

variable "secrets" {
  default = {
    cart = {
      secret_mount = "roboshop-dev"
      kv = {
        REDIS_HOST     = "redis-dev.veerankitek.online",
        CATALOGUE_HOST = "catalogue-dev.veerankitek.online",
        CATALOGUE_PORT = 8080
      }
    }

    frontend = {
      secret_mount = "roboshop-dev"
      kv = {
        CATALOGUE_URL  = "http://catalogue-dev.veerankitek.online:8080/"
        USER_URL       = "http://user-dev.veerankitek.online:8080/"
        CART_URL       = "http://cart-dev.veerankitek.online:8080/"
        SHIPPING_URL   = "http://shipping-dev.veerankitek.online:8080/"
        PAYMENT_URL    = "http://payment-dev.veerankitek.online:8080/"
        CATALOGUE_HOST = "catalogue-dev.veerankitek.online"
        CATALOGUE_PORT = "8080"
        USER_HOST      = "user-dev.veerankitek.online"
        USER_PORT      = "8080"
        CART_HOST      = "cart-dev.veerankitek.online"
        CART_PORT      = "8080"
        SHIPPING_HOST  = "shipping-dev.veerankitek.online"
        SHIPPING_PORT  = "8080"
        PAYMENT_HOST   = "payment-dev.veerankitek.online"
        PAYMENT_PORT   = "8080"
      }
    }

    catalogue = {
      secret_mount = "roboshop-dev"
      kv = {
        MONGO       = "true"
        MONGO_URL   = "mongodb://mongodb-dev.veerankitek.online:27017/catalogue"
        DB_TYPE     = "mongo"
        APP_GIT_URL = "https://github.com/roboshop-devops-project-v3/catalogue"
        DB_HOST     = "mongodb-dev.veerankitek.online"
        SCHEMA_FILE = "db/master-data.js"
      }
    }

    user = {
      secret_mount = "roboshop-dev"
      kv = {
        MONGO     = "true",
        REDIS_URL = "redis://redis-dev.veerankitek.online:6379",
        MONGO_URL = "mongodb://mongodb-dev.veerankitek.online:27017/users"
      }
    }

    mysql = {
      secret_mount = "roboshop-dev"
      kv = {
        ROOT_PASSWORD = "RoboShop@1"
      }
    }

    rabbitmq = {
      secret_mount = "roboshop-dev"
      kv = {
        APP_USER     = "roboshop",
        APP_PASSWORD = "roboshop123"
      }
    }

    shipping = {
      secret_mount = "roboshop-dev"
      kv = {
        CART_ENDPOINT = "cart-dev.veerankitek.online:8080"
        DB_HOST       = "mysql-dev.veerankitek.online"
        DB_USER       = "root"
        DB_PASS       = "RoboShop@1"
        DB_TYPE       = "mysql"
        APP_GIT_URL   = "https://github.com/roboshop-devops-project-v3/shipping"
      }
    }

    payment = {
      secret_mount = "roboshop-dev"
      kv = {
        CART_HOST = "cart-dev.veerankitek.online",
        CART_PORT = 8080,
        USER_HOST = "user-dev.veerankitek.online",
        USER_PORT = 8080,
        AMQP_HOST = "rabbitmq-dev.veerankitek.online",
        AMQP_USER = "roboshop",
        AMQP_PASS = "roboshop123"
      }
    }

    ssh = {
      secret_mount = "roboshop-infra"
      kv = {
        username = "ec2-user",
        password = "DevOps321"
      }
    }



  }
}