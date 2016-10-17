class TimeOfDay

  def current_time
    t = Time.now
    time = t.strftime("%I:%M %p")
    return "#{time}, but you're going to have to refresh the page to get the new current time."
  end
end
