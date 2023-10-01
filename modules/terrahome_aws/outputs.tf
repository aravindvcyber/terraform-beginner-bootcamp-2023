output "bucket_name" {
  value = module.home_arcanum_hosting.bucket_name
}

output "website_endpoint" {
  value = module.home_arcanum_hosting.website_endpoint
}

output "cloudfront_url" {
  value = module.home_arcanum_hosting.domain_name
}