# an array of state hashes
states =[
{
    name: "Alabama",
    capital: "Montgomery"
}, {
    name: "Alaska",
    capital: "Juneau"
}, {
    name: "Arizona",
    capital: "Phoenix"
}, {
    name: "Arkansas",
    capital: "Little Rock"
}, {
    name: "California",
    capital: "Sacramento"
}, {
    name: "Colorado",
    capital: "Denver"
}, {
    name: "Connecticut",
    capital: "Hartford"
}, {
    name: "Delaware",
    capital: "Dover"
}, {
    name: "Florida",
    capital: "Tallahassee"
}, {
    name: "Georgia",
    capital: "Atlanta"
}, {
    name: "Hawaii",
    capital: "Honolulu"
}, {
    name: "Idaho",
    capital: "Boise"
}, {
    name: "Illinois",
    capital: "Springfield"
}, {
    name: "Indiana",
    capital: "Indianapolis"
}, {
    name: "Iowa",
    capital: "Des Moines"
}, {
    name: "Kansas",
    capital: "Topeka"
}, {
    name: "Kentucky",
    capital: "Frankfort"
}, {
    name: "Louisiana",
    capital: "Baton Rouge"
}, {
    name: "Maine",
    capital: "Augusta"
}, {
    name: "Maryland",
    capital: "Annapolis"
}, {
    name: "Massachusetts",
    capital: "Boston"
}, {
    name: "Michigan",
    capital: "Lansing"
}, {
    name: "Minnesota",
    capital: "St. Paul"
}, {
    name: "Mississippi",
    capital: "Jackson"
}, {
    name: "Missouri",
    capital: "Jefferson City"
}, {
    name: "Montana",
    capital: "Helena"
}, {
    name: "Nebraska",
    capital: "Lincoln"
}, {
    name: "Nevada",
    capital: "Carson City"
}, {
    name: "New Hampshire",
    capital: "Concord"
}, {
    name: "New Jersey",
    capital: "Trenton"
}, {
    name: "New Mexico",
    capital: "Santa Fe"
}, {
    name: "New York",
    capital: "Albany"
}, {
    name: "North Carolina",
    capital: "Raleigh"
}, {
    name: "North Dakota",
    capital: "Bismarck"
}, {
    name: "Ohio",
    capital: "Columbus"
}, {
    name: "Oklahoma",
    capital: "Oklahoma City"
}, {
    name: "Oregon",
    capital: "Salem"
}, {
    name: "Pennsylvania",
    capital: "Harrisburg"
}, {
    name: "Rhode Island",
    capital: "Providence"
}, {
    name: "South Carolina",
    capital: "Columbia"
}, {
    name: "South Dakota",
    capital: "Pierre"
}, {
    name: "Tennessee",
    capital: "Nashville"
}, {
    name: "Texas",
    capital: "Austin"
}, {
    name: "Utah",
    capital: "Salt Lake City"
}, {
    name: "Vermont",
    capital: "Montpelier"
}, {
    name: "Virginia",
    capital: "Richmond"
}, {
    name: "Washington",
    capital: "Olympia"
}, {
    name: "West Virginia",
    capital: "Charleston"
}, {
    name: "Wisconsin",
    capital: "Madison"
}, {
    name: "Wyoming",
    capital: "Cheyenne"
}
]

# Score:
correct = 0
incorrect = 0

# Hash Keys for correct/incorrect:
states.each {|state|     
    state[:correct] = 0
    state[:incorrect] = 0
}


# Welcome Prompt:
puts "Welcome to State Capitals! Name the correct capital for each state, or type 'skip' to move on."

# Shuffle:
states_game = states.shuffle

# Game loop + prompt
prompt = ""


loop do
    # break if prompt == "quit"
    states_game.each { |state| 
        while prompt != state[:capital] do 
            puts "What is the capital of #{state[:name]}?"
            prompt = gets.chomp
            if prompt == state[:capital]
                correct += 1
                state[:correct] += 1
                puts "That is correct! You answered this question correctly #{state[:correct]} time(s) out of #{state[:correct] + state[:incorrect]} time(s)."
            end
        break if prompt == "skip" 
            if prompt != state[:capital]
                incorrect += 1
                state[:incorrect] += 1
                puts "Try again."
            end
        end
        
    }
    puts "Correct: #{correct}"
    puts "Incorrect: #{incorrect}"
    puts "Would you like to play again? (Y/N)"
    prompt = gets.chomp
    break if prompt == "N" || prompt == "No" || prompt == "no" || prompt == "n" 
end





# puts "Correct: #{correct}"
# puts "Incorrect: #{incorrect}"
# puts states_game

