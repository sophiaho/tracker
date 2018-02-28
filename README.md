# Tracker

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  * Install Node.js dependencies with `cd assets && npm install`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
=======
# tracker
A task tracker created using Phoenix and Elixir

# Design Details:
The task tracker has been improved to include managers and time stamps.
A new user is allowed to list themselves as a manager, in which case they will be able to add new employees and view the employee's tasks. 
They will have additional form fields allowing them to assign a task to a user via the employee's user id.

Each user also now has an additional feature of being able to track their tasks with timestamps. Alongside the old implementation
of being able to specify the length of time they spent on a task, they can now press the "Start Task" and "End Task" button.
