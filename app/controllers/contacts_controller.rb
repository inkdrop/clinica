class ContactsController < ApplicationController

  before_filter :authenticate_user!, :except => [:create, :new]
  
  #acesso somente para admin
  def index
    @contacts = Contact.paginate :page => params[:page], :order => 'created_at DESC'
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
    if verify_recaptcha(:message => "O codigo Captcha informado e invalido") && @contact.save
      redirect_to(contato_path, :notice => 'Mensagem enviada com sucesso.')
    else
      redirect_to(contato_path, :notice => 'Nao foi possivel enviar sua mensagem, tente mais tarde.')
    end
  end
  
  def destroy
  end
  
end
