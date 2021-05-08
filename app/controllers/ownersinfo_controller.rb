class OwnersinfoController < ApplicationController
before_action :authenticate_owner! 

  def home
    @ownersinfo = Ownerinfo.find_by(owner_id: params[:id])
  end

  def new
    @ownersinfo = Ownerinfo.new
  end
  
  def create #店舗情報の登録
    @ownersinfo = Ownerinfo.new(
      street_address: params[:street_address],
      nearest_station: params[:nearest_station],
      owner_id: current_owner.id
     )
    if @ownersinfo.save
      #session[:user_id] = @user.id
      redirect_to("/ownersinfo/home/#{@ownersinfo.owner_id}")
      flash[:notice] = "店舗登録が完了しました"
    else
      render("home/top")
    end
  end

end
