output "lambda_version" {
  value = aws_lambda_function.greet_lambda.version
}

output "lambda_arn" {
  value = aws_lambda_function.greet_lambda.arn
}
