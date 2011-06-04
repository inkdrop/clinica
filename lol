commit c2753322dbeea2f1854524d7aafd19ed474a1ef2
Author: jnwelzel <jnwelzel@gmail.com>
Date:   Sat Jun 4 02:05:07 2011 -0300

    commit inicial

diff --git a/.gitignore b/.gitignore
new file mode 100644
index 0000000..af64fae
--- /dev/null
+++ b/.gitignore
@@ -0,0 +1,4 @@
+.bundle
+db/*.sqlite3
+log/*.log
+tmp/**/*
diff --git a/Gemfile b/Gemfile
new file mode 100644
index 0000000..7f3ab3a
--- /dev/null
+++ b/Gemfile
@@ -0,0 +1,33 @@
+source 'http://rubygems.org'
+
+gem 'rails', '3.0.3'
+
+# Bundle edge Rails instead:
+# gem 'rails', :git => 'git://github.com/rails/rails.git'
+
+gem 'sqlite3-ruby', :require => 'sqlite3'
+
+# Use unicorn as the web server
+# gem 'unicorn'
+
+# Deploy with Capistrano
+# gem 'capistrano'
+
+# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
+# gem 'ruby-debug'
+# gem 'ruby-debug19'
+
+# Bundle the extra gems:
+# gem 'bj'
+# gem 'nokogiri'
+# gem 'sqlite3-ruby', :require => 'sqlite3'
+# gem 'aws-s3', :require => 'aws/s3'
+
+# Bundle gems for the local environment. Make sure to
+# put test-only gems in this group so their generators
+# and rake tasks are available in development mode:
+# group :development, :test do
+#   gem 'webrat'
+# end
+
+gem 'devise'
diff --git a/Gemfile.lock b/Gemfile.lock
new file mode 100644
index 0000000..898c466
--- /dev/null
+++ b/Gemfile.lock
@@ -0,0 +1,80 @@
+GEM
+  remote: http://rubygems.org/
+  specs:
+    abstract (1.0.0)
+    actionmailer (3.0.3)
+      actionpack (= 3.0.3)
+      mail (~> 2.2.9)
+    actionpack (3.0.3)
+      activemodel (= 3.0.3)
+      activesupport (= 3.0.3)
+      builder (~> 2.1.2)
+      erubis (~> 2.6.6)
+      i18n (~> 0.4)
+      rack (~> 1.2.1)
+      rack-mount (~> 0.6.13)
+      rack-test (~> 0.5.6)
+      tzinfo (~> 0.3.23)
+    activemodel (3.0.3)
+      activesupport (= 3.0.3)
+      builder (~> 2.1.2)
+      i18n (~> 0.4)
+    activerecord (3.0.3)
+      activemodel (= 3.0.3)
+      activesupport (= 3.0.3)
+      arel (~> 2.0.2)
+      tzinfo (~> 0.3.23)
+    activeresource (3.0.3)
+      activemodel (= 3.0.3)
+      activesupport (= 3.0.3)
+    activesupport (3.0.3)
+    arel (2.0.7)
+    bcrypt-ruby (2.1.4)
+    builder (2.1.2)
+    devise (1.1.5)
+      bcrypt-ruby (~> 2.1.2)
+      warden (~> 1.0.2)
+    erubis (2.6.6)
+      abstract (>= 1.0.0)
+    i18n (0.5.0)
+    mail (2.2.14)
+      activesupport (>= 2.3.6)
+      i18n (>= 0.4.0)
+      mime-types (~> 1.16)
+      treetop (~> 1.4.8)
+    mime-types (1.16)
+    polyglot (0.3.1)
+    rack (1.2.1)
+    rack-mount (0.6.13)
+      rack (>= 1.0.0)
+    rack-test (0.5.7)
+      rack (>= 1.0)
+    rails (3.0.3)
+      actionmailer (= 3.0.3)
+      actionpack (= 3.0.3)
+      activerecord (= 3.0.3)
+      activeresource (= 3.0.3)
+      activesupport (= 3.0.3)
+      bundler (~> 1.0)
+      railties (= 3.0.3)
+    railties (3.0.3)
+      actionpack (= 3.0.3)
+      activesupport (= 3.0.3)
+      rake (>= 0.8.7)
+      thor (~> 0.14.4)
+    rake (0.8.7)
+    sqlite3-ruby (1.3.2)
+    thor (0.14.6)
+    treetop (1.4.9)
+      polyglot (>= 0.3.1)
+    tzinfo (0.3.23)
+    warden (1.0.3)
+      rack (>= 1.0.0)
+
+PLATFORMS
+  ruby
+
+DEPENDENCIES
+  devise
+  rails (= 3.0.3)
+  sqlite3-ruby
diff --git a/README b/README
new file mode 100644
index 0000000..fe7013d
--- /dev/null
+++ b/README
@@ -0,0 +1,256 @@
+== Welcome to Rails
+
+Rails is a web-application framework that includes everything needed to create
+database-backed web applications according to the Model-View-Control pattern.
+
+This pattern splits the view (also called the presentation) into "dumb"
+templates that are primarily responsible for inserting pre-built data in between
+HTML tags. The model contains the "smart" domain objects (such as Account,
+Product, Person, Post) that holds all the business logic and knows how to
+persist themselves to a database. The controller handles the incoming requests
+(such as Save New Account, Update Product, Show Post) by manipulating the model
+and directing data to the view.
+
+In Rails, the model is handled by what's called an object-relational mapping
+layer entitled Active Record. This layer allows you to present the data from
+database rows as objects and embellish these data objects with business logic
+methods. You can read more about Active Record in
+link:files/vendor/rails/activerecord/README.html.
+
+The controller and view are handled by the Action Pack, which handles both
+layers by its two parts: Action View and Action Controller. These two layers
+are bundled in a single package due to their heavy interdependence. This is
+unlike the relationship between the Active Record and Action Pack that is much
+more separate. Each of these packages can be used independently outside of
+Rails. You can read more about Action Pack in
+link:files/vendor/rails/actionpack/README.html.
+
+
+== Getting Started
+
+1. At the command prompt, create a new Rails application:
+       <tt>rails new myapp</tt> (where <tt>myapp</tt> is the application name)
+
+2. Change directory to <tt>myapp</tt> and start the web server:
+       <tt>cd myapp; rails server</tt> (run with --help for options)
+
+3. Go to http://localhost:3000/ and you'll see:
+       "Welcome aboard: You're riding Ruby on Rails!"
+
+4. Follow the guidelines to start developing your application. You can find
+the following resources handy:
+
+* The Getting Started Guide: http://guides.rubyonrails.org/getting_started.html
+* Ruby on Rails Tutorial Book: http://www.railstutorial.org/
+
+
+== Debugging Rails
+
+Sometimes your application goes wrong. Fortunately there are a lot of tools that
+will help you debug it and get it back on the rails.
+
+First area to check is the application log files. Have "tail -f" commands
+running on the server.log and development.log. Rails will automatically display
+debugging and runtime information to these files. Debugging info will also be
+shown in the browser on requests from 127.0.0.1.
+
+You can also log your own messages directly into the log file from your code
+using the Ruby logger class from inside your controllers. Example:
+
+  class WeblogController < ActionController::Base
+    def destroy
+      @weblog = Weblog.find(params[:id])
+      @weblog.destroy
+      logger.info("#{Time.now} Destroyed Weblog ID ##{@weblog.id}!")
+    end
+  end
+
+The result will be a message in your log file along the lines of:
+
+  Mon Oct 08 14:22:29 +1000 2007 Destroyed Weblog ID #1!
+
+More information on how to use the logger is at http://www.ruby-doc.org/core/
+
+Also, Ruby documentation can be found at http://www.ruby-lang.org/. There are
+several books available online as well:
+
+* Programming Ruby: http://www.ruby-doc.org/docs/ProgrammingRuby/ (Pickaxe)
+* Learn to Program: http://pine.fm/LearnToProgram/ (a beginners guide)
+
+These two books will bring you up to speed on the Ruby language and also on
+programming in general.
+
+
+== Debugger
+
+Debugger support is available through the debugger command when you start your
+Mongrel or WEBrick server with --debugger. This means that you can break out of
+execution at any point in the code, investigate and change the model, and then,
+resume execution! You need to install ruby-debug to run the server in debugging
+mode. With gems, use <tt>sudo gem install ruby-debug</tt>. Example:
+
+  class WeblogController < ActionController::Base
+    def index
+      @posts = Post.find(:all)
+      debugger
+    end
+  end
+
+So the controller will accept the action, run the first line, then present you
+with a IRB prompt in the server window. Here you can do things like:
+
+  >> @posts.inspect
+  => "[#<Post:0x14a6be8
+          @attributes={"title"=>nil, "body"=>nil, "id"=>"1"}>,
+       #<Post:0x14a6620
+          @attributes={"title"=>"Rails", "body"=>"Only ten..", "id"=>"2"}>]"
+  >> @posts.first.title = "hello from a debugger"
+  => "hello from a debugger"
+
+...and even better, you can examine how your runtime objects actually work:
+
+  >> f = @posts.first
+  => #<Post:0x13630c4 @attributes={"title"=>nil, "body"=>nil, "id"=>"1"}>
+  >> f.
+  Display all 152 possibilities? (y or n)
+
+Finally, when you're ready to resume execution, you can enter "cont".
+
+
+== Console
+
+The console is a Ruby shell, which allows you to interact with your
+application's domain model. Here you'll have all parts of the application
+configured, just like it is when the application is running. You can inspect
+domain models, change values, and save to the database. Starting the script
+without arguments will launch it in the development environment.
+
+To start the console, run <tt>rails console</tt> from the application
+directory.
+
+Options:
+
+* Passing the <tt>-s, --sandbox</tt> argument will rollback any modifications
+  made to the database.
+* Passing an environment name as an argument will load the corresponding
+  environment. Example: <tt>rails console production</tt>.
+
+To reload your controllers and models after launching the console run
+<tt>reload!</tt>
+
+More information about irb can be found at:
+link:http://www.rubycentral.com/pickaxe/irb.html
+
+
+== dbconsole
+
+You can go to the command line of your database directly through <tt>rails
+dbconsole</tt>. You would be connected to the database with the credentials
+defined in database.yml. Starting the script without arguments will connect you
+to the development database. Passing an argument will connect you to a different
+database, like <tt>rails dbconsole production</tt>. Currently works for MySQL,
+PostgreSQL and SQLite 3.
+
+== Description of Contents
+
+The default directory structure of a generated Ruby on Rails application:
+
+  |-- app
+  |   |-- controllers
+  |   |-- helpers
+  |   |-- mailers
+  |   |-- models
+  |   `-- views
+  |       `-- layouts
+  |-- config
+  |   |-- environments
+  |   |-- initializers
+  |   `-- locales
+  |-- db
+  |-- doc
+  |-- lib
+  |   `-- tasks
+  |-- log
+  |-- public
+  |   |-- images
+  |   |-- javascripts
+  |   `-- stylesheets
+  |-- script
+  |-- test
+  |   |-- fixtures
+  |   |-- functional
+  |   |-- integration
+  |   |-- performance
+  |   `-- unit
+  |-- tmp
+  |   |-- cache
+  |   |-- pids
+  |   |-- sessions
+  |   `-- sockets
+  `-- vendor
+      `-- plugins
+
+app
+  Holds all the code that's specific to this particular application.
+
+app/controllers
+  Holds controllers that should be named like weblogs_controller.rb for
+  automated URL mapping. All controllers should descend from
+  ApplicationController which itself descends from ActionController::Base.
+
+app/models
+  Holds models that should be named like post.rb. Models descend from
+  ActiveRecord::Base by default.
+
+app/views
+  Holds the template files for the view that should be named like
+  weblogs/index.html.erb for the WeblogsController#index action. All views use
+  eRuby syntax by default.
+
+app/views/layouts
+  Holds the template files for layouts to be used with views. This models the
+  common header/footer method of wrapping views. In your views, define a layout
+  using the <tt>layout :default</tt> and create a file named default.html.erb.
+  Inside default.html.erb, call <% yield %> to render the view using this
+  layout.
+
+app/helpers
+  Holds view helpers that should be named like weblogs_helper.rb. These are
+  generated for you automatically when using generators for controllers.
+  Helpers can be used to wrap functionality for your views into methods.
+
+config
+  Configuration files for the Rails environment, the routing map, the database,
+  and other dependencies.
+
+db
+  Contains the database schema in schema.rb. db/migrate contains all the
+  sequence of Migrations for your schema.
+
+doc
+  This directory is where your application documentation will be stored when
+  generated using <tt>rake doc:app</tt>
+
+lib
+  Application specific libraries. Basically, any kind of custom code that
+  doesn't belong under controllers, models, or helpers. This directory is in
+  the load path.
+
+public
+  The directory available for the web server. Contains subdirectories for
+  images, stylesheets, and javascripts. Also contains the dispatchers and the
+  default HTML files. This should be set as the DOCUMENT_ROOT of your web
+  server.
+
+script
+  Helper scripts for automation and generation.
+
+test
+  Unit and functional tests along with fixtures. When using the rails generate
+  command, template test files will be generated for you and placed in this
+  directory.
+
+vendor
+  External libraries that the application depends on. Also includes the plugins
+  subdirectory. If the app has frozen rails, those gems also go here, under
+  vendor/rails/. This directory is in the load path.
diff --git a/Rakefile b/Rakefile
new file mode 100644
index 0000000..8e8014d
--- /dev/null
+++ b/Rakefile
@@ -0,0 +1,7 @@
+# Add your own tasks in files placed in lib/tasks ending in .rake,
+# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.
+
+require File.expand_path('../config/application', __FILE__)
+require 'rake'
+
+Clinica::Application.load_tasks
diff --git a/app/controllers/application_controller.rb b/app/controllers/application_controller.rb
new file mode 100644
index 0000000..e8065d9
--- /dev/null
+++ b/app/controllers/application_controller.rb
@@ -0,0 +1,3 @@
+class ApplicationController < ActionController::Base
+  protect_from_forgery
+end
diff --git a/app/controllers/home_controller.rb b/app/controllers/home_controller.rb
new file mode 100644
index 0000000..2435558
--- /dev/null
+++ b/app/controllers/home_controller.rb
@@ -0,0 +1,6 @@
+class HomeController < ApplicationController
+
+  def index
+  end
+
+end
diff --git a/app/controllers/news_controller.rb b/app/controllers/news_controller.rb
new file mode 100644
index 0000000..56bf37b
--- /dev/null
+++ b/app/controllers/news_controller.rb
@@ -0,0 +1,83 @@
+class NewsController < ApplicationController
+  # GET /news
+  # GET /news.xml
+  def index
+    @news = News.all
+
+    respond_to do |format|
+      format.html # index.html.erb
+      format.xml  { render :xml => @news }
+    end
+  end
+
+  # GET /news/1
+  # GET /news/1.xml
+  def show
+    @news = News.find(params[:id])
+
+    respond_to do |format|
+      format.html # show.html.erb
+      format.xml  { render :xml => @news }
+    end
+  end
+
+  # GET /news/new
+  # GET /news/new.xml
+  def new
+    @news = News.new
+
+    respond_to do |format|
+      format.html # new.html.erb
+      format.xml  { render :xml => @news }
+    end
+  end
+
+  # GET /news/1/edit
+  def edit
+    @news = News.find(params[:id])
+  end
+
+  # POST /news
+  # POST /news.xml
+  def create
+    @news = News.new(params[:news])
+
+    respond_to do |format|
+      if @news.save
+        format.html { redirect_to(@news, :notice => 'News was successfully created.') }
+        format.xml  { render :xml => @news, :status => :created, :location => @news }
+      else
+        format.html { render :action => "new" }
+        format.xml  { render :xml => @news.errors, :status => :unprocessable_entity }
+      end
+    end
+  end
+
+  # PUT /news/1
+  # PUT /news/1.xml
+  def update
+    @news = News.find(params[:id])
+
+    respond_to do |format|
+      if @news.update_attributes(params[:news])
+        format.html { redirect_to(@news, :notice => 'News was successfully updated.') }
+        format.xml  { head :ok }
+      else
+        format.html { render :action => "edit" }
+        format.xml  { render :xml => @news.errors, :status => :unprocessable_entity }
+      end
+    end
+  end
+
+  # DELETE /news/1
+  # DELETE /news/1.xml
+  def destroy
+    @news = News.find(params[:id])
+    @news.destroy
+
+    respond_to do |format|
+      format.html { redirect_to(news_index_url) }
+      format.xml  { head :ok }
+    end
+  end
+end
diff --git a/app/controllers/subjects_controller.rb b/app/controllers/subjects_controller.rb
new file mode 100644
index 0000000..f1773aa
--- /dev/null
+++ b/app/controllers/subjects_controller.rb
@@ -0,0 +1,84 @@
+class SubjectsController < ApplicationController
+  # GET /subjects
+  # GET /subjects.xml
+  def index
+    @subjects = Subject.all
+
+    respond_to do |format|
+      format.html # index.html.erb
+      format.xml  { render :xml => @subjects }
+    end
+  end
+
+  # GET /subjects/1
+  # GET /subjects/1.xml
+  def show
+    @subject = Subject.find(params[:id])
+
+    respond_to do |format|
+      format.html # show.html.erb
+      format.xml  { render :xml => @subject }
+    end
+  end
+
+  # GET /subjects/new
+  # GET /subjects/new.xml
+  def new
+    @subject = Subject.new
+
+    respond_to do |format|
+      format.html # new.html.erb
+      format.xml  { render :xml => @subject }
+    end
+  end
+
+  # GET /subjects/1/edit
+  def edit
+    @subject = Subject.find(params[:id])
+  end
+
+  # POST /subjects
+  # POST /subjects.xml
+  def create
+    @subject = Subject.new(params[:subject])
+    @subject.user = current_user
+
+    respond_to do |format|
+      if @subject.save
+        format.html { redirect_to(@subject, :notice => 'Subject was successfully created.') }
+        format.xml  { render :xml => @subject, :status => :created, :location => @subject }
+      else
+        format.html { render :action => "new" }
+        format.xml  { render :xml => @subject.errors, :status => :unprocessable_entity }
+      end
+    end
+  end
+
+  # PUT /subjects/1
+  # PUT /subjects/1.xml
+  def update
+    @subject = Subject.find(params[:id])
+
+    respond_to do |format|
+      if @subject.update_attributes(params[:subject])
+        format.html { redirect_to(@subject, :notice => 'Subject was successfully updated.') }
+        format.xml  { head :ok }
+      else
+        format.html { render :action => "edit" }
+        format.xml  { render :xml => @subject.errors, :status => :unprocessable_entity }
+      end
+    end
+  end
+
+  # DELETE /subjects/1
+  # DELETE /subjects/1.xml
+  def destroy
+    @subject = Subject.find(params[:id])
+    @subject.destroy
+
+    respond_to do |format|
+      format.html { redirect_to(subjects_url) }
+      format.xml  { head :ok }
+    end
+  end
+end
diff --git a/app/controllers/topics_controller.rb b/app/controllers/topics_controller.rb
new file mode 100644
index 0000000..45a4e21
--- /dev/null
+++ b/app/controllers/topics_controller.rb
@@ -0,0 +1,81 @@
+class TopicsController < ApplicationController
+  # GET /topics
+  # GET /topics.xml
+  def index
+    @subject = Subject.find(params[:subject_id])
+    @topics = @subject.topics
+
+    respond_to do |format|
+      format.html # index.html.erb
+      format.xml  { render :xml => @topics }
+    end
+  end
+
+  # GET /topics/1
+  # GET /topics/1.xml
+  def show
+    @topic = Topic.find(params[:id])
+
+    respond_to do |format|
+      format.html # show.html.erb
+      format.xml  { render :xml => @topic }
+    end
+  end
+
+  # GET /topics/new
+  # GET /topics/new.xml
+  def new
+    @topic = Topic.new
+    @topic.user = current_user
+    @subject = Subject.find(params[:subject_id])
+
+    respond_to do |format|
+      format.html # new.html.erb
+      format.xml  { render :xml => @topic }
+    end
+  end
+
+  # GET /topics/1/edit
+  def edit
+    @topic = Topic.find(params[:id])
+  end
+
+  # POST /topics
+  # POST /topics.xml
+  def create
+    @subject = Subject.find(params[:subject_id])
+    @topic = @subject.topics.create(params[:topic])
+    @topic.user = current_user
+    @topic.save
+
+    redirect_to subject_path(@subject)
+  end
+
+  # PUT /topics/1
+  # PUT /topics/1.xml
+  def update
+    @topic = Topic.find(params[:id])
+
+    respond_to do |format|
+      if @topic.update_attributes(params[:topic])
+        format.html { redirect_to(@topic, :notice => 'Topic was successfully updated.') }
+        format.xml  { head :ok }
+      else
+        format.html { render :action => "edit" }
+        format.xml  { render :xml => @topic.errors, :status => :unprocessable_entity }
+      end
+    end
+  end
+
+  # DELETE /topics/1
+  # DELETE /topics/1.xml
+  def destroy
+    @topic = Topic.find(params[:id])
+    @topic.destroy
+
+    respond_to do |format|
+      format.html { redirect_to(topics_url) }
+      format.xml  { head :ok }
+    end
+  end
+end
diff --git a/app/helpers/application_helper.rb b/app/helpers/application_helper.rb
new file mode 100644
index 0000000..de6be79
--- /dev/null
+++ b/app/helpers/application_helper.rb
@@ -0,0 +1,2 @@
+module ApplicationHelper
+end
diff --git a/app/helpers/home_helper.rb b/app/helpers/home_helper.rb
new file mode 100644
index 0000000..23de56a
--- /dev/null
+++ b/app/helpers/home_helper.rb
@@ -0,0 +1,2 @@
+module HomeHelper
+end
diff --git a/app/helpers/news_helper.rb b/app/helpers/news_helper.rb
new file mode 100644
index 0000000..9877c33
--- /dev/null
+++ b/app/helpers/news_helper.rb
@@ -0,0 +1,2 @@
+module NewsHelper
+end
diff --git a/app/helpers/subjects_helper.rb b/app/helpers/subjects_helper.rb
new file mode 100644
index 0000000..2e47f78
--- /dev/null
+++ b/app/helpers/subjects_helper.rb
@@ -0,0 +1,2 @@
+module SubjectsHelper
+end
diff --git a/app/helpers/topics_helper.rb b/app/helpers/topics_helper.rb
new file mode 100644
index 0000000..488eed5
--- /dev/null
+++ b/app/helpers/topics_helper.rb
@@ -0,0 +1,2 @@
+module TopicsHelper
+end
diff --git a/app/models/news.rb b/app/models/news.rb
new file mode 100644
index 0000000..d160a9a
--- /dev/null
+++ b/app/models/news.rb
@@ -0,0 +1,7 @@
+class News < ActiveRecord::Base
+  belongs_to :user
+  
+  def to_s
+    self.title
+  end
+end
diff --git a/app/models/subject.rb b/app/models/subject.rb
new file mode 100644
index 0000000..e257671
--- /dev/null
+++ b/app/models/subject.rb
@@ -0,0 +1,9 @@
+class Subject < ActiveRecord::Base
+  belongs_to :user
+  
+  has_many :topics
+  
+  def to_s
+    self.title
+  end
+end
diff --git a/app/models/topic.rb b/app/models/topic.rb
new file mode 100644
index 0000000..8adcaa9
--- /dev/null
+++ b/app/models/topic.rb
@@ -0,0 +1,8 @@
+class Topic < ActiveRecord::Base
+  belongs_to :user
+  belongs_to :subject
+
+  def to_s
+    self.title
+  end
+end
diff --git a/app/models/user.rb b/app/models/user.rb
new file mode 100644
index 0000000..19bf869
--- /dev/null
+++ b/app/models/user.rb
@@ -0,0 +1,16 @@
+class User < ActiveRecord::Base
+  # Include default devise modules. Others available are:
+  # :token_authenticatable, :confirmable, :lockable and :timeoutable
+  devise :database_authenticatable, :registerable,
+         :recoverable, :rememberable, :trackable, :validatable
+
+  # Setup accessible (or protected) attributes for your model
+  attr_accessible :email, :password, :password_confirmation, :remember_me, :name
+  has_many :news
+  has_many :subjects
+  has_many :topics
+  
+  def to_s
+    self.name
+  end
+end
diff --git a/app/views/devise/menu/_login_items.html.erb b/app/views/devise/menu/_login_items.html.erb
new file mode 100644
index 0000000..9878015
--- /dev/null
+++ b/app/views/devise/menu/_login_items.html.erb
@@ -0,0 +1,9 @@
+<% if user_signed_in? %>
+  <li>
+  <%= link_to('Logout', destroy_user_session_path) %>        
+  </li>
+<% else %>
+  <li>
+  <%= link_to('Login', new_user_session_path)  %>  
+  </li>
+<% end %>
diff --git a/app/views/devise/menu/_registration_items.html.erb b/app/views/devise/menu/_registration_items.html.erb
new file mode 100644
index 0000000..52df6f4
--- /dev/null
+++ b/app/views/devise/menu/_registration_items.html.erb
@@ -0,0 +1,9 @@
+<% if user_signed_in? %>
+  <li>
+  <%= link_to('Edit registration', edit_user_registration_path) %>
+  </li>
+<% else %>
+  <li>
+  <%= link_to('Register', new_user_registration_path)  %>
+  </li>
+<% end %>
diff --git a/app/views/home/index.html.erb b/app/views/home/index.html.erb
new file mode 100644
index 0000000..6d60635
--- /dev/null
+++ b/app/views/home/index.html.erb
@@ -0,0 +1 @@
+<h1>inicio</h1>
diff --git a/app/views/layouts/application.html.erb b/app/views/layouts/application.html.erb
new file mode 100644
index 0000000..2c48488
--- /dev/null
+++ b/app/views/layouts/application.html.erb
@@ -0,0 +1,23 @@
+<!DOCTYPE html>
+<html>
+<head>
+  <title>Clinica</title>
+  <%= stylesheet_link_tag :all %>
+  <%= javascript_include_tag :defaults %>
+  <%= csrf_meta_tag %>
+</head>
+<body>
+
+  <ul class="hmenu">
+    <%= render 'devise/menu/registration_items' %>
+    <%= render 'devise/menu/login_items' %>
+  </ul>
+
+
+  <p class="notice"><%= notice %></p>
+  <p class="alert"><%= alert %></p>
+
+<%= yield %>
+
+</body>
+</html>
diff --git a/app/views/news/_form.html.erb b/app/views/news/_form.html.erb
new file mode 100644
index 0000000..7262e6e
--- /dev/null
+++ b/app/views/news/_form.html.erb
@@ -0,0 +1,29 @@
+<%= form_for(@news) do |f| %>
+  <% if @news.errors.any? %>
+    <div id="error_explanation">
+      <h2><%= pluralize(@news.errors.count, "error") %> prohibited this news from being saved:</h2>
+
+      <ul>
+      <% @news.errors.full_messages.each do |msg| %>
+        <li><%= msg %></li>
+      <% end %>
+      </ul>
+    </div>
+  <% end %>
+
+  <div class="field">
+    <%= f.label :title %><br />
+    <%= f.text_field :title %>
+  </div>
+  <div class="field">
+    <%= f.label :content %><br />
+    <%= f.text_area :content %>
+  </div>
+  <div class="field">
+    <%= f.label :user %><br />
+    <%= f.text_field :user %>
+  </div>
+  <div class="actions">
+    <%= f.submit %>
+  </div>
+<% end %>
diff --git a/app/views/news/edit.html.erb b/app/views/news/edit.html.erb
new file mode 100644
index 0000000..00a591d
--- /dev/null
+++ b/app/views/news/edit.html.erb
@@ -0,0 +1,6 @@
+<h1>Editing news</h1>
+
+<%= render 'form' %>
+
+<%= link_to 'Show', @news %> |
+<%= link_to 'Back', news_index_path %>
diff --git a/app/views/news/index.html.erb b/app/views/news/index.html.erb
new file mode 100644
index 0000000..84a7919
--- /dev/null
+++ b/app/views/news/index.html.erb
@@ -0,0 +1,27 @@
+<h1>Listing news</h1>
+
+<table>
+  <tr>
+    <th>Title</th>
+    <th>Content</th>
+    <th>User</th>
+    <th></th>
+    <th></th>
+    <th></th>
+  </tr>
+
+<% @news.each do |news| %>
+  <tr>
+    <td><%= news.title %></td>
+    <td><%= news.content %></td>
+    <td><%= news.user %></td>
+    <td><%= link_to 'Show', news %></td>
+    <td><%= link_to 'Edit', edit_news_path(news) %></td>
+    <td><%= link_to 'Destroy', news, :confirm => 'Are you sure?', :method => :delete %></td>
+  </tr>
+<% end %>
+</table>
+
+<br />
+
+<%= link_to 'New News', new_news_path %>
diff --git a/app/views/news/new.html.erb b/app/views/news/new.html.erb
new file mode 100644
index 0000000..1893a37
--- /dev/null
+++ b/app/views/news/new.html.erb
@@ -0,0 +1,5 @@
+<h1>New news</h1>
+
+<%= render 'form' %>
+
+<%= link_to 'Back', news_index_path %>
diff --git a/app/views/news/show.html.erb b/app/views/news/show.html.erb
new file mode 100644
index 0000000..b4ec105
--- /dev/null
+++ b/app/views/news/show.html.erb
@@ -0,0 +1,20 @@
+<p id="notice"><%= notice %></p>
+
+<p>
+  <b>Title:</b>
+  <%= @news.title %>
+</p>
+
+<p>
+  <b>Content:</b>
+  <%= @news.content %>
+</p>
+
+<p>
+  <b>User:</b>
+  <%= @news.user %>
+</p>
+
+
+<%= link_to 'Edit', edit_news_path(@news) %> |
+<%= link_to 'Back', news_index_path %>
diff --git a/app/views/subjects/_form.html.erb b/app/views/subjects/_form.html.erb
new file mode 100644
index 0000000..10a8bef
--- /dev/null
+++ b/app/views/subjects/_form.html.erb
@@ -0,0 +1,33 @@
+<%= form_for(@subject) do |f| %>
+  <% if @subject.errors.any? %>
+    <div id="error_explanation">
+      <h2><%= pluralize(@subject.errors.count, "error") %> prohibited this subject from being saved:</h2>
+
+      <ul>
+      <% @subject.errors.full_messages.each do |msg| %>
+        <li><%= msg %></li>
+      <% end %>
+      </ul>
+    </div>
+  <% end %>
+
+  <div class="field">
+    <%= f.label :title %><br />
+    <%= f.text_field :title %>
+  </div>
+  <div class="field">
+    <%= f.label :description %><br />
+    <%= f.text_field :description %>
+  </div>
+  <div class="field">
+    <%= f.label :content %><br />
+    <%= f.text_area :content %>
+  </div>
+  <div class="field">
+    <%= f.label :user %><br />
+    <%= f.text_field :user %>
+  </div>
+  <div class="actions">
+    <%= f.submit %>
+  </div>
+<% end %>
diff --git a/app/views/subjects/edit.html.erb b/app/views/subjects/edit.html.erb
new file mode 100644
index 0000000..bc0045a
--- /dev/null
+++ b/app/views/subjects/edit.html.erb
@@ -0,0 +1,6 @@
+<h1>Editing subject</h1>
+
+<%= render 'form' %>
+
+<%= link_to 'Show', @subject %> |
+<%= link_to 'Back', subjects_path %>
diff --git a/app/views/subjects/index.html.erb b/app/views/subjects/index.html.erb
new file mode 100644
index 0000000..42857c8
--- /dev/null
+++ b/app/views/subjects/index.html.erb
@@ -0,0 +1,29 @@
+<h1>Listing subjects</h1>
+
+<table>
+  <tr>
+    <th>Title</th>
+    <th>Description</th>
+    <th>Content</th>
+    <th>User</th>
+    <th></th>
+    <th></th>
+    <th></th>
+  </tr>
+
+<% @subjects.each do |subject| %>
+  <tr>
+    <td><%= subject.title %></td>
+    <td><%= subject.description %></td>
+    <td><%= subject.content %></td>
+    <td><%= subject.user %></td>
+    <td><%= link_to 'Show', subject %></td>
+    <td><%= link_to 'Edit', edit_subject_path(subject) %></td>
+    <td><%= link_to 'Destroy', subject, :confirm => 'Are you sure?', :method => :delete %></td>
+  </tr>
+<% end %>
+</table>
+
+<br />
+
+<%= link_to 'New Subject', new_subject_path %>
diff --git a/app/views/subjects/new.html.erb b/app/views/subjects/new.html.erb
new file mode 100644
index 0000000..ee5618e
--- /dev/null
+++ b/app/views/subjects/new.html.erb
@@ -0,0 +1,5 @@
+<h1>New subject</h1>
+
+<%= render 'form' %>
+
+<%= link_to 'Back', subjects_path %>
diff --git a/app/views/subjects/show.html.erb b/app/views/subjects/show.html.erb
new file mode 100644
index 0000000..37fcb57
--- /dev/null
+++ b/app/views/subjects/show.html.erb
@@ -0,0 +1,26 @@
+<p id="notice"><%= notice %></p>
+
+<p>
+  <b>Title:</b>
+  <%= @subject.title %>
+</p>
+
+<p>
+  <b>Description:</b>
+  <%= @subject.description %>
+</p>
+
+<p>
+  <b>Content:</b>
+  <%= @subject.content %>
+</p>
+
+<p>
+  <b>User:</b>
+  <%= @subject.user %>
+</p>
+
+
+<%= link_to 'Edit', edit_subject_path(@subject) %> |
+<%= link_to 'Back', subjects_path %> |
+<%= link_to 'New Topic', new_subject_topic_path(@subject) %>
diff --git a/app/views/topics/_form.html.erb b/app/views/topics/_form.html.erb
new file mode 100644
index 0000000..cf0f545
--- /dev/null
+++ b/app/views/topics/_form.html.erb
@@ -0,0 +1,32 @@
+<%= form_for([@subject,@subject.topics.build]) do |f| %>
+  <% if @topic.errors.any? %>
+    <div id="error_explanation">
+      <h2><%= pluralize(@topic.errors.count, "error") %> prohibited this topic from being saved:</h2>
+
+      <ul>
+      <% @topic.errors.full_messages.each do |msg| %>
+        <li><%= msg %></li>
+      <% end %>
+      </ul>
+    </div>
+  <% end %>
+
+  <div class="field">
+    <%= f.label :title %><br />
+    <%= f.text_field :title %>
+  </div>
+
+  <div class="field">
+    <%= f.label :description %><br />
+    <%= f.text_field :description %>
+  </div>
+
+  <div class="field">
+    <%= f.label :content %><br />
+    <%= f.text_area :content %>
+  </div>
+  
+  <div class="actions">
+    <%= f.submit %>
+  </div>
+<% end %>
diff --git a/app/views/topics/edit.html.erb b/app/views/topics/edit.html.erb
new file mode 100644
index 0000000..5622de1
--- /dev/null
+++ b/app/views/topics/edit.html.erb
@@ -0,0 +1,6 @@
+<h1>Editing topic</h1>
+
+<%= render 'form' %>
+
+<%= link_to 'Show', @topic %> |
+<%= link_to 'Back', topics_path %>
diff --git a/app/views/topics/index.html.erb b/app/views/topics/index.html.erb
new file mode 100644
index 0000000..4e14b86
--- /dev/null
+++ b/app/views/topics/index.html.erb
@@ -0,0 +1,28 @@
+<h1><%= @subject.title %> > Listing topics</h1>
+
+<table>
+  <tr>
+    <th>Title</th>
+    <th>Description</th>
+    <th>Content</th>
+    <th>User</th>
+    <th>Subject</th>
+    <th></th>
+    <th></th>
+    <th></th>
+  </tr>
+
+<% @topics.each do |topic| %>
+  <tr>
+    <td><%= topic.title %></td>
+    <td><%= topic.description %></td>
+    <td><%= topic.content %></td>
+    <td><%= topic.user %></td>
+    <td><%= topic.subject %></td>
+    <td><%= link_to 'Show', subject_topic_path(topic.subject,topic) %></td>
+  </tr>
+<% end %>
+</table>
+
+<br />
+
diff --git a/app/views/topics/new.html.erb b/app/views/topics/new.html.erb
new file mode 100644
index 0000000..7877fa0
--- /dev/null
+++ b/app/views/topics/new.html.erb
@@ -0,0 +1,5 @@
+<h1><%= @subject.title %> > New topic</h1>
+
+<%= render 'form' %>
+
+<%= link_to 'Back', subject_path(@subject) %>
diff --git a/app/views/topics/show.html.erb b/app/views/topics/show.html.erb
new file mode 100644
index 0000000..ab60fe1
--- /dev/null
+++ b/app/views/topics/show.html.erb
@@ -0,0 +1,30 @@
+<p id="notice"><%= notice %></p>
+
+<p>
+  <b>Title:</b>
+  <%= @topic.title %>
+</p>
+
+<p>
+  <b>Description:</b>
+  <%= @topic.description %>
+</p>
+
+<p>
+  <b>Content:</b>
+  <%= @topic.content %>
+</p>
+
+<p>
+  <b>User:</b>
+  <%= @topic.user %>
+</p>
+
+<p>
+  <b>Subject:</b>
+  <%= @topic.subject %>
+</p>
+
+
+<%= link_to 'Edit', edit_topic_path(@topic) %> |
+<%= link_to 'Back', topics_path %>
diff --git a/config.ru b/config.ru
new file mode 100644
index 0000000..f15a35a
--- /dev/null
+++ b/config.ru
@@ -0,0 +1,4 @@
+# This file is used by Rack-based servers to start the application.
+
+require ::File.expand_path('../config/environment',  __FILE__)
+run Clinica::Application
diff --git a/config/application.rb b/config/application.rb
new file mode 100644
index 0000000..5ab9967
--- /dev/null
+++ b/config/application.rb
@@ -0,0 +1,42 @@
+require File.expand_path('../boot', __FILE__)
+
+require 'rails/all'
+
+# If you have a Gemfile, require the gems listed there, including any gems
+# you've limited to :test, :development, or :production.
+Bundler.require(:default, Rails.env) if defined?(Bundler)
+
+module Clinica
+  class Application < Rails::Application
+    # Settings in config/environments/* take precedence over those specified here.
+    # Application configuration should go into files in config/initializers
+    # -- all .rb files in that directory are automatically loaded.
+
+    # Custom directories with classes and modules you want to be autoloadable.
+    # config.autoload_paths += %W(#{config.root}/extras)
+
+    # Only load the plugins named here, in the order given (default is alphabetical).
+    # :all can be used as a placeholder for all plugins not explicitly named.
+    # config.plugins = [ :exception_notification, :ssl_requirement, :all ]
+
+    # Activate observers that should always be running.
+    # config.active_record.observers = :cacher, :garbage_collector, :forum_observer
+
+    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
+    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
+    # config.time_zone = 'Central Time (US & Canada)'
+
+    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
+    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
+    # config.i18n.default_locale = :de
+
+    # JavaScript files you want as :defaults (application.js is always included).
+    # config.action_view.javascript_expansions[:defaults] = %w(jquery rails)
+
+    # Configure the default encoding used in templates for Ruby 1.9.
+    config.encoding = "utf-8"
+
+    # Configure sensitive parameters which will be filtered from the log file.
+    config.filter_parameters += [:password]
+  end
+end
diff --git a/config/boot.rb b/config/boot.rb
new file mode 100644
index 0000000..ab6cb37
--- /dev/null
+++ b/config/boot.rb
@@ -0,0 +1,13 @@
+require 'rubygems'
+
+# Set up gems listed in the Gemfile.
+gemfile = File.expand_path('../../Gemfile', __FILE__)
+begin
+  ENV['BUNDLE_GEMFILE'] = gemfile
+  require 'bundler'
+  Bundler.setup
+rescue Bundler::GemNotFound => e
+  STDERR.puts e.message
+  STDERR.puts "Try running `bundle install`."
+  exit!
+end if File.exist?(gemfile)
diff --git a/config/database.yml b/config/database.yml
new file mode 100644
index 0000000..025d62a
--- /dev/null
+++ b/config/database.yml
@@ -0,0 +1,22 @@
+# SQLite version 3.x
+#   gem install sqlite3-ruby (not necessary on OS X Leopard)
+development:
+  adapter: sqlite3
+  database: db/development.sqlite3
+  pool: 5
+  timeout: 5000
+
+# Warning: The database defined as "test" will be erased and
+# re-generated from your development database when you run "rake".
+# Do not set this db to the same as development or production.
+test:
+  adapter: sqlite3
+  database: db/test.sqlite3
+  pool: 5
+  timeout: 5000
+
+production:
+  adapter: sqlite3
+  database: db/production.sqlite3
+  pool: 5
+  timeout: 5000
diff --git a/config/environment.rb b/config/environment.rb
new file mode 100644
index 0000000..3246e77
--- /dev/null
+++ b/config/environment.rb
@@ -0,0 +1,5 @@
+# Load the rails application
+require File.expand_path('../application', __FILE__)
+
+# Initialize the rails application
+Clinica::Application.initialize!
diff --git a/config/environments/development.rb b/config/environments/development.rb
new file mode 100644
index 0000000..6f85633
--- /dev/null
+++ b/config/environments/development.rb
@@ -0,0 +1,26 @@
+Clinica::Application.configure do
+  # Settings specified here will take precedence over those in config/application.rb
+
+  # In the development environment your application's code is reloaded on
+  # every request.  This slows down response time but is perfect for development
+  # since you don't have to restart the webserver when you make code changes.
+  config.cache_classes = false
+
+  # Log error messages when you accidentally call methods on nil.
+  config.whiny_nils = true
+
+  # Show full error reports and disable caching
+  config.consider_all_requests_local       = true
+  config.action_view.debug_rjs             = true
+  config.action_controller.perform_caching = false
+
+  # Don't care if the mailer can't send
+  config.action_mailer.raise_delivery_errors = false
+
+  # Print deprecation notices to the Rails logger
+  config.active_support.deprecation = :log
+
+  # Only use best-standards-support built into browsers
+  config.action_dispatch.best_standards_support = :builtin
+end
+
diff --git a/config/environments/production.rb b/config/environments/production.rb
new file mode 100644
index 0000000..b7d114c
--- /dev/null
+++ b/config/environments/production.rb
@@ -0,0 +1,49 @@
+Clinica::Application.configure do
+  # Settings specified here will take precedence over those in config/application.rb
+
+  # The production environment is meant for finished, "live" apps.
+  # Code is not reloaded between requests
+  config.cache_classes = true
+
+  # Full error reports are disabled and caching is turned on
+  config.consider_all_requests_local       = false
+  config.action_controller.perform_caching = true
+
+  # Specifies the header that your server uses for sending files
+  config.action_dispatch.x_sendfile_header = "X-Sendfile"
+
+  # For nginx:
+  # config.action_dispatch.x_sendfile_header = 'X-Accel-Redirect'
+
+  # If you have no front-end server that supports something like X-Sendfile,
+  # just comment this out and Rails will serve the files
+
+  # See everything in the log (default is :info)
+  # config.log_level = :debug
+
+  # Use a different logger for distributed setups
+  # config.logger = SyslogLogger.new
+
+  # Use a different cache store in production
+  # config.cache_store = :mem_cache_store
+
+  # Disable Rails's static asset server
+  # In production, Apache or nginx will already do this
+  config.serve_static_assets = false
+
+  # Enable serving of images, stylesheets, and javascripts from an asset server
+  # config.action_controller.asset_host = "http://assets.example.com"
+
+  # Disable delivery errors, bad email addresses will be ignored
+  # config.action_mailer.raise_delivery_errors = false
+
+  # Enable threaded mode
+  # config.threadsafe!
+
+  # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
+  # the I18n.default_locale when a translation can not be found)
+  config.i18n.fallbacks = true
+
+  # Send deprecation notices to registered listeners
+  config.active_support.deprecation = :notify
+end
diff --git a/config/environments/test.rb b/config/environments/test.rb
new file mode 100644
index 0000000..28a3e4c
--- /dev/null
+++ b/config/environments/test.rb
@@ -0,0 +1,35 @@
+Clinica::Application.configure do
+  # Settings specified here will take precedence over those in config/application.rb
+
+  # The test environment is used exclusively to run your application's
+  # test suite.  You never need to work with it otherwise.  Remember that
+  # your test database is "scratch space" for the test suite and is wiped
+  # and recreated between test runs.  Don't rely on the data there!
+  config.cache_classes = true
+
+  # Log error messages when you accidentally call methods on nil.
+  config.whiny_nils = true
+
+  # Show full error reports and disable caching
+  config.consider_all_requests_local       = true
+  config.action_controller.perform_caching = false
+
+  # Raise exceptions instead of rendering exception templates
+  config.action_dispatch.show_exceptions = false
+
+  # Disable request forgery protection in test environment
+  config.action_controller.allow_forgery_protection    = false
+
+  # Tell Action Mailer not to deliver emails to the real world.
+  # The :test delivery method accumulates sent emails in the
+  # ActionMailer::Base.deliveries array.
+  config.action_mailer.delivery_method = :test
+
+  # Use SQL instead of Active Record's schema dumper when creating the test database.
+  # This is necessary if your schema can't be completely dumped by the schema dumper,
+  # like if you have constraints or database-specific column types
+  # config.active_record.schema_format = :sql
+
+  # Print deprecation notices to the stderr
+  config.active_support.deprecation = :stderr
+end
diff --git a/config/initializers/backtrace_silencers.rb b/config/initializers/backtrace_silencers.rb
new file mode 100644
index 0000000..59385cd
--- /dev/null
+++ b/config/initializers/backtrace_silencers.rb
@@ -0,0 +1,7 @@
+# Be sure to restart your server when you modify this file.
+
+# You can add backtrace silencers for libraries that you're using but don't wish to see in your backtraces.
+# Rails.backtrace_cleaner.add_silencer { |line| line =~ /my_noisy_library/ }
+
+# You can also remove all the silencers if you're trying to debug a problem that might stem from framework code.
+# Rails.backtrace_cleaner.remove_silencers!
diff --git a/config/initializers/devise.rb b/config/initializers/devise.rb
new file mode 100644
index 0000000..f86aa26
--- /dev/null
+++ b/config/initializers/devise.rb
@@ -0,0 +1,142 @@
+# Use this hook to configure devise mailer, warden hooks and so forth. The first
+# four configuration values can also be set straight in your models.
+Devise.setup do |config|
+  # ==> Mailer Configuration
+  # Configure the e-mail address which will be shown in DeviseMailer.
+  config.mailer_sender = "please-change-me@config-initializers-devise.com"
+
+  # Configure the class responsible to send e-mails.
+  # config.mailer = "Devise::Mailer"
+
+  # ==> ORM configuration
+  # Load and configure the ORM. Supports :active_record (default) and
+  # :mongoid (bson_ext recommended) by default. Other ORMs may be
+  # available as additional gems.
+  require 'devise/orm/active_record'
+
+  # ==> Configuration for any authentication mechanism
+  # Configure which keys are used when authenticating an user. By default is
+  # just :email. You can configure it to use [:username, :subdomain], so for
+  # authenticating an user, both parameters are required. Remember that those
+  # parameters are used only when authenticating and not when retrieving from
+  # session. If you need permissions, you should implement that in a before filter.
+  # config.authentication_keys = [ :email ]
+
+  # Tell if authentication through request.params is enabled. True by default.
+  # config.params_authenticatable = true
+
+  # Tell if authentication through HTTP Basic Auth is enabled. False by default.
+  # config.http_authenticatable = false
+
+  # Set this to true to use Basic Auth for AJAX requests.  True by default.
+  # config.http_authenticatable_on_xhr = true
+
+  # The realm used in Http Basic Authentication
+  # config.http_authentication_realm = "Application"
+
+  # ==> Configuration for :database_authenticatable
+  # For bcrypt, this is the cost for hashing the password and defaults to 10. If
+  # using other encryptors, it sets how many times you want the password re-encrypted.
+  config.stretches = 10
+
+  # Define which will be the encryption algorithm. Devise also supports encryptors
+  # from others authentication tools as :clearance_sha1, :authlogic_sha512 (then
+  # you should set stretches above to 20 for default behavior) and :restful_authentication_sha1
+  # (then you should set stretches to 10, and copy REST_AUTH_SITE_KEY to pepper)
+  config.encryptor = :bcrypt
+
+  # Setup a pepper to generate the encrypted password.
+  config.pepper = "d1c8c6dcc99c25e3201cb3490c3d36bd2ea4068680913f28db3485b424b1053d1cc2ad4e96a90cbfb038a04d7c60454511f6eb1f994f294632330de93510740a"
+
+  # ==> Configuration for :confirmable
+  # The time you want to give your user to confirm his account. During this time
+  # he will be able to access your application without confirming. Default is nil.
+  # When confirm_within is zero, the user won't be able to sign in without confirming. 
+  # You can use this to let your user access some features of your application 
+  # without confirming the account, but blocking it after a certain period 
+  # (ie 2 days). 
+  # config.confirm_within = 2.days
+
+  # ==> Configuration for :rememberable
+  # The time the user will be remembered without asking for credentials again.
+  # config.remember_for = 2.weeks
+
+  # If true, a valid remember token can be re-used between multiple browsers.
+  # config.remember_across_browsers = true
+
+  # If true, extends the user's remember period when remembered via cookie.
+  # config.extend_remember_period = false
+
+  # ==> Configuration for :validatable
+  # Range for password length
+  # config.password_length = 6..20
+
+  # Regex to use to validate the email address
+  # config.email_regexp = /^([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})$/i
+
+  # ==> Configuration for :timeoutable
+  # The time you want to timeout the user session without activity. After this
+  # time the user will be asked for credentials again.
+  # config.timeout_in = 10.minutes
+
+  # ==> Configuration for :lockable
+  # Defines which strategy will be used to lock an account.
+  # :failed_attempts = Locks an account after a number of failed attempts to sign in.
+  # :none            = No lock strategy. You should handle locking by yourself.
+  # config.lock_strategy = :failed_attempts
+
+  # Defines which strategy will be used to unlock an account.
+  # :email = Sends an unlock link to the user email
+  # :time  = Re-enables login after a certain amount of time (see :unlock_in below)
+  # :both  = Enables both strategies
+  # :none  = No unlock strategy. You should handle unlocking by yourself.
+  # config.unlock_strategy = :both
+
+  # Number of authentication tries before locking an account if lock_strategy
+  # is failed attempts.
+  # config.maximum_attempts = 20
+
+  # Time interval to unlock the account if :time is enabled as unlock_strategy.
+  # config.unlock_in = 1.hour
+
+  # ==> Configuration for :token_authenticatable
+  # Defines name of the authentication token params key
+  # config.token_authentication_key = :auth_token
+
+  # ==> Scopes configuration
+  # Turn scoped views on. Before rendering "sessions/new", it will first check for
+  # "users/sessions/new". It's turned off by default because it's slower if you
+  # are using only default views.
+  # config.scoped_views = true
+
+  # Configure the default scope given to Warden. By default it's the first
+  # devise role declared in your routes.
+  # config.default_scope = :user
+
+  # Configure sign_out behavior. 
+  # By default sign_out is scoped (i.e. /users/sign_out affects only :user scope).
+  # In case of sign_out_all_scopes set to true any logout action will sign out all active scopes.
+  # config.sign_out_all_scopes = false
+
+  # ==> Navigation configuration
+  # Lists the formats that should be treated as navigational. Formats like
+  # :html, should redirect to the sign in page when the user does not have
+  # access, but formats like :xml or :json, should return 401.
+  # If you have any extra navigational formats, like :iphone or :mobile, you
+  # should add them to the navigational formats lists. Default is [:html]
+  # config.navigational_formats = [:html, :iphone]
+
+  # ==> Warden configuration
+  # If you want to use other strategies, that are not (yet) supported by Devise,
+  # you can configure them inside the config.warden block. The example below
+  # allows you to setup OAuth, using http://github.com/roman/warden_oauth
+  #
+  # config.warden do |manager|
+  #   manager.oauth(:twitter) do |twitter|
+  #     twitter.consumer_secret = <YOUR CONSUMER SECRET>
+  #     twitter.consumer_key  = <YOUR CONSUMER KEY>
+  #     twitter.options :site => 'http://twitter.com'
+  #   end
+  #   manager.default_strategies(:scope => :user).unshift :twitter_oauth
+  # end
+end
diff --git a/config/initializers/inflections.rb b/config/initializers/inflections.rb
new file mode 100644
index 0000000..9e8b013
--- /dev/null
+++ b/config/initializers/inflections.rb
@@ -0,0 +1,10 @@
+# Be sure to restart your server when you modify this file.
+
+# Add new inflection rules using the following format
+# (all these examples are active by default):
+# ActiveSupport::Inflector.inflections do |inflect|
+#   inflect.plural /^(ox)$/i, '\1en'
+#   inflect.singular /^(ox)en/i, '\1'
+#   inflect.irregular 'person', 'people'
+#   inflect.uncountable %w( fish sheep )
+# end
diff --git a/config/initializers/mime_types.rb b/config/initializers/mime_types.rb
new file mode 100644
index 0000000..72aca7e
--- /dev/null
+++ b/config/initializers/mime_types.rb
@@ -0,0 +1,5 @@
+# Be sure to restart your server when you modify this file.
+
+# Add new mime types for use in respond_to blocks:
+# Mime::Type.register "text/richtext", :rtf
+# Mime::Type.register_alias "text/html", :iphone
diff --git a/config/initializers/secret_token.rb b/config/initializers/secret_token.rb
new file mode 100644
index 0000000..4443a71
--- /dev/null
+++ b/config/initializers/secret_token.rb
@@ -0,0 +1,7 @@
+# Be sure to restart your server when you modify this file.
+
+# Your secret key for verifying the integrity of signed cookies.
+# If you change this key, all old signed cookies will become invalid!
+# Make sure the secret is at least 30 characters and all random,
+# no regular words or you'll be exposed to dictionary attacks.
+Clinica::Application.config.secret_token = '3552eb0b0adb89d8fc4ee263bf6a10a7b1b0ff68948bab11d0c11b1e3e1e6e3de8cb69120e1402a491104f7477ffa8e1ec62e4543f05f0b256c4b964027eb4d1'
diff --git a/config/initializers/session_store.rb b/config/initializers/session_store.rb
new file mode 100644
index 0000000..461204c
--- /dev/null
+++ b/config/initializers/session_store.rb
@@ -0,0 +1,8 @@
+# Be sure to restart your server when you modify this file.
+
+Clinica::Application.config.session_store :cookie_store, :key => '_clinica_session'
+
+# Use the database for sessions instead of the cookie-based default,
+# which shouldn't be used to store highly confidential information
+# (create the session table with "rails generate session_migration")
+# Clinica::Application.config.session_store :active_record_store
diff --git a/config/locales/devise.en.yml b/config/locales/devise.en.yml
new file mode 100644
index 0000000..5e4e433
--- /dev/null
+++ b/config/locales/devise.en.yml
@@ -0,0 +1,39 @@
+en:
+  errors:
+    messages:
+      not_found: "not found"
+      already_confirmed: "was already confirmed"
+      not_locked: "was not locked"
+
+  devise:
+    failure:
+      unauthenticated: 'You need to sign in or sign up before continuing.'
+      unconfirmed: 'You have to confirm your account before continuing.'
+      locked: 'Your account is locked.'
+      invalid: 'Invalid email or password.'
+      invalid_token: 'Invalid authentication token.'
+      timeout: 'Your session expired, please sign in again to continue.'
+      inactive: 'Your account was not activated yet.'
+    sessions:
+      signed_in: 'Signed in successfully.'
+      signed_out: 'Signed out successfully.'
+    passwords:
+      send_instructions: 'You will receive an email with instructions about how to reset your password in a few minutes.'
+      updated: 'Your password was changed successfully. You are now signed in.'
+    confirmations:
+      send_instructions: 'You will receive an email with instructions about how to confirm your account in a few minutes.'
+      confirmed: 'Your account was successfully confirmed. You are now signed in.'
+    registrations:
+      signed_up: 'You have signed up successfully. If enabled, a confirmation was sent to your e-mail.'
+      updated: 'You updated your account successfully.'
+      destroyed: 'Bye! Your account was successfully cancelled. We hope to see you again soon.'
+    unlocks:
+      send_instructions: 'You will receive an email with instructions about how to unlock your account in a few minutes.'
+      unlocked: 'Your account was successfully unlocked. You are now signed in.'
+    mailer:
+      confirmation_instructions:
+        subject: 'Confirmation instructions'
+      reset_password_instructions:
+        subject: 'Reset password instructions'
+      unlock_instructions:
+        subject: 'Unlock Instructions'
diff --git a/config/locales/en.yml b/config/locales/en.yml
new file mode 100644
index 0000000..a747bfa
--- /dev/null
+++ b/config/locales/en.yml
@@ -0,0 +1,5 @@
+# Sample localization file for English. Add more files in this directory for other locales.
+# See http://github.com/svenfuchs/rails-i18n/tree/master/rails%2Flocale for starting points.
+
+en:
+  hello: "Hello world"
diff --git a/config/routes.rb b/config/routes.rb
new file mode 100644
index 0000000..6587480
--- /dev/null
+++ b/config/routes.rb
@@ -0,0 +1,67 @@
+Clinica::Application.routes.draw do
+  devise_for :users
+
+  resources :news
+
+  resources :subjects do
+    resources :topics
+  end
+
+  # The priority is based upon order of creation:
+  # first created -> highest priority.
+
+  # Sample of regular route:
+  #   match 'products/:id' => 'catalog#view'
+  # Keep in mind you can assign values other than :controller and :action
+
+  # Sample of named route:
+  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
+  # This route can be invoked with purchase_url(:id => product.id)
+
+  # Sample resource route (maps HTTP verbs to controller actions automatically):
+  #   resources :products
+
+  # Sample resource route with options:
+  #   resources :products do
+  #     member do
+  #       get 'short'
+  #       post 'toggle'
+  #     end
+  #
+  #     collection do
+  #       get 'sold'
+  #     end
+  #   end
+
+  # Sample resource route with sub-resources:
+  #   resources :products do
+  #     resources :comments, :sales
+  #     resource :seller
+  #   end
+
+  # Sample resource route with more complex sub-resources
+  #   resources :products do
+  #     resources :comments
+  #     resources :sales do
+  #       get 'recent', :on => :collection
+  #     end
+  #   end
+
+  # Sample resource route within a namespace:
+  #   namespace :admin do
+  #     # Directs /admin/products/* to Admin::ProductsController
+  #     # (app/controllers/admin/products_controller.rb)
+  #     resources :products
+  #   end
+
+  # You can have the root of your site routed with "root"
+  # just remember to delete public/index.html.
+  root :to => "home#index"
+  get "home/index"
+
+  # See how all your routes lay out with "rake routes"
+
+  # This is a legacy wild controller route that's not recommended for RESTful applications.
+  # Note: This route will make all actions in every controller accessible via GET requests.
+  # match ':controller(/:action(/:id(.:format)))'
+end
diff --git a/db/migrate/20110409175733_create_users.rb b/db/migrate/20110409175733_create_users.rb
new file mode 100644
index 0000000..d3fe73e
--- /dev/null
+++ b/db/migrate/20110409175733_create_users.rb
@@ -0,0 +1,13 @@
+class CreateUsers < ActiveRecord::Migration
+  def self.up
+    create_table :users do |t|
+      t.string :name
+
+      t.timestamps
+    end
+  end
+
+  def self.down
+    drop_table :users
+  end
+end
diff --git a/db/migrate/20110409180450_create_subjects.rb b/db/migrate/20110409180450_create_subjects.rb
new file mode 100644
index 0000000..633826c
--- /dev/null
+++ b/db/migrate/20110409180450_create_subjects.rb
@@ -0,0 +1,16 @@
+class CreateSubjects < ActiveRecord::Migration
+  def self.up
+    create_table :subjects do |t|
+      t.string :title
+      t.string :description
+      t.text :content
+      t.references :user
+
+      t.timestamps
+    end
+  end
+
+  def self.down
+    drop_table :subjects
+  end
+end
diff --git a/db/migrate/20110409180524_create_topics.rb b/db/migrate/20110409180524_create_topics.rb
new file mode 100644
index 0000000..bb2668f
--- /dev/null
+++ b/db/migrate/20110409180524_create_topics.rb
@@ -0,0 +1,17 @@
+class CreateTopics < ActiveRecord::Migration
+  def self.up
+    create_table :topics do |t|
+      t.string :title
+      t.string :description
+      t.text :content
+      t.references :user
+      t.references :subject
+
+      t.timestamps
+    end
+  end
+
+  def self.down
+    drop_table :topics
+  end
+end
diff --git a/db/migrate/20110409180547_create_news.rb b/db/migrate/20110409180547_create_news.rb
new file mode 100644
index 0000000..150a712
--- /dev/null
+++ b/db/migrate/20110409180547_create_news.rb
@@ -0,0 +1,15 @@
+class CreateNews < ActiveRecord::Migration
+  def self.up
+    create_table :news do |t|
+      t.string :title
+      t.text :content
+      t.references :user
+
+      t.timestamps
+    end
+  end
+
+  def self.down
+    drop_table :news
+  end
+end
diff --git a/db/migrate/20110409192318_devise_create_users.rb b/db/migrate/20110409192318_devise_create_users.rb
new file mode 100644
index 0000000..a3cedfd
--- /dev/null
+++ b/db/migrate/20110409192318_devise_create_users.rb
@@ -0,0 +1,27 @@
+class DeviseCreateUsers < ActiveRecord::Migration
+  def self.up
+    create_table(:users) do |t|
+      t.database_authenticatable :null => false
+      t.recoverable
+      t.rememberable
+      t.trackable
+      t.string :name
+
+      # t.confirmable
+      # t.lockable :lock_strategy => :failed_attempts, :unlock_strategy => :both
+      # t.token_authenticatable
+
+
+      t.timestamps
+    end
+
+    add_index :users, :email,                :unique => true
+    add_index :users, :reset_password_token, :unique => true
+    # add_index :users, :confirmation_token,   :unique => true
+    # add_index :users, :unlock_token,         :unique => true
+  end
+
+  def self.down
+    drop_table :users
+  end
+end
diff --git a/db/schema.rb b/db/schema.rb
new file mode 100644
index 0000000..f583b56
--- /dev/null
+++ b/db/schema.rb
@@ -0,0 +1,62 @@
+# This file is auto-generated from the current state of the database. Instead
+# of editing this file, please use the migrations feature of Active Record to
+# incrementally modify your database, and then regenerate this schema definition.
+#
+# Note that this schema.rb definition is the authoritative source for your
+# database schema. If you need to create the application database on another
+# system, you should be using db:schema:load, not running all the migrations
+# from scratch. The latter is a flawed and unsustainable approach (the more migrations
+# you'll amass, the slower it'll run and the greater likelihood for issues).
+#
+# It's strongly recommended to check this file into your version control system.
+
+ActiveRecord::Schema.define(:version => 20110409192318) do
+
+  create_table "news", :force => true do |t|
+    t.string   "title"
+    t.text     "content"
+    t.integer  "user_id"
+    t.datetime "created_at"
+    t.datetime "updated_at"
+  end
+
+  create_table "subjects", :force => true do |t|
+    t.string   "title"
+    t.string   "description"
+    t.text     "content"
+    t.integer  "user_id"
+    t.datetime "created_at"
+    t.datetime "updated_at"
+  end
+
+  create_table "topics", :force => true do |t|
+    t.string   "title"
+    t.string   "description"
+    t.text     "content"
+    t.integer  "user_id"
+    t.integer  "subject_id"
+    t.datetime "created_at"
+    t.datetime "updated_at"
+  end
+
+  create_table "users", :force => true do |t|
+    t.string   "email",                               :default => "", :null => false
+    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
+    t.string   "password_salt",                       :default => "", :null => false
+    t.string   "reset_password_token"
+    t.string   "remember_token"
+    t.datetime "remember_created_at"
+    t.integer  "sign_in_count",                       :default => 0
+    t.datetime "current_sign_in_at"
+    t.datetime "last_sign_in_at"
+    t.string   "current_sign_in_ip"
+    t.string   "last_sign_in_ip"
+    t.string   "name"
+    t.datetime "created_at"
+    t.datetime "updated_at"
+  end
+
+  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
+  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
+
+end
diff --git a/db/seeds.rb b/db/seeds.rb
new file mode 100644
index 0000000..5c4c7b6
--- /dev/null
+++ b/db/seeds.rb
@@ -0,0 +1,15 @@
+# This file should contain all the record creation needed to seed the database with its default values.
+# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
+#
+# Examples:
+#
+#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
+#   Mayor.create(:name => 'Daley', :city => cities.first)
+
+puts 'SETTING UP EXAMPLE USERS'
+user1 = User.create! :name => 'First User', :email => 'user@test.com', :password => 'please', :password_confirmation => 'please'
+puts 'New user created: ' << user1.name
+user2 = User.create! :name => 'Other User', :email => 'otheruser@test.com', :password => 'please', :password_confirmation => 'please'
+puts 'New user created: ' << user2.name
+user1.save
+user2.save
diff --git a/doc/README_FOR_APP b/doc/README_FOR_APP
new file mode 100644
index 0000000..fe41f5c
--- /dev/null
+++ b/doc/README_FOR_APP
@@ -0,0 +1,2 @@
+Use this README file to introduce your application and point to useful places in the API for learning more.
+Run "rake doc:app" to generate API documentation for your models, controllers, helpers, and libraries.
diff --git a/lib/tasks/.gitkeep b/lib/tasks/.gitkeep
new file mode 100644
index 0000000..e69de29
diff --git a/public/404.html b/public/404.html
new file mode 100644
index 0000000..9a48320
--- /dev/null
+++ b/public/404.html
@@ -0,0 +1,26 @@
+<!DOCTYPE html>
+<html>
+<head>
+  <title>The page you were looking for doesn't exist (404)</title>
+  <style type="text/css">
+    body { background-color: #fff; color: #666; text-align: center; font-family: arial, sans-serif; }
+    div.dialog {
+      width: 25em;
+      padding: 0 4em;
+      margin: 4em auto 0 auto;
+      border: 1px solid #ccc;
+      border-right-color: #999;
+      border-bottom-color: #999;
+    }
+    h1 { font-size: 100%; color: #f00; line-height: 1.5em; }
+  </style>
+</head>
+
+<body>
+  <!-- This file lives in public/404.html -->
+  <div class="dialog">
+    <h1>The page you were looking for doesn't exist.</h1>
+    <p>You may have mistyped the address or the page may have moved.</p>
+  </div>
+</body>
+</html>
diff --git a/public/422.html b/public/422.html
new file mode 100644
index 0000000..83660ab
--- /dev/null
+++ b/public/422.html
@@ -0,0 +1,26 @@
+<!DOCTYPE html>
+<html>
+<head>
+  <title>The change you wanted was rejected (422)</title>
+  <style type="text/css">
+    body { background-color: #fff; color: #666; text-align: center; font-family: arial, sans-serif; }
+    div.dialog {
+      width: 25em;
+      padding: 0 4em;
+      margin: 4em auto 0 auto;
+      border: 1px solid #ccc;
+      border-right-color: #999;
+      border-bottom-color: #999;
+    }
+    h1 { font-size: 100%; color: #f00; line-height: 1.5em; }
+  </style>
+</head>
+
+<body>
+  <!-- This file lives in public/422.html -->
+  <div class="dialog">
+    <h1>The change you wanted was rejected.</h1>
+    <p>Maybe you tried to change something you didn't have access to.</p>
+  </div>
+</body>
+</html>
diff --git a/public/500.html b/public/500.html
new file mode 100644
index 0000000..b80307f
--- /dev/null
+++ b/public/500.html
@@ -0,0 +1,26 @@
+<!DOCTYPE html>
+<html>
+<head>
+  <title>We're sorry, but something went wrong (500)</title>
+  <style type="text/css">
+    body { background-color: #fff; color: #666; text-align: center; font-family: arial, sans-serif; }
+    div.dialog {
+      width: 25em;
+      padding: 0 4em;
+      margin: 4em auto 0 auto;
+      border: 1px solid #ccc;
+      border-right-color: #999;
+      border-bottom-color: #999;
+    }
+    h1 { font-size: 100%; color: #f00; line-height: 1.5em; }
+  </style>
+</head>
+
+<body>
+  <!-- This file lives in public/500.html -->
+  <div class="dialog">
+    <h1>We're sorry, but something went wrong.</h1>
+    <p>We've been notified about this issue and we'll take a look at it shortly.</p>
+  </div>
+</body>
+</html>
diff --git a/public/favicon.ico b/public/favicon.ico
new file mode 100644
index 0000000..e69de29
diff --git a/public/images/rails.png b/public/images/rails.png
new file mode 100644
index 0000000..d5edc04
Binary files /dev/null and b/public/images/rails.png differ
diff --git a/public/javascripts/application.js b/public/javascripts/application.js
new file mode 100644
index 0000000..fe45776
--- /dev/null
+++ b/public/javascripts/application.js
@@ -0,0 +1,2 @@
+// Place your application-specific JavaScript functions and classes here
+// This file is automatically included by javascript_include_tag :defaults
diff --git a/public/javascripts/controls.js b/public/javascripts/controls.js
new file mode 100644
index 0000000..7392fb6
--- /dev/null
+++ b/public/javascripts/controls.js
@@ -0,0 +1,965 @@
+// script.aculo.us controls.js v1.8.3, Thu Oct 08 11:23:33 +0200 2009
+
+// Copyright (c) 2005-2009 Thomas Fuchs (http://script.aculo.us, http://mir.aculo.us)
+//           (c) 2005-2009 Ivan Krstic (http://blogs.law.harvard.edu/ivan)
+//           (c) 2005-2009 Jon Tirsen (http://www.tirsen.com)
+// Contributors:
+//  Richard Livsey
+//  Rahul Bhargava
+//  Rob Wills
+//
+// script.aculo.us is freely distributable under the terms of an MIT-style license.
+// For details, see the script.aculo.us web site: http://script.aculo.us/
+
+// Autocompleter.Base handles all the autocompletion functionality
+// that's independent of the data source for autocompletion. This
+// includes drawing the autocompletion menu, observing keyboard
+// and mouse events, and similar.
+//
+// Specific autocompleters need to provide, at the very least,
+// a getUpdatedChoices function that will be invoked every time
+// the text inside the monitored textbox changes. This method
+// should get the text for which to provide autocompletion by
+// invoking this.getToken(), NOT by directly accessing
+// this.element.value. This is to allow incremental tokenized
+// autocompletion. Specific auto-completion logic (AJAX, etc)
+// belongs in getUpdatedChoices.
+//
+// Tokenized incremental autocompletion is enabled automatically
+// when an autocompleter is instantiated with the 'tokens' option
+// in the options parameter, e.g.:
+// new Ajax.Autocompleter('id','upd', '/url/', { tokens: ',' });
+// will incrementally autocomplete with a comma as the token.
+// Additionally, ',' in the above example can be replaced with
+// a token array, e.g. { tokens: [',', '\n'] } which
+// enables autocompletion on multiple tokens. This is most
+// useful when one of the tokens is \n (a newline), as it
+// allows smart autocompletion after linebreaks.
+
+if(typeof Effect == 'undefined')
+  throw("controls.js requires including script.aculo.us' effects.js library");
+
+var Autocompleter = { };
+Autocompleter.Base = Class.create({
+  baseInitialize: function(element, update, options) {
+    element          = $(element);
+    this.element     = element;
+    this.update      = $(update);
+    this.hasFocus    = false;
+    this.changed     = false;
+    this.active      = false;
+    this.index       = 0;
+    this.entryCount  = 0;
+    this.oldElementValue = this.element.value;
+
+    if(this.setOptions)
+      this.setOptions(options);
+    else
+      this.options = options || { };
+
+    this.options.paramName    = this.options.paramName || this.element.name;
+    this.options.tokens       = this.options.tokens || [];
+    this.options.frequency    = this.options.frequency || 0.4;
+    this.options.minChars     = this.options.minChars || 1;
+    this.options.onShow       = this.options.onShow ||
+      function(element, update){
+        if(!update.style.position || update.style.position=='absolute') {
+          update.style.position = 'absolute';
+          Position.clone(element, update, {
+            setHeight: false,
+            offsetTop: element.offsetHeight
+          });
+        }
+        Effect.Appear(update,{duration:0.15});
+      };
+    this.options.onHide = this.options.onHide ||
+      function(element, update){ new Effect.Fade(update,{duration:0.15}) };
+
+    if(typeof(this.options.tokens) == 'string')
+      this.options.tokens = new Array(this.options.tokens);
+    // Force carriage returns as token delimiters anyway
+    if (!this.options.tokens.include('\n'))
+      this.options.tokens.push('\n');
+
+    this.observer = null;
+
+    this.element.setAttribute('autocomplete','off');
+
+    Element.hide(this.update);
+
+    Event.observe(this.element, 'blur', this.onBlur.bindAsEventListener(this));
+    Event.observe(this.element, 'keydown', this.onKeyPress.bindAsEventListener(this));
+  },
+
+  show: function() {
+    if(Element.getStyle(this.update, 'display')=='none') this.options.onShow(this.element, this.update);
+    if(!this.iefix &&
+      (Prototype.Browser.IE) &&
+      (Element.getStyle(this.update, 'position')=='absolute')) {
+      new Insertion.After(this.update,
+       '<iframe id="' + this.update.id + '_iefix" '+
+       'style="display:none;position:absolute;filter:progid:DXImageTransform.Microsoft.Alpha(opacity=0);" ' +
+       'src="javascript:false;" frameborder="0" scrolling="no"></iframe>');
+      this.iefix = $(this.update.id+'_iefix');
+    }
+    if(this.iefix) setTimeout(this.fixIEOverlapping.bind(this), 50);
+  },
+
+  fixIEOverlapping: function() {
+    Position.clone(this.update, this.iefix, {setTop:(!this.update.style.height)});
+    this.iefix.style.zIndex = 1;
+    this.update.style.zIndex = 2;
+    Element.show(this.iefix);
+  },
+
+  hide: function() {
+    this.stopIndicator();
+    if(Element.getStyle(this.update, 'display')!='none') this.options.onHide(this.element, this.update);
+    if(this.iefix) Element.hide(this.iefix);
+  },
+
+  startIndicator: function() {
+    if(this.options.indicator) Element.show(this.options.indicator);
+  },
+
+  stopIndicator: function() {
+    if(this.options.indicator) Element.hide(this.options.indicator);
+  },
+
+  onKeyPress: function(event) {
+    if(this.active)
+      switch(event.keyCode) {
+       case Event.KEY_TAB:
+       case Event.KEY_RETURN:
+         this.selectEntry();
+         Event.stop(event);
+       case Event.KEY_ESC:
+         this.hide();
+         this.active = false;
+         Event.stop(event);
+         return;
+       case Event.KEY_LEFT:
+       case Event.KEY_RIGHT:
+         return;
+       case Event.KEY_UP:
+         this.markPrevious();
+         this.render();
+         Event.stop(event);
+         return;
+       case Event.KEY_DOWN:
+         this.markNext();
+         this.render();
+         Event.stop(event);
+         return;
+      }
+     else
+       if(event.keyCode==Event.KEY_TAB || event.keyCode==Event.KEY_RETURN ||
+         (Prototype.Browser.WebKit > 0 && event.keyCode == 0)) return;
+
+    this.changed = true;
+    this.hasFocus = true;
+
+    if(this.observer) clearTimeout(this.observer);
+      this.observer =
+        setTimeout(this.onObserverEvent.bind(this), this.options.frequency*1000);
+  },
+
+  activate: function() {
+    this.changed = false;
+    this.hasFocus = true;
+    this.getUpdatedChoices();
+  },
+
+  onHover: function(event) {
+    var element = Event.findElement(event, 'LI');
+    if(this.index != element.autocompleteIndex)
+    {
+        this.index = element.autocompleteIndex;
+        this.render();
+    }
+    Event.stop(event);
+  },
+
+  onClick: function(event) {
+    var element = Event.findElement(event, 'LI');
+    this.index = element.autocompleteIndex;
+    this.selectEntry();
+    this.hide();
+  },
+
+  onBlur: function(event) {
+    // needed to make click events working
+    setTimeout(this.hide.bind(this), 250);
+    this.hasFocus = false;
+    this.active = false;
+  },
+
+  render: function() {
+    if(this.entryCount > 0) {
+      for (var i = 0; i < this.entryCount; i++)
+        this.index==i ?
+          Element.addClassName(this.getEntry(i),"selected") :
+          Element.removeClassName(this.getEntry(i),"selected");
+      if(this.hasFocus) {
+        this.show();
+        this.active = true;
+      }
+    } else {
+      this.active = false;
+      this.hide();
+    }
+  },
+
+  markPrevious: function() {
+    if(this.index > 0) this.index--;
+      else this.index = this.entryCount-1;
+    this.getEntry(this.index).scrollIntoView(true);
+  },
+
+  markNext: function() {
+    if(this.index < this.entryCount-1) this.index++;
+      else this.index = 0;
+    this.getEntry(this.index).scrollIntoView(false);
+  },
+
+  getEntry: function(index) {
+    return this.update.firstChild.childNodes[index];
+  },
+
+  getCurrentEntry: function() {
+    return this.getEntry(this.index);
+  },
+
+  selectEntry: function() {
+    this.active = false;
+    this.updateElement(this.getCurrentEntry());
+  },
+
+  updateElement: function(selectedElement) {
+    if (this.options.updateElement) {
+      this.options.updateElement(selectedElement);
+      return;
+    }
+    var value = '';
+    if (this.options.select) {
+      var nodes = $(selectedElement).select('.' + this.options.select) || [];
+      if(nodes.length>0) value = Element.collectTextNodes(nodes[0], this.options.select);
+    } else
+      value = Element.collectTextNodesIgnoreClass(selectedElement, 'informal');
+
+    var bounds = this.getTokenBounds();
+    if (bounds[0] != -1) {
+      var newValue = this.element.value.substr(0, bounds[0]);
+      var whitespace = this.element.value.substr(bounds[0]).match(/^\s+/);
+      if (whitespace)
+        newValue += whitespace[0];
+      this.element.value = newValue + value + this.element.value.substr(bounds[1]);
+    } else {
+      this.element.value = value;
+    }
+    this.oldElementValue = this.element.value;
+    this.element.focus();
+
+    if (this.options.afterUpdateElement)
+      this.options.afterUpdateElement(this.element, selectedElement);
+  },
+
+  updateChoices: function(choices) {
+    if(!this.changed && this.hasFocus) {
+      this.update.innerHTML = choices;
+      Element.cleanWhitespace(this.update);
+      Element.cleanWhitespace(this.update.down());
+
+      if(this.update.firstChild && this.update.down().childNodes) {
+        this.entryCount =
+          this.update.down().childNodes.length;
+        for (var i = 0; i < this.entryCount; i++) {
+          var entry = this.getEntry(i);
+          entry.autocompleteIndex = i;
+          this.addObservers(entry);
+        }
+      } else {
+        this.entryCount = 0;
+      }
+
+      this.stopIndicator();
+      this.index = 0;
+
+      if(this.entryCount==1 && this.options.autoSelect) {
+        this.selectEntry();
+        this.hide();
+      } else {
+        this.render();
+      }
+    }
+  },
+
+  addObservers: function(element) {
+    Event.observe(element, "mouseover", this.onHover.bindAsEventListener(this));
+    Event.observe(element, "click", this.onClick.bindAsEventListener(this));
+  },
+
+  onObserverEvent: function() {
+    this.changed = false;
+    this.tokenBounds = null;
+    if(this.getToken().length>=this.options.minChars) {
+      this.getUpdatedChoices();
+    } else {
+      this.active = false;
+      this.hide();
+    }
+    this.oldElementValue = this.element.value;
+  },
+
+  getToken: function() {
+    var bounds = this.getTokenBounds();
+    return this.element.value.substring(bounds[0], bounds[1]).strip();
+  },
+
+  getTokenBounds: function() {
+    if (null != this.tokenBounds) return this.tokenBounds;
+    var value = this.element.value;
+    if (value.strip().empty()) return [-1, 0];
+    var diff = arguments.callee.getFirstDifferencePos(value, this.oldElementValue);
+    var offset = (diff == this.oldElementValue.length ? 1 : 0);
+    var prevTokenPos = -1, nextTokenPos = value.length;
+    var tp;
+    for (var index = 0, l = this.options.to