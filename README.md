# OOP_DB_batch1158_20230212

## Run Locally

Clone the project

```bash
  git clone https://github.com/gabrielassanuma/OOP_DB_batch1241_15052023
```

Go to the project directory

```bash
  cd OOP_DB_batch1241_15052023/challenge
```

Open on vs-code

```bash
  code .
```

Run the program
```bash
  ruby challenge/lib/app.rb 
```

Create DB

```bash
  rake db:create
```

## Instructions
1 - Our first step should be to create a migration file to create the "Games" table, which should have 3 columns: name, genre, and address.
2 - Now that our database is created, we need to write our first objects into the database. Use faker to create 5 games in our DB.
3 - Now let's move on to the logical part. For our application, we will need to create the following actions:
- Show all games
- Show a game
- Add a new game
- Update a game
- Destroy a game
- Finish the program
4 - Let's create our first action: "Show all games."
- Add this action to your config/router.rb.
- Add the index function to your controller.
- Create a function in your view to display all games to the user.
5 - Moving on to the second action: "Show a game."
- Follow the same logic: router -> controller -> view.
6 - Time to play with the "C" of CRUD; let's create an action to add a new game.
- Again, follow the router -> controller -> view pattern.
7 - Let's create our update function. Can you guess how to implement it?
- Same pattern: router -> controller -> view.
8 - Time to implement our last CRUD action: delete.
- You know the way...
9 - Our application is working really well so far! Now it's time to implement a new feature. We want to allow the user to mark a game as played.
- Let's modify our DB by adding a new column named played to the "Games" table. Set it to be a boolean, with a default value of false.
- One more time: router -> controller -> view.
