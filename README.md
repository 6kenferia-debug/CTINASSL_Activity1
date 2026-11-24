# Lab Activity 1: Discussion

## General Changes

I updated the newsfeed with the requested posts and profile pictures. The post
card displays each user's profile image and has Like and Comment buttons.
The like number is shown beside the Like button. and each post has a profile beside the write a comment to distinguish whose account it is currently using.

Enhancement 1: Use widget for the area of images. 
Enhancement 2: Use or change avatar for user profile image. 
Enhancement 3: Change the like and comment icon button into widget based. [you can disregard the reaction just number of likes]

## Discussion:

I used Flutter's `Image` widget to show a post image. Each post can have its own
image path, such as `assets/images/food_date.jpg`. The `hasImages` value tells
the card whether to show the image. If it is true, the card shows the image
from its path. If it is false or not set, no image is shown. This lets the
newsfeed display posts have images or not.
