#!/usr/bin/env ruby


# ["qu","an",["a", "b","c", "d"]],


def general_knowledge
  [["The Plaka is the oldest quarter of which city?","Athens",["Athens", "Prague","Rome","Vienna"]],
  ["What is an axolotl?","A species of salamander",["A nerve in the brain","A multi-axled vehicle","A type of mortice lock","A species of salamander"]],
  ["The Panama Canal was officially opened by which US president?","Woodrow Wilson",["Calvin Coolidge","Herbert Hoover","Theodore Roosevelt","Woodrow Wilson"]],
  ["In which opera did Maria Callas make her last appearance at Covent Garden?","Tosca",["Carmen","Tosca","Madame Butterfly","La Boheme"]],
  ["After Adam, Eve, Cain and Abel who is the next person mentioned in the Bible?","Enoch",["Enoch","Jubal","Lamech","Zillah"]],
  ["What is a kudzu?","Antelope",["Antelope", "Bird","Jewish settlement","Climbing plant"]],
  ["Outlawed from 1603 to 1774, which Scottish clan was known as the Faceless Clan?","MacGregor",["Campbell", "MacGregor","MacLeod","MacDonald"]],
  ["From which country does tennis player Andres Gomez, winner of the 1990 French Championships, come?","Ecuador",["Ecuador", "Peru","Portugal","Spain"]]].sample
end

def geography
  [["Which US city is located on the Maumee River at Lake Erie?","Toledo",["Detroit","Toledo","Cleveland","Buffalo"]],
  ["Lisbon stands at the mouth of which river?","Tagus",["Seine", "Duoro","Rio Grande","Tagus"]],
  ["What is the longest river in France?","Loire",["Loire", "Seine","Rhone","Gironde"]],
  ["In which Australian state is Darwin?","Northern Territory",["Queensland", "Western Australia","Northern Territory","Tasmania"]],
  ["Apart from Rome, how many cities in Italy have a population of over one million?","Three: Milan, Naples and Turin",["Three: Milan, Naples and Turin", "Two: Genoa and Venice","One:Ancona","Four:Florence, Bologna, Trieste and Palermo"]],
  ["What in America is the Palmetto state?","South Carolina",["Florida", "Louisiana","Alabama","South Carolina"]],
  ["In which ocean is Madagascar?","Indian",["Atlantic", "Pacific","Indian","Arctic"]],
  [" In which US city is the Sears Tower?","Chicago",["Boston","Chicago","St. Louis","San Francisco"]]].sample
end

def sport
  [["At which sport in the 1960s did Peggy Fleming become a household name?","Figure skating",["Equestrian", "Tennis","Sprinting","Figure skating"]],
  ["Who revolutionised high jumping when he used his flop technique to win an Olympic gold medal in Mexico in 1968?","Dick Fosbury",["Dick Fosbury", "Mick Cadbury","Nick Fosdyke","Vic Foster"]],
  ["What nationality was tennis player John Newcombe?","Australian",["British", "Canadian","Irish", "Australian"]],
  ["About which golfer did the great Bobby Jones remark, ''He is playing an entirely different game, a game I'm not even familiar with'' ?","Jack Nicklaus",["Gary Player", "Tiger Woods","Jack Nicklaus","Peter Allis"]],
  ["Which tennis player, famous for her two-handed backhand and baseline-dominated play was nicknamed ''The Ice Maiden''?","Chris Evert",["Steffi Graf","Chris Evert","Evonne Cawley","Kim Clijsters"]],
  ["Who was the Argentinian racing driver ( 1911 – 1995 ) who won five world championships and was team leader of Mercedes-Benz, Alfa Romeo, Ferrari and Maserati?","Juan Manuel Fangio",["Juan Manuel Fangio","Alberto Ascari","Giuseppe Farina","Jose Gonzales"]],
  ["Which Italian jockey rode his first winner Lizzy Hare, at Goodwood in 1987?","Frankie Dettori",["Giovanni Forte", "Diego Dettori","Uto Viaggi", "Frankie Dettori"]],
  ["With which baseball team did Jose DiMaggio achieve icon status in the 1940s?","New York Yankees",["Chicago Bears", "New York Yankees","Baltimore Batters", "Cleveland Steelers"]]].sample
end

def food
  [["What type of cheese is Stilton?","Blue",["Blue", "Green","Hard", "Mouldy"]],
  ["What do you add to milk to make porridge?","Oats",["Cruel", "Oats","Sugar", "Whisky"]],
  ["What is minestrone?","Soup",["Cheese", "Noodles","A type of potato", "Soup"]],
  ["What is bottled tomato sauce called?","Ketchup",["Brown sauce", "HP sauce","Ketchup", "Piccalilli"]],
  ["What colour is gin?","Colourless",["Colourless", "Blue","Green", "Yellow"]],
  ["Which fruit is covered with toffee at a fairground?","Apple",["Banana", "Apple","Carrot", "Pear"]],
  ["Which nuts are used to make marzipan?","Almonds",["Almonds", "Chestnuts","Hazelnuts", "Walnuts"]],
  ["What meat dish is Cumberland famous for?","Sausage",["Bacon", "Deep-fried Mars Bars","Ribs", "Sausage"]]].sample
