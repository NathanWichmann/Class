# Unit 14: Model, View, Controller 
[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://cryptic-temple-86614.herokuapp.com/)

This repository (Class) is an educational homework assignment from the CARL-OTT-FSF-PT-02-20121-U-C course. It was designed to help students become more familiar with the Model, View, Controller concept of web development. This creates a separation of concerns, where each can be manipulated away from the other without any interference and allows for ease of use. Some would debate otherwise, however, being a new developer, we must start our journey somewhere. 
Class Techbook, allows people from the Tech industry to connect with each other in a blog format, with just a little class. The user interface is simple, yet elegant and shows just a little suffistication and class. 

## Table of Contents 
  - [Techbook](#techbook)
  - [Table of Contents](#table-of-contents)
  - [Description](#description)
  - [Installation](#installation)
  - [Usage](#usage)
  - [Credits](#credits)
  - [License](#lisence)
 ## Description 
Class Techbook allows users to easily create a post with a title and body. The examples given in the seeded data are directly from a blog such as wired and another tech blog. This blog allows users to comment on what other users have posted. There are no limitations on the number of comments per user or restrictions on language used. If this were going into production, there would be a terms of use section added and checkbox that would need to be checked for agreement of usage before being able to sign up. There was no time for this to be added, however, might be something to investigate in the future. The user must be logged in, to see the single page comments and add a comment to the post. If they do not have an account with their name and email, they are unable to access the comments page. This adds a layer of security as each member must be authorized to use the page. However, the user is not authenticated, their email and name are not verified to ensure they are the person using the information. Authentication is not needed at this level but would be needed for a live deployed application for a company.
The m-v-c model was exceedingly difficult to understand and follow at first and took some time to become familiar with. Like with anything, repetition is the key to success. Plus, the project used the same model, this created a 2-week period of learning to understand the concept.
The real problem came with handlebars. This application is amazingly simple to understand when you read the documentation. However, once the implementation began, coupled with the newly learned m-v-c model, things quickly began to go off the rails. Handlebars is very touchy and must be done with the proper notation. If the right word is uses but not capitalized, the information is not rendered, and one can spend hours trying to figure out why. I was stumped for a few days as to why the information was not being rendered. It was not until I received help from the instructor that I realized that one of the handlebars variables was post.tile, instead of post.title. The entire page did not render because of this typo. Handlebars is a great tool, but easily becomes a nightmare with a simple typo as there are no consol.logs or errors to follow. 



## Installation
Class Techbook uses node.js, sequelize, mySQL, express-handlebars, withAuth and bcrypt. All these technologies are in the package-json and can be added through a npm install.
after the Open in Integrated Terminal is run on the server.js. All seeds have been generated to give the user a better understanding as to how the application works.
 

## Usage 
This is a simple blog with options to make a post, comment on other user’s post's and delete a post. There is not restriction on who can delete a post. This would be something that would need to be added in the future if it were to usable application.
## Credits 
<a href="https://github.com/NathanWichmann/">GitHub Link For Nathan Wichmann</a>
Tutor: Joey Rodregez 
Instructor: Adam 
Teachers Assistants: BEN & AIDEN


## Lisence 
MIT License

Copyright (c) [2021] [Techbook]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
