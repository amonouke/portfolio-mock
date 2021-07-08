class OwnersinfoController < ApplicationController
#before_action :authenticate_owner! #オーナーかどうか確認

  def home
    @ownersinfo = Ownerinfo.find_by(owner_id: params[:id])
  end

  def new
    @owner = Owner.new
    #@ownerinfo = Ownerinfo.new
  end

  def edit #オーナー情報の取得
    @ownersinfo = Ownerinfo.find_by(owner_id: params[:id])
  end

  def reset_image
    @ownersinfo = Ownerinfo.find_by(owner_id: params[:id])
    @ownersinfo.store_image01 = "default_ownersinfo.jpg"
    @ownersinfo.store_image02 = "default_ownersinfo.jpg"
    @ownersinfo.store_image03 = "default_ownersinfo.jpg"
    @ownersinfo.store_image04 = "default_ownersinfo.jpg"
    @ownersinfo.save
    render("ownersinfo/edit")
  end

  def update #オーナー情報の編集
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
    if params[:image01]
      @ownersinfo.store_image01 = "#{@ownersinfo.owner_id}.jpg"
      image = params[:image01] 
      File.binwrite("public/store_image01/#{@ownersinfo.store_image01}", image.read)
    end
    if params[:image02]
      @ownersinfo.store_image02 = "#{@ownersinfo.owner_id}.jpg"
      image = params[:image02] 
      File.binwrite("public/store_image02/#{@ownersinfo.store_image02}", image.read)
    end
    if params[:image03]
      @ownersinfo.store_image03 = "#{@ownersinfo.owner_id}.jpg"
      image = params[:image03] 
      File.binwrite("public/store_image03/#{@ownersinfo.store_image03}", image.read)
    end
    if params[:image04]
      @ownersinfo.store_image04 = "#{@ownersinfo.owner_id}.jpg"
      image = params[:image04] 
      File.binwrite("public/store_image04/#{@ownersinfo.store_image04}", image.read)
    end
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
