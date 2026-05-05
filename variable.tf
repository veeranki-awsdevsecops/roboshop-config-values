variable "token" {}

variable "secret-mounts" {
  default = {
    roboshop-dev = {
      description = "RoboShop Project Dev Secrets"
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



  }
}