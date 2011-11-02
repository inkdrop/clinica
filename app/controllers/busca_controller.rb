class BuscaController < ApplicationController
  
  #Returns the search results
  def index
    @resultado = PgSearch.multisearch(params[:q]).paginate(:page => params[:page], :per_page => 5) if params.include?(:q)
  end

end
