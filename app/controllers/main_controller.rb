class MainController < ApplicationController
  def index
    @subdomain = request.subdomain.presence || "(none)"
    @joke = random_joke
  end

  private

  def random_joke
    jokes = [
      {
        setup: "Why do programmers prefer dark mode?",
        punchline: "Because light attracts bugs!"
      },
      {
        setup: "How many programmers does it take to change a light bulb?",
        punchline: "None. It's a hardware problem."
      },
      {
        setup: "Why do Ruby developers love coffee?",
        punchline: "Because Java is just too verbose!"
      },
      {
        setup: "What's a programmer's favorite place to hang out?",
        punchline: "The Foo Bar!"
      },
      {
        setup: "Why did the developer go broke?",
        punchline: "Because they used up all their cache!"
      }
    ]
    jokes.sample
  end
end
