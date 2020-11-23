# data resource to invole lamda function created
data "aws_lambda_invocation" "lambda_invoke" {
  function_name = aws_lambda_function.lambda_function.function_name

  input = <<JSON
{
}
JSON
}

# output the result of triggered lambda
output "result_entry" {
  value = jsondecode(data.aws_lambda_invocation.lambda_invoke.result)
}
