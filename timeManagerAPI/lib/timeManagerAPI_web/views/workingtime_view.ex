defmodule TimeManagerAPIWeb.WorkingtimeView do
  use TimeManagerAPIWeb, :view
  alias TimeManagerAPIWeb.WorkingtimeView

  def render("index.json", %{workingtimes: workingtimes}) do
    %{data: render_many(workingtimes, WorkingtimeView, "workingtime.json")}
  end

  def render("show.json", %{workingtime: workingtime}) do
    %{data: render_one(workingtime, WorkingtimeView, "workingtime.json")}
  end

  def render("workingtime.json", %{workingtime: workingtime}) do
    %{id: workingtime.id,
      start: workingtime.start,
      end: workingtime.end,
      userID: workingtime.user_id}
  end
end
