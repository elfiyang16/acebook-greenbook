# AceBook - greenbook Ltd.

<img width="1427" alt="Screenshot 2019-12-13 at 07 43 51" src="https://user-images.githubusercontent.com/33905131/70780128-a3d4bd80-1d7c-11ea-9017-af22aa718318.png">

It’s a clone of a <ahem> well known social media platform. :laughing:


## Quickstart
### Installation
First, clone this repository https://github.com/elfiyang16/acebook-greenbook. Then:

```
bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> bin/rails server # Start the server at localhost:3000
```
### Heroku
Sign up to Heroku, once you have an Heroku account you can run below commands:

```
brew install heroku
```

```
heroku create
git push heroku master
heroku rake db:migrate
heroku open
```

## Usages
### Signup
![acebk_sign_up](https://user-images.githubusercontent.com/33905131/70789088-45164080-1d8a-11ea-8c9c-c596b3ab11d8.gif)

### Login
![acebk_sign_in](https://user-images.githubusercontent.com/33905131/70790003-05e8ef00-1d8c-11ea-96e8-2d8a5c161b9e.gif)

### Create Post
![acebk_create_new_post](https://user-images.githubusercontent.com/33905131/70790233-945d7080-1d8c-11ea-8590-cd2d77905ce3.gif)

### Edit Post
![acebk_edit_post](https://user-images.githubusercontent.com/33905131/70790468-0a61d780-1d8d-11ea-87c1-c476d28d6d3d.gif)

### Own Post Edit limit
![time_ago_in_words](https://user-images.githubusercontent.com/33905131/70788802-98d45a00-1d89-11ea-866b-a8c5bda146e9.gif)


## Requirements & cards implemented (and in Production):
```
REQUIRED: Add CI/CD [L] (Part 1: Travis CI)

REQUIRED: AceBook should run on Heroku or AWS [MEDIUM]

REQUIRED: Add CI/CD [L] (Part 2: CD with Heroku)

REQUIRED: Add Test Coverage, Code Quality, and Code Style checks [s]

User is redirected to their own wall when they log in [M]

Develop basic styling for Acebook.

Posts can have line breaks in them[M] -- tests pass

Setup blog [S] and make first post.

Blog post about Travis CI [s]

Users are recognised by a username [S]

Restyle posts [M]

Fix bug: All posts say they're made by the current signed in user [S]

Posts appear with newest post first [M] - waiting for tests

Users can update their own posts [L]

Restyle the sign up page [M]

Restyle nav bar [M]

Users cant edit other people's posts on the newsfeed (test) [S]

Posts show the date they were posted - waiting for tests

User can create new post [L] - waiting for tests

User can View new post [L](tests)

Users can sign up [L] -- awaiting tests

Users can sign in [M] -- awaiting tests

Users can see their own posts [L]

```

##Processes observed

### standup
Daily stand-ups were held at 10:00hrs at the whiteboard (Scrummaster role was rotated daily & pairs on a per task/sprint basis.)
![IMG_0147](https://user-images.githubusercontent.com/33905131/70798642-6897b600-1d9f-11ea-9497-d5b63f338467.jpg)

### Work breakdown
Old school workbreakdown was done using post-stick notes.
![IMG_0112](https://user-images.githubusercontent.com/33905131/70786780-4c871b00-1d85-11ea-835f-6e02d3c10276.jpg)

### estimation
T-shirt sizing was used to our task estimation and reviewed post-sprint for effectiveness.
![IMG_0117](https://user-images.githubusercontent.com/33905131/70786901-8c4e0280-1d85-11ea-8519-19d2e5c40259.jpg)
![IMG_0124](https://user-images.githubusercontent.com/33905131/70786993-b6072980-1d85-11ea-8dca-0e792462ead3.jpg)

### reviews
Reviews were led by the day's Scrum-master post-sprint at the whiteboard.
![IMG_0125](https://user-images.githubusercontent.com/33905131/70787075-ddf68d00-1d85-11ea-8085-45d0cfe93807.jpg)
![IMG_0142](https://user-images.githubusercontent.com/33905131/70787105-f070c680-1d85-11ea-86b0-09ed5b7982a3.jpg)

### Demo
Demos were scheduled and performed to the identified Product owners (coaches).
![IMG_0147](https://user-images.githubusercontent.com/33905131/70799132-b6f98480-1da0-11ea-9941-14fa81ecd234.jpg)

## Collaborators:
The bestest hack-team in the land :+1
| <a href="http://fvcproductions.com" target="_blank">**Elfi**</a> | <a href="http://fvcproductions.com" target="_blank">**Ben**</a> | <a href="http://fvcproductions.com" target="_blank">**Emma**</a> | <a href="http://fvcproductions.com" target="_blank">**Robert**</a> | <a href="http://fvcproductions.com" target="_blank">**Ali**</a> | <a href="http://fvcproductions.com" target="_blank">**Kehinde**</a> |
| :---: |:---:| :---:| :---:| :---:| :---:|
| [![Elfi](https://avatars3.githubusercontent.com/u/29664811?s=400&v=4)](http://fvcproductions.com)    | [![Ben](https://avatars3.githubusercontent.com/u/53790237?s=400&v=4)](http://fvcproductions.com) | [![Emma](https://avatars2.githubusercontent.com/u/47917612?s=400&v=4)](http://fvcproductions.com)  | [![Robert](https://avatars2.githubusercontent.com/u/42300628?s=400&v=4)](http://fvcproductions.com)  | [![Ali](https://avatars1.githubusercontent.com/u/54022123?s=400&v=4)](http://fvcproductions.com)  | [![Kehinde](https://avatars3.githubusercontent.com/u/33905131?s=460&v=4)](http://fvcproductions.com)  |
| <a href="https://github.com/elfiyang16" target="_blank">`github.com/elfiyang16`</a> | <a href="https://github.com/Ben230" target="_blank">`github.com/Ben230`</a> | <a href="https://github.com/emmavanoss" target="_blank">`github.com/emmavanoss`</a> | <a href="https://github.com/robertwoolley99" target="_blank">`github.com/robertwoolley99`</a> | <a href="https://github.com/ali-phipps" target="_blank">`github.com/ali-phipps`</a> | <a href="https://github.com/KOlofinmoyin" target="_blank">`github.com/KOlofinmoyin`</a>

### Collaboration:
1. Our card wall is here: https://trello.com/invite/b/26fYLxYl/499918c770f541d5f22c05bff8186244/greenboook-group
2. Read blogposts of our adventures as a team at: https://medium.com/makers-greenbook
![acebk_blogposts](https://user-images.githubusercontent.com/33905131/70790663-75aba980-1d8d-11ea-8903-76831eeb46ef.gif)
