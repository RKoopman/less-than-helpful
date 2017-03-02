require 'sinatra/base'


class Less_Than_Helpful < Sinatra::Base

  get '/' do
    erb :question_page
  end

  get '/results' do
    num = rand(1..10)
    if num == 1 # time
      result = TimeOfDay.new
      @final_phrase = "The time is currently:"
      @final_result = result.current_time
    elsif num == 2 # piglatin
      result = PigLatinizer.new
      @final_phrase = "To Piglatinize, or to not Piglantinize; how is that even a question?"
      @final_result = result.to_pig_latin(params["user_phrase"])
    elsif num == 3 # Bergen op Zoom time
      result = BergenTime.new
      @final_result = result.current_time
    elsif num == 4 # image of corvette
      @final_phrase = "Here's the picture of the '53 Corvette you asked for. If you don't mind my two cents; I think it'd be a worthwhile investment."
      @test = "CorvImage"
      # @final_result = "CorImage"
    elsif num == 5 # image of BMW-507
      @final_phrase = "Last time a BMW 507 Roadster was sold, it was for about $1 million. VERY sound investment. Do it."
      @test = "BMWImage"
      # @final_result = "BMWImage"
    elsif num == 6 # random motivational quote
      index = rand(0..4)
      @final_phrase = "Here's a quote that's helped me through some tough times:"
      quotes_ary = ["'Be like a duck. Calm on the surface, but always paddling like the dickens underneath.' -Michael Caine.",
                    "'Just keep going, it's really that simple.' -Any Cross-Country Coach",
                    "'Stop wishing, start doing.' -Friend's Facebook Status",
                    "'Don't limit your challenges... Challenge your limits.' -Poster on the Subway",
                    "'Anything you can do, I can do better.' - Mia Hamm & Michael Jordan, Gatorade Commercial"]
      @final_result = quotes_ary[index]
    elsif num == 7 # image of tony_rob quote
      @final_result = "Time to be inspired!"
      @test = "RobbinsQuote"
    elsif num == 8
      @final_phrase = "FUN FACT!!"
      @final_result = "In 1916, the German Empire allowed citizens to take passport photos with their dogs."
    elsif num == 9
      @final_phrase = "FUN FACT!!"
      @final_result = "Sharks are immune to cancer."
    elsif num == 10
      @final_phrase = "Good Quote, coming your way"
      @final_result = "“Good judgment comes from experience, and a lot of that comes from bad judgment.” - Will Rogers"
    end
    erb :response_page
  end
end
