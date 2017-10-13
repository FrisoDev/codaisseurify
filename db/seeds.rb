Artist.destroy_all
Song.destroy_all

artist1 = Artist.create!( { name: "Radiohead", country: "UK", act_since: 1987, bio: "Someshit", genre: "Rockedgyshit", born: 1963})
artist2 = Artist.create!( { name: "Bing", country: "Russia", act_since: 1909, bio: "Someshit", genre: "Rockedgyshit", born: 1963})
artist3 = Artist.create!( { name: "Bong", country: "France", act_since: 2001, bio: "Someshit", genre: "Rockedgyshit", born: 1963})

song1 = Song.create!( { name: "Song1", length_min: 4, length_sec: 34, artist: artist1})
song2 = Song.create!( { name: "Song2", length_min: 7, length_sec: 21, artist: artist1})
