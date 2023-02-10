# your code goes here
class Person
    attr_reader:name 
    attr_accessor:bank_account,:hygiene, :happiness
     def initialize(name,bank_account=25 ,happiness = 8,hygiene = 8)
         @name = name
         @bank_account = bank_account
         self.happiness = happiness
         self.hygiene = hygiene
     end
     def  happiness=(num)
        @happiness=[[num, 0].max,10].min
       
     end
     def hygiene= (num)
         @hygiene= [[num, 0].max ,10].min
     end
    def happy?
        happiness>7
    end
    def clean?
        hygiene>7
    end
    def get_paid(amount)
        self.bank_account += amount
        return "all about the benjamins"
    end
    def take_bath
       self.hygiene+=4
       return "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    def work_out
        self.hygiene -=3
        self.happiness+= 2
        return "♪ another one bites the dust ♫"
    end
    def call_friend(call)
        self.happiness+=3
        call.happiness +=3
       return "Hi #{call.name}! It's #{self.name}. How are you?"
    end
    def start_conversation (friend,topic)
       if topic == "politics"
         self.happiness-=2
         friend.happiness-=2
        return "blah blah partisan blah lobbyist"  
       elsif  topic == "weather"
        self.happiness +=1
        friend.happiness +=1
        "blah blah sun blah rain" 
       else
        return "blah blah blah blah blah"
       end

    end
end




