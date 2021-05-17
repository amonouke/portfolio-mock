class OwnersinfoController < ApplicationController
#before_action :authenticate_owner! #オーナーかどうか確認


  def home
    @ownersinfo = Ownerinfo.find_by(owner_id: params[:id])
  end

  def new
    @owner = Owner.new
    #@ownerinfo = Ownerinfo.new
  end

  def edit
    @ownersinfo = Ownerinfo.find_by(owner_id: params[:id])
  end

  def update
    @ownersinfo = Ownerinfo.find_by(owner_id: params[:id])
    if params[:image]
      @ownersinfo.top_image = "#{@ownersinfo.owner_id}.jpg"
      image = params[:image] 
      File.binwrite("public/ownersinfo_top/#{@ownersinfo.top_image}", image.read)
    end
    @ownersinfo.store_name = params[:store_name]
    @ownersinfo.street_address = params[:street_address]
    @ownersinfo.nearest_station = params[:nearest_station]
    @ownersinfo.phone_number = params[:phone_number]
    @ownersinfo.opening_hours = params[:opening_hours]
    @ownersinfo.closing_time = params[:closing_time]
    @ownersinfo.regular_holiday = params[:regular_holiday]
    @ownersinfo.thing_about_business_hours = params[:thing_about_business_hours]
    @ownersinfo.homepage = params[:homepage]
    if @ownersinfo.save
      redirect_to("/ownersinfo/#{@ownersinfo.owner_id}/home")
      flash[:notice] = "ユーザー情報を編集しました"
    else
      render("ownersinfo/edit")
    end
  end
  
  #def create
    #@owner = Owner.new(owner_params)
    #@owner.build_ownerinfo #Userの子要素であるアカウントを関連付ける
    # インカムアカウントテーブルのownerinfoのカラムに代入する
    #@owner.ownerinfo.top_image = "default_ownersinfo.jpg"
  #end



end
