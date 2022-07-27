variable "location" {
  description = "Variável que indica onde os recursos serão criados"
  type = string
  default = "West Europe" #Valor padrão da variável
}

variable "account_tier" {
  description = "Tier da Storage Account na Azure"
  type = string
  default = "Standard"
  sensitive = true #visibilidade da variável
}
