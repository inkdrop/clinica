class TopicsController < ApplicationController

  before_filter :authenticate_user!, :except => [:show, :index]

  uses_tiny_mce :only => [:new, :create, :edit, :update]
  
  # GET /topics
  # GET /topics.xml
  def index
    @subject = Subject.find(params[:subject_id])
    @topics = @subject.topics

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @topics }
    end
  end

  # GET /topics/1
  # GET /topics/1.xml
  def show
    @subject = Subject.find(params[:subject_id])
    @topic = Topic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @topic }
    end
  end

  # GET /topics/new
  # GET /topics/new.xml
  def new
    @topic = Topic.new
    @topic.user = current_user
    @subject = Subject.find(params[:subject_id])

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @topic }
    end
  end

  # GET /topics/1/edit
  def edit
    @topic = Topic.find(params[:id])
    @subject = Subject.find(params[:subject_id])
  end

  # POST /topics
  # POST /topics.xml
  def create
    @subject = Subject.find(params[:subject_id])
    @topic = @subject.topics.create(params[:topic])
    @topic.user = current_user
    @topic.save

    redirect_to subject_path(@subject)
  end

  # PUT /topics/1
  # PUT /topics/1.xml
  def update
    @topic = Topic.find(params[:id])

    respond_to do |format|
      if @topic.update_attributes(params[:topic])
        format.html { redirect_to(subject_topic_path(params[:subject_id],@topic), :notice => t(:topic_update)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @topic.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /topics/1
  # DELETE /topics/1.xml
  def destroy
    @subject = Subject.find(params[:subject_id])
    @topic = Topic.find(params[:id])
    @topic.destroy

    redirect_to subject_path(@subject)
  end
end
