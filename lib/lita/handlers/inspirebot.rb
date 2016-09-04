module Inspirebot
  class Quotes
    attr_accessor :add_attribution
    attr_accessor :authors

    def initialize()
      init_quotes
      @authors = @quotes.keys
      @add_attribution = false
    end

    def init_quotes
      @quotes = {
        branson: {
          name: 'Richard Branson',
          quotes: [
          "You don't learn to walk by following rules. You learn by doing, and by falling over.",
          "Business opportunities are like buses, there’s always another one coming.",
          "A business has to be involving, it has to be fun, and it has to exercise your creative instincts.",
          "Do not be embarrassed by your failures, learn from them and start again.",
          "One thing is certain in business. You and everyone around you will make mistakes.",
          "My general attitude to life is to enjoy every minute of every day. I never do anything with a feeling of, ’Oh God, I’ve got to do this today.’",
          "I cannot remember a moment in my life when I have not felt the love of my family. We were a family that would have killed for each other - and we still are.",
          "I never get the accountants in before I start up a business. It's done on gut feeling, especially if I can see that they are taking the mickey out of the consumer.",
          "I love the freedom of movement that my phone gives me. That has definitely transformed my life."
          ],
        },
        jobs: {
          name: 'Steve Jobs',
          quotes: [
          "Being the richest man in the cemetery doesn't matter to me. Going to bed at night saying we've done something wonderful, that's what matters to me.",
          "Sometimes when you innovate, you make mistakes. It is best to admit them quickly, and get on with improving your other innovations.",
          "Be a yardstick of quality. Some people aren't used to an environment where excellence is expected.",
          "Innovation distinguishes between a leader and a follower.",
          "Design is not just what it looks like and feels like. Design is how it works.",
          "It's really hard to design products by focus groups. A lot of times, people don't know what they want until you show it to them.",
          "I want to put a ding in the universe.",
          "Sometimes life is going to hit you in the head with a brick. Don't lose faith.",
          "My favorite things in life don't cost any money. It's really clear that the most precious resource we all have is time.",
          "Things don't have to change the world to be important."
        ]
        },
        tesla: {
          name: 'Nikola Tesla',
          quotes: [
          "If you want to find the secrets of the universe, think in terms of energy, frequency and vibration.",
          "The day science begins to study non-physical phenomena, it will make more progress in one decade than in all the previous centuries of its existence.",
          "The scientists of today think deeply instead of clearly. One must be sane to think clearly, but one can think deeply and be quite insane.",
          "Our virtues and our failings are inseparable, like force and matter. When they separate, man is no more.",
          "The present is theirs; the future, for which I really worked, is mine.",
          "I do not think you can name many great inventions that have been made by married men.",
          "The spread of civilisation may be likened to a fire; first, a feeble spark, next a flickering flame, then a mighty blaze, ever increasing in speed and power."
          ]
        }
      }
    end

    def get_quote(name=nil)
      if name.nil?
        name = @authors.sample
      else
        name = name.to_sym unless name.is_a?(Symbol)
      end
      name = name.to_s.gsub(/\W/, '').downcase.to_sym
     
      quote = ''

      if @quotes.key? name
        collection = @quotes[name]
        display = collection[:name]
        quote = collection[:quotes].sample
        quote += ' - ' + display if @add_attribution
      else
        authors = authors_string
        quote = "I'm sorry, I could not found quotes for #{name}. I know about the following authors #{authors}"
      end
      return quote
    end

    def authors_string
      @authors.sort.join(', ')
    end
  end
end

module Lita
  module Handlers
    class Inspirebot < Handler
      route(/^inspire me!?\s*$/i, :quote, command: false, help: { 'inspire me!' => 'Returns a random quote' })
      route(/^quote authors\s*$/i, :authors, command: false, help: { 'quote authors' => 'Returns a list of known authors.' })
      route(/^quote\s+([A-Za-z0-9]+)!?\s*/i, :quote, command: false, help: { 'quote <AUTHOR>' => 'Replies with random AUTHOR quote.' })

      def authors(response)
        @quotes = ::Inspirebot::Quotes.new
        authors = @quotes.authors_string
        response.reply "I know about the following authors: #{authors}. To hear quotes, type QUOTE {AUTHOR}"
      end

      def quote(response)
        @quotes = ::Inspirebot::Quotes.new
        author = response.match_data[1].downcase
        unless author == 'authors'
          response.reply @quotes.get_quote(author)
        end
      end

      def menu(response)
        help = 'use AUTHORS to get a list of authors. use QUOTE {AUTHOR} to get a random quote from the author'
        response.reply @quotes.get_quote(help)
      end
    end
  end
  Lita.register_handler(Lita::Handlers::Inspirebot)
end