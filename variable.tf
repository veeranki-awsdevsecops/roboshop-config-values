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
        REDIS_HOST     = "redis-dev.rdevopsb85.online",
        CATALOGUE_HOST = "catalogue-dev.rdevopsb85.online",
        CATALOGUE_PORT = 8080
      }
    }

    frontend = {
      secret_mount = "roboshop-dev"
      kv = {
        CATALOGUE_URL  = "http://catalogue-dev.rdevopsb85.online:8080/"
        USER_URL       = "http://user-dev.rdevopsb85.online:8080/"
        CART_URL       = "http://cart-dev.rdevopsb85.online:8080/"
        SHIPPING_URL   = "http://shipping-dev.rdevopsb85.online:8080/"
        PAYMENT_URL    = "http://payment-dev.rdevopsb85.online:8080/"
        CATALOGUE_HOST = "catalogue-dev.rdevopsb85.online"
        CATALOGUE_PORT = "8080"
        USER_HOST      = "user-dev.rdevopsb85.online"
        USER_PORT      = "8080"
        CART_HOST      = "cart-dev.rdevopsb85.online"
        CART_PORT      = "8080"
        SHIPPING_HOST  = "shipping-dev.rdevopsb85.online"
        SHIPPING_PORT  = "8080"
        PAYMENT_HOST   = "payment-dev.rdevopsb85.online"
        PAYMENT_PORT   = "8080"
      }
    }



  }
}