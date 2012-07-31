class MicrospotsController < ApplicationController
  # GET /microspots
  # GET /microspots.json
  def index
    @microspots = Microspot.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @microspots }
    end
  end

  # GET /microspots/1
  # GET /microspots/1.json
  def show
    @microspot = Microspot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @microspot }
    end
  end

  # GET /microspots/new
  # GET /microspots/new.json
  def new
    @microspot = Microspot.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @microspot }
    end
  end

  # GET /microspots/1/edit
  def edit
    @microspot = Microspot.find(params[:id])
  end

  # POST /microspots
  # POST /microspots.json
  def create
    @microspot = Microspot.new(params[:microspot])

    respond_to do |format|
      if @microspot.save
        format.html { redirect_to @microspot, notice: 'Microspot was successfully created.' }
        format.json { render json: @microspot, status: :created, location: @microspot }
      else
        format.html { render action: "new" }
        format.json { render json: @microspot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /microspots/1
  # PUT /microspots/1.json
  def update
    @microspot = Microspot.find(params[:id])

    respond_to do |format|
      if @microspot.update_attributes(params[:microspot])
        format.html { redirect_to @microspot, notice: 'Microspot was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @microspot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microspots/1
  # DELETE /microspots/1.json
  def destroy
    @microspot = Microspot.find(params[:id])
    @microspot.destroy

    respond_to do |format|
      format.html { redirect_to microspots_url }
      format.json { head :no_content }
    end
  end
end
