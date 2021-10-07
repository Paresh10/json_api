# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# For User's
users = [
    {
        name: "Paresh",
        email: "Paresh.sharma10@gmail.com",
        password: "Paresh"
    },
    {
        name: "Robert",
        email: "robert@email.com",
        password: "Robert"
    }    
]

# For Tournaments
stack_tournaments = [
    {
        name: "Dallas Boys",
        city: "Dallas",
        state: "TX",
        start_date: "2021/10/22"
    },
    {
        name: "Chicago Bulls",
        city: "Chicago",
        state: "IL",
        start_date: "2021/01/02"
    }    
]

# For Teams
teams = [
    {
        name: "Austin",
        age_group: "20-30",
        coach: "Ron",
        tournaments_id: 1
    },
    {
        name: "Boston",
        age_group: "15-20",
        coach: "Reagan",
        tournaments_id: 2
    },   
]


users.each do |user|
    User.create(
        name: user[:name],
        email: user[:email],
        password: user[:password]
    )
end

stack_tournaments.each do |t|
  Tournament.create(
    name: t[:name],
    city: t[:city],
    state: t[:state],
    start_date: t[:start_date]    
  )
end


teams.each do |team|
    Team.create!(
        name: team[:name],
        age_group: team[:age_group],
        coach: team[:coach],
        tournaments_id: team[:tournaments_id]      
    )
end