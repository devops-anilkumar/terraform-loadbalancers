module "alb-public" {
  source                    = "./vendor/modules/alb" # terrafile is going to download code from the respective branch of the repo and keep it local
   ALB_NAME                 = "robot-public-alb"
   ENV                      = var.ENV
   INTERNAL                 = false
 
  # VPC_CIDR                  = var.VPC_CIDR

}

module "alb-private" {
  source                    = "./vendor/modules/alb" # terrafile is going to download code from the respective branch of the repo and keep it local
   ALB_NAME                 = "robot-private-alb"
   ENV                      = var.ENV
   INTERNAL                 = true
 
  # VPC_CIDR                  = var.VPC_CIDR
  
}

#THIS ALWAYS GOES WITH THE MAIN BRANCH , TELL THE CODE TO PICK FROM INTENDED BRANCH
