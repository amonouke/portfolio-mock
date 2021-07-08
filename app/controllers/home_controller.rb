class HomeController < ApplicationController
  def top
  end

  def search
  end

  def keyword_search
    @ownersinfo = Ownerinfo.all

    @ownersinfo = @ownersinfo.where('store_name LIKE ?', "%#{params[:search]}%") if params[:search].present?
  end

end
