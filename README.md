
# Getting started with Elixir and ecosystem

## Motivation
  

## Purpose
 
 The purpose of this article is sharing with other geeks my experience developing an application with Elixir.  A few months ago I just did
 some researches coding with Erlang and to be honest I really enjoyed it writing the *[article](https://github.com/wesovi/js-freeze_vs_seal)*, but this time  I will go for a more real application which could provide me with some better feedback
 about the functional programming language.

 After reading this post you will have received some tops on how to write and run your Rest application and then I invite yourself to 
 do some improvement into my code by pull requests or even free to fork it and implement new functionality.
 
 Below a description about the application we will be coding.
  
 **The Music Rooms Site**
  
   A site that will available channels which will be associated to a playlist in Spotify. To access into a channel the user will introduce his/her email 
   and will be required to choice a channel.
   
   Once the member is connected to the channel the system will display the list of users connected to this channel and the tracks in the playlist.
   
   Any member in the channel will be able to add new tracks to the playlist.
 
## Backend - Elixir Rest Api

 **Project structure** 
   * _build: This directory contains only compiled code and libraries.
   * config: Configuration for our application.
   * deps: Dependencies used by this application. 
   * lib: The code of our project.
   * test: Unit testing for our application
   * mix.exs: In this file we define the dependencies and the application modules.
   * 'priv/repo/migrations': Database schema creation used by Ecto.


 **Dependencies**

   The file mix.exs contains all the dependencies used by this application and we can download them by running the below command
        
        mix deps.get
        
   After running this command,  dependencies will be stored into the deps directory.
   To implement this application we will be making use of the belows:
   
   -    **Maru**: Maru is a REST-like API micro-framework for elixir inspired by grape. There are other frameworks but I just decided trying this one after reading good feedback for elixir developers.
   
   -    **Ecto**: It allows us to do the database connections and running the queries. So far we will only care about connecting to a Postgres database but
        there are other projects which are very handy that helps us to work with Mongo database too. 
    
   -    **Postgrex**: PostgreSql database driver for Elixir.
   
   -    **Plug**: It's a specification and conveniences for composable modules between web applications.
   
   -    **Cors_Plug**: It's a Elixir Plug to add CORS.
   
 
 **Configuration**

 **Database Schema**
   
 **Rest API**
   
 **Routers**
   
 **Running the application**
   
 **Unit Testing**         
            
 **Dockerizing**
   
 **Deploying onto the cloud**
            
## Frontend - React & Redux

    
    
## Running the project on containers 

## Writing acceptance tests

## Writing stress tests

## Deploying onto the cloud

## Code

## Links of interests