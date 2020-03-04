# README

Install Action Text and Active Storage

* Add the below entry in Gemfile and run bundle
  gem 'image_processing', '~> 1.2'

* Run "rails action_text:install" from command/terminal

* Run db:migrate

* Add the below entry to the model
  has_rich_text :body   
  (NOTE: the name here can be anything, in this case I chose to call body)

* In the html add the below for rich text field
 <%= form.rich_text_area :body %>  

 * Install Active Storage
 rails active_storage:install