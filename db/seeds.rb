# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(username: "Guest", email: "foo@bar.com")
user.save!
p1 = user.playlists.create(name: "Playlist 1")
p2 = user.playlists.create(name: "Playlist 2")

#this skips controller create...  fix this to use create
Video.create(url:"http://www.youtube.com/watch?v=5NV6Rdv1a3I")
Video.create(url:"http://www.youtube.com/watch?v=6uBK5kvakD8")

p1.pl_additions.create(video_id: 1)
p1.pl_additions.create(video_id: 2)
p2.pl_additions.create(video_id: 2)
