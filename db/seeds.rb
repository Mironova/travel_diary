# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

articles_list = [
    [ 'About me', true, 'about_me', "<p>I'm a New York native who left my home to explore the world slowly and thoroughly.</p><p>I’m just a little obsessed with photography, scuba diving, and reading guidebooks to countries</p><p>I have no immediate plans to visit.</p>" ],
    [ 'My contacts', true, 'contacts', "<p>Michael W. Huseman</p><p>DREYER, FOOTE, STREIT,</p><p>FURGASON &amp; SLOCUM, P.A.</p><p>1999 West Downer Place</p><p>Aurora, IL 60506</p><p>630-897-8764 tel</p><p>630-897-1735 fax</p>" ],
    [ 'About my travel to India', false, 'india', '<p>In between the cluttered cities and towns is the rural heartland, a mix of rice paddies, tropical forests and squat villages tied to the agricultural clock. In the north, the forests and fields bump up against toothy blue mountains decorated by silvery waterfalls. In the south, scraggly limestone cliffs poke out of the cultivated landscape like prehistoric skyscrapers. The usually arid northeast beams an emerald hue during the rainy season when tender green rice shoots carpet the landscape.</p><h2>A Bountiful Table</h2><p><img style="width: 739px; height: 500px;" src="http://images-resrc.staticlp.com/S=W1000M,H700M/O=85/http://media.lonelyplanet.com/a/g/hi/t/1608fcfbc69fe161802307e89f210c86-wat-bowonniwet.jpg" height="500" width="739"><br></p>' ],
    [ 'About my travel to Thailand', false, 'thailand', '<p>To describe something intangible, something we only feel has never been easy but I run the risk of trying today in describing one of my best travelling experiences so far. Fun, evasion but above all cultural and spiritual wealth was what I felt in that trip. An exotic destination, one of the richest and most diverse cultures that I ever saw in my life. My advice to you, dear readers? Read a paragraph and close your eyes … dream or remember, as appropriate. But honestly, close your eyes and let yourself be guided by this visual and spiritual journey....</p><p><img src="http://www.bykoket.com/blog/wp-content/uploads/2012/10/imagemindia_post.jpg"></p><p>A moment that I will never forget is the sky with orange and rose shades over the <a href="http://www.tajmahal.com/" target="_blank"><strong>Taj Mahal</strong></a> when the sun is coming down. I think that was the moment I felt more feminine, fragile in the middle of so much power and beauty. If the Taj Mahal is regarded as one of the most beautiful architectural works of mankind, imagine it with a scenario so pure and intense behind such as a quiet sunset. No words.</p><p><span class="redactor-invisible-space"><img src="http://www.bykoket.com/blog/wp-content/uploads/2012/10/India-4.jpg"><span class="redactor-invisible-space"></span></span><br></p> ' ]
]

articles_list.each do |article|
  Article.create( title: article[0], as_block: article[1], cover: File.open(File.join(Rails.root, "/app/assets/images/#{article[2]}.jpg")), content: article[3] )
end