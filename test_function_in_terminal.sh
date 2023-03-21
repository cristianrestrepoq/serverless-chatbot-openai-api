# Define the json for feed the function from the API Gateway as a system variable
# I used for test the word: Sadness
export PAYLOAD=$(echo '{"word": "Sadness"}' | base64)

# Invoce lambda 
aws lambda invoke --function-name [FUNTION NAME] --payload $PAYLOAD response.json --profile [PROFILE AWS CLI HERE]

# Print the response
cat response.json && echo