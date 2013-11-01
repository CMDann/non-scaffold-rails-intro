class InfoController < ApplicationController
  # Although these controller actions are
  # all empty. We create here such that it is
  # obvious which views exist.
  
  # Three routes have been defined for these
  # actions in the confin/routes.rb file.
  
  def index
  end # Automatically loads: app/views/info/index.html.erb
  
  def about
  end # loads: app/views/info/about.html.erb
  
  def contact
  end # loads: app/views/info/contact.html.erb
end
