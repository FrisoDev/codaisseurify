Artist.destroy_all
Song.destroy_all

artist1 = Artist.create!( { name: "Radiohead", country: "UK", act_since: 1985, bio: "Radiohead are an English rock band from Abingdon, Oxfordshire, formed in 1985. The band consists of Thom Yorke (lead vocals, guitar, piano, keyboards), Jonny Greenwood (lead guitar, keyboards, other instruments), Ed O'Brien (guitar, backing vocals), Colin Greenwood (bass), and Phil Selway (drums, percussion, backing vocals). They have worked with producer Nigel Godrich and cover artist Stanley Donwood since 1994", genre: "Alternative Rock", born: 1985})
artist2 = Artist.create!( { name: "Coldplay", country: "UK", act_since: 1996, bio: "Coldplay are a British rock band formed in 1996 by lead vocalist and keyboardist Chris Martin and lead guitarist Jonny Buckland at University College London (UCL). After they formed under the name Pectoralz, Guy Berryman joined the group as bassist and they changed their name to Starfish. Will Champion joined as drummer and backing vocalist, completing the lineup. Creative director Phil Harvey is often referred to as the fifth member by the band. The band renamed themselves 'Coldplay' in 1998, before recording and releasing three EPs: Safety in 1998 and Brothers & Sisters and The Blue Room in 1999. The Blue Room was their first release on a major label, after signing to Parlophone.", genre: "Pop/Rock", born: 1996})
artist3 = Artist.create!( { name: "Daft Punk", country: "France", act_since:  1993, bio: "Daft Punk are a French electronic music duo formed in 1993 by Guy-Manuel de Homem-Christo and Thomas Bangalter. The duo achieved significant popularity in the late 1990s as part of the French house movement and had continuous success in the years following, combining elements of house music with funk, techno, disco, rock and synthpop influences. They are also known for their visual stylization and disguises associated with their music; the duo have worn ornate helmets and gloves to assume robot personas in most of their public appearances since 2001 and rarely grant interviews or appear on television.", genre: "House / Disco", born: 1993})

song1 = Song.create!( { name: "Yellow", length_min: 4, length_sec: 34, artist: artist2})
song2 = Song.create!( { name: "Around the world", length_min: 6, length_sec: 21, artist: artist3})
song3 = Song.create!( { name: "Creep", length_min: 4, length_sec: 13, artist: artist1})
song4 = Song.create!( { name: "Sky Full of Stars", length_min: 3, length_sec: 53, artist: artist2})

photo1 = Photo.create!( { remote_image_url: "http://res.cloudinary.com/dkerkc5h8/image/upload/v1507979618/Screen-Shot-2014-03-20-at-10.23.34-AM_lb2how.jpg", artist: artist2})
photo2 = Photo.create!( { remote_image_url: "http://res.cloudinary.com/dkerkc5h8/image/upload/v1507979618/radiohead_ghghhf.jpg", artist: artist1})
photo3 = Photo.create!( { remote_image_url: "http://res.cloudinary.com/dkerkc5h8/image/upload/v1507979617/Daft-Punk-Wallpaper-2560x1024-1_rjofti.jpg", artist: artist3})
