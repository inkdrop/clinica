class ContactsController < ApplicationController

  before_filter :authenticate_user!, :except => [:create, :new]
  
  #acesso somente para admin
  def index
    @contacts = Contact.paginate :page => params[:page], :order => 'read, created_at DESC'
  end

  #acesso somente para admin
  def show
    @contact = Contact.find(params[:id])
    if !@contact.read
      @contact.read = true
      @contact.save
    end
  end  
    
  #operação não suportada
  def edit  
  end  
    
  def new
    @contact = Contact.new
  end
  
  def create
    @contact = Contact.new(params[:contact])
    if verify_recaptcha(:message => t(:captcha_error)) && @contact.save
      redirect_to(contato_path, :notice => 'Mensagem enviada com sucesso.')
    else
      redirect_to(contato_path, :alert => t(:contact_create_error))
    end
  end
  
  #acesso somente para admin
  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy

    respond_to do |format|
      format.html { redirect_to(contacts_path, :notice => t(:question_destroy_success)) }
      format.xml  { head :ok }
    end
  end
  
  def mult_destroy
    #Delete multiple messages
    if !params[:contact_ids].blank? 
      Contact.destroy_all(:id => params[:contact_ids])
      redirect_to(contacts_path, :notice => t(:contacts_destroy_success))
    else
      redirect_to(contacts_path, :alert => t(:contact_mult_destroy_error))
    end
  end
  
end
