require 'pry'
require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper

  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end

  #<h2>Web Development Immersive</h2>
  #<em class="date">Full-Time</em>
  #<p>An intensive, Ruby and Javascript course that teaches the skills necessary to start a career as a full-stack software developer.</p>

  def get_page
    doc = Nokogiri::HTML(open("https://learn-co-curriculum.github.io/site-for-scraping/courses")

    binding.pry 
  end

  def get_courses

  end

  def make_courses

  end

end
