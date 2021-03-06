# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

SiteInfo.delete_all
User.delete_all
Sector.delete_all
Category.delete_all
Collection.delete_all
Resource.delete_all

MULTIPLIER = 8

puts 'Old records destroyed'

SiteInfo.create(:about => '<p>Evergreen is a Bi-weekly collection of links to the best learning resources in business, collected by a group of managers, founders, and investors. We contribute resources about one topic, which are synthesized and shared in this Collection. The goal is to learn more efficiently through increased context and focus.</p>
<p>Remember, these are designed to feel like short books, you’re meant to meander and spend ~3 hours on this topic this week. Save some of these links and read them throughout the week. Immerse yourself in this topic and leave the week smarter than you started it!</p>
<p><br></p>
<h4>Hey look <b>bold</b>, <i>italic</i>, and <u>underlined</u> text!</h4>
<p><br></p>
<p><img src="http://www.evergreenpcs.com/_borders/EvergreenColorTransp.gif" style="height: 303px;width: 264px;"><br></p>
<p><br></p>
<p>Everything is printed in HTML so it is possible to make HTML edits if you click on the "&lt;/&gt;" on the top panel when editing.</p>',
                :mission => '<p style="color: rgb(85, 85, 85);background-color: rgb(255, 255, 255);"><span style="color: rgba(0, 0, 0, 0.8);background-color: rgb(255, 255, 255);">Mission &amp; Method of E</span><span style="color: rgba(0, 0, 0, 0.8);background-color: rgb(255, 255, 255);">vergreen</span><br></p>
<p id="5946" class="graf--p graf-after--h3" style="color: rgba(0, 0, 0, 0.8);background-color: rgb(255, 255, 255);">These two beliefs led to the creation of Evergreen:</p>
<ol>
  <li id="b100" class="graf--li graf-after--p">We believe that time spent learning the important things thoroughly is well invested.</li>
  <li id="a49e" class="graf--li graf-after--li"><span class="markup--quote markup--li-quote is-other" style="background-color: transparent;">We believe the most important thing a person can do is help another person know more.</span></li>
</ol>
<p id="9bc4" class="graf--p graf-after--li" style="color: rgba(0, 0, 0, 0.8);background-color: rgb(255, 255, 255);">(The second idea comes from Charlie Munger, who has helped me know an awful lot more, which I appreciate daily.)</p>
<blockquote id="652b" class="graf--pullquote pullquote graf--startsWithDoubleQuote graf-after--p" style="color: rgba(0, 0, 0, 0.6);text-align: left;background-color: rgb(255, 255, 255);"><i><span class="markup--quote markup--pullquote-quote is-other" style="background-color: transparent;">“If you know how to learn, you know enough”</span></i></blockquote>
<h3 id="ce8e" class="graf--h3 graf-after--pullquote" style="color: rgba(0, 0, 0, 0.8);background-color: rgb(255, 255, 255);">The Problem Being Solved</h3>
<p id="3453" class="graf--p graf-after--h3" style="color: rgba(0, 0, 0, 0.8);background-color: rgb(255, 255, 255);">There is a problem with content distribution online. Everything is chronologically sorted with newest on top, refreshing constantly. Blogs, Twitter, Facebook, News, etc. It’s constant and clamoring; aggressive and accelerating.</p>
<p id="ac18" class="graf--p graf-after--p" style="color: rgba(0, 0, 0, 0.8);background-color: rgb(255, 255, 255);"><span class="markup--quote markup--p-quote is-other" style="background-color: transparent;"><strong class="markup--strong markup--p-strong"><b>We re-read the same concepts on the same sites, recycled and repackaged to capture our clicks — wasting our time and effort.</b></strong></span></p>
<p id="02f5" class="graf--p graf-after--p" style="color: rgba(0, 0, 0, 0.8);background-color: rgb(255, 255, 255);">Some creators work hard to produce well-crafted, timeless material that will always be relevant. These are the masterpieces — pieces that change lives if they find us at the right time. But with these distribution systems, that proper timing has long odds.</p>
<p id="9730" class="graf--p graf-after--p" style="color: rgba(0, 0, 0, 0.8);background-color: rgb(255, 255, 255);">There’s a small window for us to discover and absorb meaningful content, in the correct context for our lives. This context friction applies across many measures: Form, Medium, Material, Difficulty, Life State, and Life Stage.</p>
<p id="7148" class="graf--p graf-after--p" style="color: rgba(0, 0, 0, 0.8);background-color: rgb(255, 255, 255);"><strong class="markup--strong markup--p-strong"><b>This is what Evergreen solves.</b></strong><span class="Apple-converted-space">&nbsp;</span>We collect resources, and build a library of the best content we can find that is always accessible and organized for you. Evergreen enables you to find the right information at the right time.</p>
<p id="c078" class="graf--p graf-after--p" style="color: rgba(0, 0, 0, 0.8);background-color: rgb(255, 255, 255);">Maybe you need an instructive long-form article on basic hiring practices. Maybe you need an academic paper on burn-out and vacation policies. Maybe you need the answer to all of next months’ growth scaling problems. Maybe you need the guide to succeed in a new role after your promotion.</p>
<p id="fc52" class="graf--p graf-after--p" style="color: rgba(0, 0, 0, 0.8);background-color: rgb(255, 255, 255);"><strong class="markup--strong markup--p-strong"><b>Evergreen organizes the Internet’s information for your personal use.</b></strong></p>
<h3 id="d6f2" class="graf--h3 graf-after--p" style="color: rgba(0, 0, 0, 0.8);background-color: rgb(255, 255, 255);">Why Evergreen is the Solution</h3>
<p id="5d52" class="graf--p graf-after--h3" style="color: rgba(0, 0, 0, 0.8);background-color: rgb(255, 255, 255);"><span class="markup--quote markup--p-quote is-other" style="background-color: transparent;">The way we read/watch/listen today is not the best way to earn important knowledge.<span class="Apple-converted-space">&nbsp;</span></span><span class="markup--quote markup--p-quote is-other" style="background-color: transparent;">Too much of our consumption is scattered and disorganized, which gives us the illusion of progress, but doesn’t create genuine understanding over the long-term.</span></p>
<p id="8455" class="graf--p graf-after--p" style="color: rgba(0, 0, 0, 0.8);background-color: rgb(255, 255, 255);">To help each other know more, we are going to create brain-building weekly Editions. There will be one topic each week, built from relevant resources that a diverse group has submitted. Any book, talk, article, story, podcast, case study, video, personal story, or link will be accepted. Suggestions will be read, categorized, and synthesized into a new Edition of Evergreen.</p>
<p id="1f65" class="graf--p graf-after--p" style="color: rgba(0, 0, 0, 0.8);background-color: rgb(255, 255, 255);">An Edition should feel like reading a short book on the topic. Expect it to take up to a few hours, because the goal is to create a thorough understanding. We’ll approach the topic from a few directions with complementary resources. Rather than approaching a topic in a fragmented way over months, you’ll have a sensible progression through resources that are contextualized, smooth, and consistently excellent.</p>
<p id="53b5" class="graf--p graf-after--p" style="color: rgba(0, 0, 0, 0.8);background-color: rgb(255, 255, 255);">Each Edition, and every resource that was submitted (whether it was in the Weekly Edition or not) will be archived in the Evergreen Library, where it will be categorized and cross-referenced for future reference.</p>
<blockquote id="f04f" class="graf--pullquote pullquote graf--startsWithDoubleQuote graf-after--p" style="color: rgba(0, 0, 0, 0.6);text-align: left;background-color: rgb(255, 255, 255);"><i></i><em class="markup--em markup--pullquote-em"><i>“</i></em>A Library is not a luxury but one of the Necessities of Life”</blockquote>
<p id="30b6" class="graf--p graf-after--pullquote" style="color: rgba(0, 0, 0, 0.8);background-color: rgb(255, 255, 255);">Thank you for supporting our mission to help each other know more.</p>
<p id="8c66" class="graf--p graf-after--p" style="color: rgba(0, 0, 0, 0.8);background-color: rgb(255, 255, 255);">Welcome to Evergreen:<span class="Apple-converted-space">&nbsp;</span><a href="https://medium.com/r/?url=http%3A%2F%2Fbit.ly%2F1xqh3cX" class="markup--anchor markup--p-anchor" rel="nofollow" style="color: inherit;">Share your email to join</a>.</p>
<p id="9801" class="graf--p graf-after--p" style="color: rgba(0, 0, 0, 0.8);background-color: rgb(255, 255, 255);">Any improvements that you can think of, I’d love to hear about.</p>')

puts 'Default site info set'

User.create(:email => "admin@test.com",
            :username => "adminTester",
            :password => "password",
            :password_confirmation => "password",
            :user_type => "admin")

puts 'Created test admin [:email => admin@test.com, :password => password]'

User.create(:email => "curator@test.com",
            :username => "curatorTester",
            :password => "password",
            :password_confirmation => "password",
            :user_type => "curator")

puts 'Created test curator [:email => curator@test.com, :password => password]'

# (2 * MULTIPLIER).times do
#   User.create(:email => Faker::Internet.email,
#               :username => Faker::Internet.user_name,
#               :password => "password",
#               :password_confirmation => "password",
#               :user_type => "curator")
# end

# puts 'Created random curators'

User.create(:email => "reader@test.com",
            :username => "readerTester",
            :password => "password",
            :password_confirmation => "password",
            :user_type => "reader")

puts 'Created test reader [:email => reader@test.com, :password => password]'

# (2).times do
#   Sector.create(:title => Faker::Book.genre)
# end

# puts 'Random Sectors Created'

Sector.create(:title => "Business")

puts 'Business Sector Created'

Sector.first.categories.create(:title => 'All Collections')

puts 'Random Category Created'

input_collections = ['Advertising',
                     'Brand', 
                     'Comp Advantage', 
                     'Company Culture', 
                     'Compensation', 
                     'Competitive Advantage', 
                     'Cost Leadership', 
                     'Customer Acquisition Cost', 
                     'Customer Development', 
                     'Customer Lifetime Value', 
                     'Distribution', 
                     'Employee Onboarding', 
                     'Employee Retention', 
                     'Firing', 
                     'Hiring', 
                     'How to Start a New Job', 
                     'Ideation', 
                     'Internal Communication', 
                     'Internal Communications', 
                     'Low Cost Competitive Advantage', 
                     'Managing Scale', 
                     'Network Effects', 
                     'Onboarding', 
                     'Partnerships', 
                     'Performance Reviews', 
                     'Pricing', 
                     'Product Management', 
                     'Product-Market Fit', 
                     'Recruiting', 
                     'Sales', 
                     'Scale', 
                     'Storytelling', 
                     'Strategy', 
                     'Validation', 
                     'Value Capture', 
                     'Value Creation', 
                     'Word of Mouth']

input_collections.each do |collection|
  Category.first.collections.create(:title => collection,
                                    :description => Faker::Lorem.sentence(3, true, 6))
end

# Sector.all.each do |sector|
#   (rand(MULTIPLIER / 3) + 2).times do
#     sector.categories.create(:title => Faker::Company.buzzword)
#   end
# end

# puts 'Categories Created'

# Category.all.each do |category|
#   (rand(MULTIPLIER / 2) + 1).times do
#     category.collections.create(:title => Faker::Company.buzzword,
#                                 :description => Faker::Lorem.sentence(3, true, 6),
#                                 :created_at => rand(Time.now - category.created_at).seconds.ago)
#   end
# end

# puts 'Collections Created'

# # Get the ID's of all of our sectors
# sector_ids = Sector.all.pluck(:id)

# Sector.find(sector_ids.sample).categories.create(:title => "Building A Team")

# puts 'Building A Team category created'

# User.all.each do |user|
#   (rand(6 * MULTIPLIER)).times do
#     collection_id = rand(Collection.all.length) + 1
#     random_approved = [true, false, false, false, false, false, false].sample
#     user.resources.create(:title => Faker::Lorem.sentence(2, true, 3).chomp('.'),
#                           :url => Faker::Internet.url('test.com'),
#                           :description => Faker::Lorem.sentence(4, true, 7),
#                           :collection_id => collection_id,
#                           :approved => random_approved,
#                           :created_at => rand(Time.now - user.created_at).seconds.ago)
#   end
# end

# puts 'Resources Created'

# Category.last.collections.create(:title => "Hiring",
#                                  :description => "There’s no debate on the importance of hiring and hiring well. Nearly every article, book, and interview lists is as the most important skill in building a successful enterprise. After all — you don’t get to make every decision, but you do get to choose the decision makers.")

# puts 'Hiring collection created'

# hiring_titles = ["How To Hire", "Here's why you're not hiring the best and the brightest", "Hiring religion", "Here's the advice I give all of our first time founders"]

# hiring_descriptions = ["Many founders hire just because it seems like a cool thing to do, and people always ask how many employees you have. Companies generally work better when they are smaller. It’s always worth spending time to think about the least amount of projects/work you can feasibly do, and then having as small a team as possible to do it. Don’t hire for the sake of hiring. Hire because there is no other way to do what you want to do.", "If you want to determine beyond a shadow of a doubt whether someone’s going to be a great hire, give them an audition project — even before having them speak to other employees on your team. I’m not talking about a generic, abstract problem. I’m talking about a real world, honest-to-God unit of work that you need done right now today on your actual product. It should be something you would give to a current employee, if they weren’t all so busy.", "A point that seemed unique among resources, yet important (and very much appreciated by the job seekers of the world) is to move quickly and smoothly. Paul English talks about the 7-day rule of hiring. Moving this fast is a serious advantage to snap up talent.", "When you do the math on an amazing prospective hire, it’s probably worth paying several months of unexpected salary to land incredible talent and jumpstart a part of your business you already know you’ll need. “When you happen to come across these really good people, don’t let an arbitrary schedule tell you you don’t need them until March of next year. Just get them in the door,” Hayes says. “You’ll get all that time back that you would have spent in the recruiting process too."]

# hiring_urls = ["http://blog.samaltman.com/how-to-hire", "http://firstround.com/review/Heres-Why-Youre-Not-Hiring-the-Best-and-the-Brightest/", "http://paulenglish.com/hiring.html", "http://firstround.com/review/Heres-the-Advice-I-Give-All-of-Our-First-Time-Founders/"]

# 4.times do |x|
#   User.first.resources.create(:title => hiring_titles[x],
#                               :description => hiring_descriptions[x],
#                               :url => hiring_urls[x],
#                               :collection_id => Collection.last.id)
# end

# puts 'Custom resources created'

# Collection.all.each do |collection|
#   collection.synthesis = collection.resources.sample
#   collection.save
# end

# puts 'Syntheses Added'

# (3 * MULTIPLIER).times do
#   User.create(:email => Faker::Internet.email,
#               :username => Faker::Internet.user_name,
#               :password => "password",
#               :password_confirmation => "password",
#               :user_type => "reader")
# end

# puts 'Created random readers'

# Resource.all.each do |resource|
#   User.all.each do |user|
#     if (rand(10) > 6)
#       resource.upvotes.create(user_id: user.id)
#     end
#   end
# end

# puts 'Upvotes Added'

CSV.foreach("#{Rails.root}/public/files/import1.csv", :headers => true) do |row|
  Resource.create(row.to_hash)
end

puts 'Resources Imported'

puts 'SEEDING COMPLETE'