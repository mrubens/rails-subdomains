class MainController < ApplicationController
  def index
    @subdomain = request.subdomain.presence || "(none)"
    @joke = random_joke
  end

  private

  def random_joke
    jokes = [
      {
        setup: "Why do programmers always mix up Halloween and Christmas?",
        punchline: "Because Oct 31 == Dec 25!"
      },
      {
        setup: "What's a programmer's favorite hangout place?",
        punchline: "Foo Bar!"
      },
      {
        setup: "Why did the programmer quit their job?",
        punchline: "Because they didn't get arrays!"
      },
      {
        setup: "How do you comfort a JavaScript bug?",
        punchline: "You console it!"
      },
      {
        setup: "Why don't programmers like nature?",
        punchline: "It has too many bugs and no debugger!"
      }
    ]
    jokes.sample
  end
end
