class GiversController < ApplicationController
  # GET /givers
  # GET /givers.json
  def index
    @givers = Giver.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @givers }
    end
  end

  # GET /givers/1
  # GET /givers/1.json
  def show
    @giver = Giver.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @giver }
    end
  end

  # GET /givers/new
  # GET /givers/new.json
  def new
    @giver = Giver.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @giver }
    end
  end

  # GET /givers/1/edit
  def edit
    @giver = Giver.find(params[:id])
  end

  # POST /givers
  # POST /givers.json
  def create
    @giver = Giver.new(params[:giver])

    respond_to do |format|
      if @giver.save
        format.html { redirect_to @giver, notice: 'Giver was successfully created.' }
        format.json { render json: @giver, status: :created, location: @giver }
      else
        format.html { render action: "new" }
        format.json { render json: @giver.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /givers/1
  # PUT /givers/1.json
  def update
    @giver = Giver.find(params[:id])

    respond_to do |format|
      if @giver.update_attributes(params[:giver])
        format.html { redirect_to @giver, notice: 'Giver was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @giver.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /givers/1
  # DELETE /givers/1.json
  def destroy
    @giver = Giver.find(params[:id])
    @giver.destroy

    respond_to do |format|
      format.html { redirect_to givers_url }
      format.json { head :no_content }
    end
  end
end