end

def british_history
  [["Which British monarch succeeded Queen Victoria?","Edward VII",["Elizabeth II", "Edward VI","Edward VII", "George VII"]],
  ["Richard III died at which battle?","Bosworth Field",["Bosworth Field", "Barnet","Hastings", "York"]],
  ["Who was the last viceroy of India?","Lord Louis Mountbatten",["Clive", "George VI","Prince Louis of Battenburg", "Lord Louis Mountbatten"]],
  ["Which English monarch married Eleanor of Aquitaine?","Henry II",["Henry II", "Henry IV","Henry VI", "Henry VIII"]],
  ["Who was the last wife of Henry VIII?","Catherine Parr",["Anne of Cleves", "Catherine of Aragon","Catherine Howard", "Catherine Parr"]],
  ["Which country did Britain fight in the War of Jenkins’ Ear?","Spain",["France", "Ireland","Spain", "Wales"]],
  ["Which King George did Prince Regent become?","George IV",["George IV", "George III","George II", "George I"]],
  ["At the Siege of Mafeking, who led the British forces?","Robert Baden-Powell",["Robert Baden-Powell", "Colonel B. T. Mahon","Fieldmarshal Bernard Montgomery", "Louis Mountbatten"]],
  ["The House of Lancaster kings were all called what?","Henry",["Charles", "Edward","George", "Henry"]],
  ["Apart from Mad George, which kinder nickname did George III have?","Farmer George",["Big George", "Farmer Giles","Farmer George", "Happy George"]]].sample
end

def quiz_rules_print_to_screen
  puts "
  Can you get 10 in a row?

  Rules...
  1. If you're stuck you can pass the question by typing: P
     Remember you only get 2 passes!
  2. If you get one wrong you start again...
  3. You have 3 lives! get 3 wrong and YOU'RRRREEEEEE OUT!

  GOOD LUCK!

  /////////////////////////////////////////////////////////
  "
end

def standard_question_header
  puts "Question #{@question_number} of 10... Live Remaining #{@lifes} : Passes Remaining #{@passes}
  "
end

def no_passes_remaining_question_header
  puts  "***You have no remaining pass... you're gunna have to guess!***
  "
end

def invalid_input_header
  puts "***Invalid Input, try again***
  "
end

def question_generater
  question = [general_knowledge,geography,sport,food,british_history].sample
  question[2] = question[2].shuffle
  question
end

def question_duplication_provention
  question_array = question_generater()
  while @question_tracker.include?(question_array[0])
    question_array = question_generater()
  end
  @question_tracker << question_array[0]
  question_array
end

def question_print_to_screen(question_array)
  puts "#{question_array[0]}

  A. #{question_array[2][0]}
  B. #{question_array[2][1]}
  C. #{question_array[2][2]}
  D. #{question_array[2][3]}

  "
end

def answer_user_input
  print "Type A, B, C or D: "
  @answer = gets.chomp.downcase
end

def valid_user_in_check
  ["a","b","c","d","p"].include?(@answer)
end

def correct_answer(question_array)
  if question_array[1] == question_array[2][0]
    correct_answer = "a"
  elsif question_array[1] == question_array[2][1]
    correct_answer = "b"
  elsif question_array[1] == question_array[2][2]
    correct_answer = "c"
  else
    correct_answer = "d"
  end
end

def correct_answer_calculater(correct_answer,question_array)
  if @answer == correct_answer
    puts "Correct!"
    @question_number += 1
  elsif @answer == "p"
    @passes -= 1
  else @answer =! correct_answer
    puts "Wrong... its should have been: #{correct_answer.upcase}. #{question_array[1]}"
    @question_number *= 0
    @question_number += 1
    @lifes -= 1
  end
end

def complete_question(valid_question)

  if @passes > 0
    standard_question_header()
  else
    no_passes_remaining_question_header()
  end

    question_print_to_screen(valid_question)
    answer_user_input()
    correct_answer_calculater(correct_answer(valid_question), valid_question)
    
end









@question_tracker = []
@question_number = 1
@lifes = 3
@passes = 2

quiz_rules_print_to_screen()


start = Time.now
# Loop Start
until @question_number == 11 || @lifes == 0


valid_question = question_duplication_provention()
puts "#{valid_question[1]}"


complete_question(valid_question)



puts "

*****************************************************************" unless @question_number == 11 || @lifes == 0

end



e = Time.now
time = e - start
result = @question_number == 11 ? "YOU WIN!!!" : "YOU'RRRREEEEEE OUT!!!"
 puts "
#{result}
Time Taken: #{time}
 "
