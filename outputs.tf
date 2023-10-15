# output "arcanum_bucket_name" {
#   description = "Bucket name for our static website hosting"
#   value = module.home_arcanum_hosting.bucket_name
# }

# output "arcanum_s3_website_endpoint" {
#   description = "S3 Static Website hosting endpoint"
#   value = module.home_arcanum_hosting.website_endpoint
# }

# output "arcanum_cloudfront_url" {
#   description = "The CloudFront Distribution Domain Name"
#   value = module.home_arcanum_hosting.domain_name
# }

# output "payday_bucket_name" {
#   description = "Bucket name for our static website hosting"
#   value = module.home_payday_hosting.bucket_name
# }

# output "payday_s3_website_endpoint" {
#   description = "S3 Static Website hosting endpoint"
#   value = module.home_payday_hosting.website_endpoint
# }

# output "payday_cloudfront_url" {
#   description = "The CloudFront Distribution Domain Name"
#   value = module.home_payday_hosting.domain_name
# }


output "omelette_bucket_name" {
  description = "Bucket name for our static website hosting"
  value = module.home_classic_bread_omelette_hosting.bucket_name
}

output "omelette_s3_website_endpoint" {
  description = "S3 Static Website hosting endpoint"
  value = module.home_classic_bread_omelette_hosting.website_endpoint
}

output "omelette_cloudfront_url" {
  description = "The CloudFront Distribution Domain Name"
  value = module.home_classic_bread_omelette_hosting.domain_name
}