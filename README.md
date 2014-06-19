# API in folders

This is a gem that lets you whip up a quick "API" (not a real one, mind you; just some dummy endpoints, i.e., to build a prototype against) using folder structure.

## How you use it

First set up a directory structure that maps to the API endpoints you want to have. For example:

    api/
      users/
      tasks/

Then create files called 'get.json' or 'post.json' wherever you want to support GET or POST requests. For example:

    api/
      users/
        1/
          get.json
        get.json
      tasks/
        1/
          get.json
          post.json
        get.json
        post.json

In the example above, the following endpoints would be supported:

    GET /users    # List users
    GET /users/1  # Show user 1
    GET /tasks    # List tasks
    POST /tasks   # Create a task
    GET /tasks/1  # Show task 1
    POST /tasks/1 # Update task 1

Once you've done that, navigate to the root of this directory tree you've just made and run:

    apiif

Now, baby you've got a stew going.
