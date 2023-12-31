terraform {
  required_providers {
    terratowns = {
      source = "local.providers/local/terratowns"
      version = "1.0.0"
    }
  }
  #backend "remote" {
  #  hostname = "app.terraform.io"
  #  organization = "ExamPro"

  #  workspaces {
  #    name = "terra-house-1"
  #  }
  #}
  # backend "remote" {
  # organization = "ExploringServerless"
  #  workspaces {
  #    name = "terraform-house"
  #  }
  # }
  backend "local" {

  }
  # cloud {
  #   organization = "ExploringServerless"
  #   workspaces {
  #     name = "terraform-house"
  #   }
  # }
}

provider "terratowns" {
  endpoint = var.terratowns_endpoint
  user_uuid = var.teacherseat_user_uuid
  token = var.terratowns_access_token
}

module "home_arcanum_hosting" {
  source = "./modules/terrahome_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.arcanum.public_path
  content_version = var.arcanum.content_version
}

# resource "terratowns_home" "home" {
#   name = "How to play Arcanum in 2023!"
#   description = <<DESCRIPTION
# Arcanum is a game from 2001 that shipped with alot of bugs.
# Modders have removed all the originals making this game really fun
# to play (despite that old look graphics). This is my guide that will
# show you how to play arcanum without spoiling the plot.
# DESCRIPTION
#   domain_name = module.home_arcanum_hosting.domain_name
#   town = "serenity-ville"
#   content_version = var.arcanum.content_version
# }

# module "home_payday_hosting" {
#   source = "./modules/terrahome_aws"
#   user_uuid = var.teacherseat_user_uuid
#   public_path = var.payday.public_path
#   content_version = var.payday.content_version
# }

# resource "terratowns_home" "home_payday" {
#   name = "Making your Payday Bar"
#   description = <<DESCRIPTION
# Since I really like Payday candy bars but they cost so much to import
# into Canada, I decided I would see how I could my own Paydays bars,
# and if they are most cost effective.
# DESCRIPTION
#   domain_name = module.home_payday_hosting.domain_name
#   town = "harmony-hills"
#   content_version = var.payday.content_version
# }

module "home_classic_bread_omelette_hosting" {
  source = "./modules/terrahome_aws"
  user_uuid = var.teacherseat_user_uuid
  public_path = var.omelette.public_path
  content_version = var.omelette.content_version
}

resource "terratowns_home" "home_omelette" {
  name = "Making Classic Bread Omelette"
  description = <<DESCRIPTION
The Classic Bread Omelette is a simple and satisfying breakfast or snack option that combines the richness of an omelette with the delightful crunch of toasted bread. In this recipe, two slices of your preferred bread are carefully prepared, allowing you to choose whether to keep the crust or go for a crustless option. The bread is then lightly toasted to a beautiful golden brown, enhancing its flavor and texture.
DESCRIPTION
  domain_name = module.home_classic_bread_omelette_hosting.domain_name
  town = "cooker-cove"
  content_version = var.omelette.content_version
}