# Project

Launch locust from commandline to start testing app, use `locust`. The start your test API.

# Test parameters
- 500 users
- 8 users/sec ramp up
- 3 minute runtime

1. All applications running locally within a Windows environment
1. Locust will run in a single process
1. Only one test api will be running at a time, in addition to locust
1. End points are a single get method with returns a 200 status and a small json payload

# Possible issues

Locust can be distributed to additional processes to avoid issues with the python GIL. However, it does this using fork(), so it isn't supported on Windows. With that being said, both Java and Python tests will have the same test parameters, so I think this factor will not make a difference on the results.

# Results

## Flask API

#### Stats
![](resultimages/pythonstats.JPG)

#### Chart
![](resultimages/pythonchart.JPG)

#### Errors
![](resultimages/pythonfailures.JPG)

## Java API

#### Stats
![](resultimages/javastats.jpg)

#### Chart
![](resultimages/javachart.jpg)

#### Errors
![](resultimages/javafailures.jpg)