# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
puts ' '
puts 'Seeding ROLES ...'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name({ :name => role }, :without_protection => true)
  puts 'role: ' << role
end

puts ' '
puts 'Seeding USERS ...'
rebase = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << rebase.name
rebase.add_role :admin

steve = User.find_or_create_by_email :name => 'conciergeent', :email => 'steve@conciergeent.com', :password => 'testtest', :password_confirmation => 'testtest'
puts 'user: ' << steve.name
steve.add_role :admin

gmail = User.find_or_create_by_email :name => 'gmail', :email => 'djstevemcquaid@gmail.com', :password => 'testtest', :password_confirmation => 'testtest'
puts 'user: ' << gmail.name
gmail.add_role :admin

puts ' '
puts 'Seeding Songs ...'
song1 = Song.create({title: 'Give Me Everything Tonight', artist: 'Pitbull', user: steve})
song2 = Song.create({title: 'The Monster (Intro - Clean)', artist: 'Eminem ft. Rihanna', user: gmail})
song3 = Song.create({title: 'My Hitta (Intro - Dirty)', artist: 'YG ft. Young Jeezy & Rich Homie Quan', user: steve})
song4 = Song.create({title: 'Red Nose (Intro - Dirty)', artist: 'Sage The Gemini', user: steve})
song5 = Song.create({title: 'Clarity (feat. Foxes)', artist: 'Zedd', user: rebase})
song6 = Song.create({title: 'The Other Side', artist: 'Jason Derulo', user: gmail})
song7 = Song.create({title: 'I Love It (Clean)', artist: 'Icona Pop', user: steve})
song8 = Song.create({title: 'Get Lucky (Intro)', artist: 'Daft Punk', user: rebase})
song9 = Song.create({title: 'Love More (Intro - Clean)', artist: 'Chris Brown ft. Nicki Minaj', user: gmail})
song10 = Song.create({title: 'Baby I [Intro Clean]', artist: 'Ariana Grande', user: rebase})
song11 = Song.create({title: 'The Way Remix (Intro - Clean)', artist: 'Ariana Grande ft Fabolous', user: gmail})
song12 = Song.create({title: 'Come & Get It (Jump Smokers Extended Mix)', artist: 'Selena Gomez', user: steve})
song13 = Song.create({title: 'Holy Grail [Intro - Clean] 2', artist: 'Jay Z Feat Justin Timberlake', user: rebase})
song14 = Song.create({title: 'Blurred Lines', artist: 'Robin Thicke ft. T.I. & Pharrell', user: steve})
song15 = Song.create({title: "Can't Hold Us (DJ Primetyme Remix)", artist: "Macklemore & Ryan Lewis ft. Ray Dalton", user: rebase})

puts ' '
puts 'Seeding Comments ...'
comment1 = Comment.create({song: song1, user: rebase, comment: 'Old throwback. Popular 2010. Great partyup tune.'})
comment2 = Comment.create({song: song2, user: rebase, comment: 'New song, not tons of energy but if people want to hear it...'})
comment3 = Comment.create({song: song3, user: gmail, comment: 'Hip hop jam. Explicit. Very smooth feeling. Late in the night, grinding.'})
comment4 = Comment.create({song: song4, user: gmail, comment: 'Hip hop jam. Explicit. Very smooth feeling. Late in the night, grinding.'})
comment5 = Comment.create({song: song5, user: steve, comment: 'EDM anthem. Great sing a long for those that know it. Has a lot of breaks to fill though. Enough time for a talkover'})
comment6 = Comment.create({song: song6, user: gmail, comment: 'Upbeat and high energy tune. Slow build. Find another remix for intro, use this drop though. Has not gotten that popular though.'})
comment7 = Comment.create({song: song7, user: steve, comment: 'Anthem. Fun for all ages. Mix into any set'})
comment8 = Comment.create({song: song8, user: rebase, comment: 'Funky modern disco track.'})
comment9 = Comment.create({song: song9, user: rebase, comment: 'Hip Hop twerking music. Not super popular, but good for younger kids.'})
comment10 = Comment.create({song: song10, user: gmail, comment: 'Modern song with 00s hip-hop/R&B feel. Modern song for a throwback set'})
comment11 = Comment.create({song: song11, user: rebase, comment: 'Smooth Song. Modern song with 00s hip-hop/R&B feel. Modern song for a throwback set'})
comment12 = Comment.create({song: song12, user: steve, comment: 'Cool remix. Very dramatic. Must be used in a remix environment though. Far off from original'})
comment13 = Comment.create({song: song13, user: rebase, comment: 'A trendy song for 2013. Very dark and not super dancy or mainstream. Listening tune.'})
comment14 = Comment.create({song: song14, user: gmail, comment: 'Funky, controversial modern disco song. Use before or after miley cyrus song for funny reactions'})
comment15 = Comment.create({song: song15, user: gmail, comment: 'Hands up party tune. You have to remix the hell out of the intro, like driving a lamborghini. If you can use it properly, KILLER.'})


puts ' '
puts 'Seeding Ratings ...'
rating1 =  Rating.create({song: song1, user: rebase, rating: 5})
rating2=  Rating.create({song: song2, user: rebase, rating: 2})
rating3 =  Rating.create({song: song3, user: gmail, rating: 4})
rating4 =  Rating.create({song: song4, user: gmail, rating: 4})
rating5 =  Rating.create({song: song5, user: steve, rating: 3})
rating6 =  Rating.create({song: song6, user: gmail, rating: 3})
rating7 =  Rating.create({song: song7, user: steve, rating: 5})
rating8 =  Rating.create({song: song8, user: rebase, rating: 5})
rating9 = Rating.create({song: song9, user: rebase, rating: 4})
rating10 = Rating.create({song: song10, user: gmail, rating: 4})
rating11 = Rating.create({song: song11, user: rebase, rating: 4})
rating12 = Rating.create({song: song12, user: steve, rating: 3})
rating13 = Rating.create({song: song13, user: rebase, rating: 2})
rating14 = Rating.create({song: song14, user: gmail, rating: 5})
rating15 = Rating.create({song: song15, user: gmail, rating: 5})