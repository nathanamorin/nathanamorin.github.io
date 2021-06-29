---
title: AWS Serverless Resume Site Challenge
tags: []
style: fill
color: primary
description: Bulding a simple serverless app on AWS
---

### The Challenge

The challenge is to create a resume website with a view counter using cloud best practice.  My goal is to explore & demonstrate how to simple it can be to deploy a fully customizable webapp into AWS using serverless components & the AWS CDK.

### The solution

All the code for the solution can be found at [nathanamorin/resume-challenge](https://github.com/nathanamorin/resume-challenge)

I will be adding posts detailing the different components of CDK & how using CDK can simplify creation of resources in AWS.

The final website can be found at [resume.nathanmorin.com](https://resume.nathanmorin.com/)

The archetecture uses a serverless pattern as most of the site is static content with small API to track views.  Serverless also allows hosting the side with near zero cost.

Cloudfront is uses to front both S3 which holds the static site files as well as the API Gateway / Lambda uses to serve the view count API.

The view count API has a single method ```/count```, which both increments the current view count & returns the incremented count.

The frontend is a simple static HTML page with a single javascript function to make a reuqest to the ```/count``` api & update the DOM element with the rerieved count.

![Resume Site Diagram](/assets/img/resume-site-diagram.jpg)

### Bootstraping Content

To keep it simple :), I exported the resume I keep in Google Docs as a HTML site.  This will be the foundation of the frontend my simple resume site.

### Deployment pipeline

To help with the later CI process, I used [AWS CDK](https://docs.aws.amazon.com/cdk/latest/guide/getting_started.html).  The AWS CDK has proved very useful in my professional projects & will simplify the AWS deployment process for this app.  I used the python CDK flavor.

Following the [CDK getting started guide](https://docs.aws.amazon.com/cdk/latest/guide/getting_started.html).

I'm on Mac, so I ..

```brew install node```

```npm install -g aws-cdk```

I created a user with admin access to start (after finding what permissions are required, this will be updated to follow least privilage) in AWS console & setup my local AWS credentials config & region.  I will be using us-east-1 for this config as I know I want to use cloudfront to host my static files.  Cloudfront is only avialable in us-east-1, so using us-east-1 allows me to use a single cloudformation / CDK stack.

```cdk init app --language python```

```python -m pip install -r requirements.txt```

This sets up the basic infra deploy environment for the app.  More posts will follow diving into details on each infra component defined in the CDK as well as the Github Actions CI/CD automation.

+ [CDK Intro](/articles/cdk-intro)
+ (coming soon) Connecting components with the CDK
+ (coming soon) Lambda testing with Localstack
+ (coming soon) E2E deploying a CDK app with Github Actions

