---
title: AWS Serverless Resume Site Challenge
tags: []
style: fill
color: primary
description: Bulding a simple serverless app on AWS
---



### Bootstraping Content

To keep it simple :), I took my resume I keep in Google Docs & exported it as an HTML site.  This will be the foundation of my simple resume site.

### Deployment pipeline

To help with the later CI process, I will be using [AWS CDK](https://docs.aws.amazon.com/cdk/latest/guide/getting_started.html).  The AWS CDK has proved very useful in professional projects & will simplify the AWS deployment process for this app.  I will be useing the python CDK flavor.

Following the CDK getting started guide (https://docs.aws.amazon.com/cdk/latest/guide/getting_started.html).

I'm on Mac, so I ..

```brew install node```

```npm install -g aws-cdk```

I created a user with admin access (can restrict this later) in AWS console & setup my local AWS credentials config & region.  I will be using us-east-1 for this config as I know I want to use cloudfront to host my static files.  Cloudfront is only avialable in us-east-1, so using us-east-1 allows me to use a single cloudformation / CDK stack.

```cdk init app --language python```

```python -m pip install -r requirements.txt```

### The solution

All the code for the solution can be found at https://github.com/nathanamorin/resume-challenge

I will be adding posts detialing the different components of CDK & how using CDK can simplify creation of resources in AWS.