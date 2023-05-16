module "alb-public" {
  source                    = "./vendor/modules/alb" # terrafile is going to download code from the respective branch of the repo and keep it local
   ALB_NAME                 = "robot-public-alb"
   INTERNAL                 = false
   ENV                     = var.ENV
 
  # VPC_CIDR                  = var.VPC_CIDR

}

module "alb-private" {
  source                    = "./vendor/modules/alb" # terrafile is going to download code from the respective branch of the repo and keep it local
   ALB_NAME                 = "robot-private-alb"
   INTERNAL                 = true
   ENV                      = var.ENV
 
  # VPC_CIDR                  = var.VPC_CIDR
  
}

#THIS ALWAYS GOES WITH THE MAIN BRANCH , TELL THE CODE TO PICK FROM INTENDED BRANCH
