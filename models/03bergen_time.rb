class BergenTime

  def current_time
    t = Time.now.getlocal('+06:00')
    time = t.strftime("%I:%M %p")
    return "The current time in Bergen op Zoom is #{time}. Do you even know where that is?!"
  end
end
