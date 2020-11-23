exports.handler = async (event) => {
    // TODO implement
    const response = {
        statusCode: 200,
        body: JSON.stringify('Lambda function triggered using Terraform!!!'),
    };
    return response;
};
