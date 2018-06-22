# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users_list = [
    {username: 'theshun', password: 'shunthis'},
    {username: 'notshun', password: 'shunthis'},
    {username: '2shun2quit', password: 'shunthis'},
    {username: 'rashunalize', password: 'shunthis'},
    {username: 'realshun', password: 'shunthis'}
  ]
  
  actors_list = [
      {name: 'Adriana', cv: 'The Comedy of Errors', img_url: 'http://studiodorje.com/flatiron/project_assets/actor_01.png', svg_url: 'http://studiodorje.com/flatiron/project_assets/actor_01.svg'},
      {name: 'Isabel', cv: 'Richard II, Henry V', img_url: 'http://studiodorje.com/flatiron/project_assets/actor_02.png', svg_url: 'http://studiodorje.com/flatiron/project_assets/actor_02.svg'},
      {name: 'Rosalind', cv: 'As You Like It', img_url: 'http://studiodorje.com/flatiron/project_assets/actor_03.png', svg_url: 'http://studiodorje.com/flatiron/project_assets/actor_03.svg'},
      {name: 'Camillo', cv: 'The Winters Tale', img_url: 'http://studiodorje.com/flatiron/project_assets/actor_04.png', svg_url: 'http://studiodorje.com/flatiron/project_assets/actor_04.svg'},
      {name: 'Miranda', cv: 'The Tempest', img_url: 'http://studiodorje.com/flatiron/project_assets/actor_05.png', svg_url: 'http://studiodorje.com/flatiron/project_assets/actor_05.svg'},
      {name: 'Portia', cv: 'The Merchant of Venice, Julius Caesar', img_url: 'http://studiodorje.com/flatiron/project_assets/actor_06.png', svg_url: 'http://studiodorje.com/flatiron/project_assets/actor_06.svg'}
  ]
  
  script_list = [
      {title: 'Savior Without Hope', user_id: 1, line_1: 'A-Spare some change, please?', line_2: 'B-I thought someone should tell you that your mother has died.', line_3: 'A-Have you read the newspaper stories about my wife?', line_4: 'B-She was unconscious when I found her', line_5: 'A-Whatever you are going to ask, the answer is No!', img_url: 'http://studiodorje.com/flatiron/project_assets/show_01.jpg'},
      {title: 'Agent Of Hell', user_id: 2, line_1: 'A-You are too good for this world.', line_2: 'B-You have taken her back? You cannot be serious?', line_3: 'A-The way you flirt is shameful.', line_4: 'B-You embarrassed me this evening.', line_5: 'A-I want to be there when you get whats coming to you.', img_url: 'http://studiodorje.com/flatiron/project_assets/show_02.jpg'},
      {title: 'Trees With A Goal', user_id: 3, line_1: 'A-What have you done with my pills? I need them!', line_2: 'B-We could get arrested for this.', line_3: 'A-Find some proof that she had betrayed you.', line_4: 'B-You think I am being paranoid but the truth is I am worth a lot more to her dead than alive.', line_5: 'A-You have his eyes.', img_url: 'http://studiodorje.com/flatiron/project_assets/show_03.jpg'},
      {title: 'Moon Of The Prison', user_id: 4, line_1: 'A-You did a bad thing for a good reason.', line_2: 'B-You got a package for me?', line_3: 'A-I have been checking you out.', line_4: 'B-We could get arrested for this.', line_5: 'A-Well, this is where I live.', img_url: 'http://studiodorje.com/flatiron/project_assets/show_04.jpg'},
      {title: 'Fish Of Hope', user_id: 5, line_1: 'A-How dare you look down your nose at me like that.', line_2: 'A-Move away from the door and let me at him.', line_3: 'B-I did a pregnancy test.', line_4: 'A-Nothing is THAT important, you know.', line_5: 'B-If you leave now, you lose everything.', img_url: 'http://studiodorje.com/flatiron/project_assets/show_05.jpg'}
  
  ]
  
  production_list = [
      {user_id: 1, script_id: 1},
      {user_id: 2, script_id: 2},
      {user_id: 3, script_id: 3},
      {user_id: 4, script_id: 4},
      {user_id: 5, script_id: 5}
  ]

  cast_list = [
    {actor_id: 1, production_id: 1},
    {actor_id: 2, production_id: 1},
    {actor_id: 3, production_id: 2},
    {actor_id: 4, production_id: 2},
    {actor_id: 5, production_id: 3},
    {actor_id: 6, production_id: 3},
    {actor_id: 1, production_id: 4},
    {actor_id: 5, production_id: 4},
    {actor_id: 3, production_id: 5},
    {actor_id: 2, production_id: 5}
  ]
  
users_list.each do |hash|
    User.create(hash)
end

actors_list.each do |hash|
    Actor.create(hash)
end

script_list.each do |hash|
    Script.create(hash)
end

production_list.each do |hash|
    Production.create(hash)
end

cast_list.each do |hash|
    Cast.create(hash)
end