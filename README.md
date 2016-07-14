
# Getting started with Elixir and ecosystem

## Motivation
  

## Purpose
 
 The purpose of this article is sharing with other people my experience developing an application with Elixir.  A few months ago I just did
 some researches in coding with Erlang and to be honest I really enjoyed it writing the *[article](https://github.com/wesovi/js-freeze_vs_seal)*, but this time  I will go for a more real application which could provide me with some better feedback
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

 **Project directories structure** 
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
   
   +    **Maru**: Maru is a REST-like API micro-framework for elixir inspired by grape. There are other frameworks but I just decided trying this one after reading good feedback for elixir developers.
   
   +    **Ecto**: It allows us to do the database connections and running the queries. So far we will only care about connecting to a Postgres database but
        there are other projects which are very handy that helps us to work with Mongo database too. 
    
   -    **Postgrex**: PostgreSql database driver for Elixir.
   
   -    **Plug**: It's a specification and conveniences for composable modules between web applications.
   
   -    **Cors_Plug**: It's a Elixir Plug to add CORS. So far we would not need this dependcy but in the future we will implement another project that will consume our services.
   
 
 **Configuration**

 **Database Schema**
 
   In order to create our tables in the postgresql database we define our script in the following path: */priv/repo/structure.sql*:
   ```
   CREATE SEQUENCE tracks_id_seq;
           
   CREATE TABLE tracks (
    id bigint NOT NULL DEFAULT nextval('tracks_id_seq'),
    title   VARCHAR,
    playlist_id bigint,
    inserted_at timestamp without time zone
   );
           
   ALTER SEQUENCE tracks_id_seq OWNED BY tracks.id;
   
   CREATE SEQUENCE playlists_id_seq;
           
   CREATE TABLE playlists (
    id bigint NOT NULL DEFAULT nextval('playlists_id_seq'),
    name VARCHAR,
    link VARCHAR,
    inserted_at timestamp without time zone
   );
           
   ALTER SEQUENCE playlists_id_seq OWNED BY playlists.id;
        
   ALTER TABLE ONLY tracks
    ADD CONSTRAINT tracks PRIMARY KEY (id);
           
   ALTER TABLE ONLY playlists
    ADD CONSTRAINT playlists PRIMARY KEY (id);
           
   ALTER TABLE tracks
    ADD CONSTRAINT playlist_id_fk FOREIGN KEY (id)
    REFERENCES playlists (id) MATCH SIMPLE
    ON UPDATE CASCADE ON DELETE CASCADE;     
        
   ```   
        
   Now  we can run the below command that will create the tables into the database.
   
   ```
   mix ecto.load
   ```
   
   
   Run command 
        
        mix ecto.gen.migration create_trasks
        
   Then a new file will be created in /priv/repo/migrations
   Now we can write some content to the new file.  
   
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