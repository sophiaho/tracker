defmodule TrackerWeb.PageController do
  use TrackerWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def list(conn, _params) do
    tasks = Tracker.Issues.list_tasks()
    changeset = Tracker.Issues.change_task(%Tracker.Issues.Task{})
    render conn, "list.html", tasks: tasks, changeset: changeset
  end
end
