class ContactsController < ApplicationController

  before_filter :authenticate_user!, :except => [:create, :new]
  
  #acesso somente para admin
  def index
    @contacts = Contact.all
  end

  #acesso somente para admin
  def show
    @contact = Contact.find(params[:id])
  end  
    
  #operação não suportada
  def edit  
  end  
    
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(params[:contact])
    if @contact.save
      format.html { redirect_to(new_contact_path, :notice => 'Mensagem enviada com sucesso.') }
      format.xml  { render :xml => @news, :status => :created, :location => @news }
    else
      format.html { render :action => "new" }
      format.xml  { render :xml => @news.errors, :status => :unprocessable_entity }
    end
  end
  
  def destroy
  end
  
end
