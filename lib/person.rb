
class Person
    attr_reader :name
    attr_accessor :bank_account
    attr_reader :happiness
    attr_reader :hygiene
    def happiness=(happiness)
        @happiness = happiness
        if self.happiness > 10
            self.happiness = 10
        elsif
            self.happiness < 0
            self.happiness = 0
        end
    end
    def hygiene=(hygiene)
        @hygiene = hygiene
        if self.hygiene > 10
            self.hygiene = 10
        elsif
            self.hygiene < 0
            self.hygiene = 0
        end
    end
    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end
    def happy?
        if self.happiness > 7
            true
        else
            false
        end
    end
    def clean?
        if self.hygiene > 7
            true
        else
            false
        end
    end
    def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
    end
    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end
    def call_friend(friend)
        friend.happiness += 3
        self.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
    def start_conversation(friend, topic)
        if topic == 'politics'
            friend.happiness -= 2
            self.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif
            topic == 'weather'
            friend.happiness += 1
            self.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
    end