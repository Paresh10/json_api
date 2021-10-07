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
    {
        name: "Chicago",
        age_group: "12-16",
        coach: "Mark",
        tournaments_id: 1
    },       
    {
        name: "San Diego",
        age_group: "10-12",
        coach: "Diego",
        tournaments_id: 2
    },     
]

players = [
    {
        first_name: "Mark",
        last_name: "Cuban",
        height: 6,
        weight: 190,
        birthday: "2005/01/12",
        graduation_year: 2020,
        position: "Quarterback",
        recruit: true,
        teams_id: 3
    },
    {
        first_name: "Santa",
        last_name: "Clause",
        height: 6.5,
        weight: 210,
        birthday: "2007/09/03",
        graduation_year: 2021,
        position: "Middle",
        recruit: true,
        teams_id: 2
    },
    {
        first_name: "Joey",
        last_name: "Being",
        height: 5.7,
        weight: 175,
        birthday: "2005/02/28",
        graduation_year: 2019,
        position: "Front",
        recruit: false,
        teams_id: 1
    },
    {
        first_name: "Ross",
        last_name: "Green",
        height: 6.2,
        weight: 195,
        birthday: "2007/03/15",
        graduation_year: 2018,
        position: "Back",
        recruit: true,
        teams_id: 3
    }            
]


users.each do |user|
    User.create!(
        name: user[:name],
        email: user[:email],
        password: user[:password]
    )
end

stack_tournaments.each do |t|
  Tournament.create!(
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

players.each do |player|
    Player.create!(
        first_name: player[:first_name],
        last_name: player[:last_name],
        height: player[:height],
        weight: player[:weight],
        birthday: player[:birthday],
        graduation_year: player[:graduation_year],
        position: player[:position],
        recruit: player[:recruit],
        teams_id: player[:teams_id]
    )
end