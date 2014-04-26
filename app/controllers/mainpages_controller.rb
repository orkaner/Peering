class MainpagesController < ApplicationController
  # GET /mainpages
  # GET /mainpages.json
  def index
    @mainpages = Mainpage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mainpages }
    end
  end

  # GET /mainpages/1
  # GET /mainpages/1.json
  def show
    @mainpage = Mainpage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mainpage }
    end
  end

  # GET /mainpages/new
  # GET /mainpages/new.json
  def new
    @mainpage = Mainpage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mainpage }
    end
  end

  # GET /mainpages/1/edit
  def edit
    @mainpage = Mainpage.find(params[:id])
  end

  # POST /mainpages
  # POST /mainpages.json
  def create
    @mainpage = Mainpage.new(params[:mainpage])

    respond_to do |format|
      if @mainpage.save
        format.html { redirect_to @mainpage, notice: 'Mainpage was successfully created.' }
        format.json { render json: @mainpage, status: :created, location: @mainpage }
      else
        format.html { render action: "new" }
        format.json { render json: @mainpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mainpages/1
  # PUT /mainpages/1.json
  def update
    @mainpage = Mainpage.find(params[:id])

    respond_to do |format|
      if @mainpage.update_attributes(params[:mainpage])
        format.html { redirect_to @mainpage, notice: 'Mainpage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mainpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mainpages/1
  # DELETE /mainpages/1.json
  def destroy
    @mainpage = Mainpage.find(params[:id])
    @mainpage.destroy

    respond_to do |format|
      format.html { redirect_to mainpages_url }
      format.json { head :no_content }
    end
  end
end
