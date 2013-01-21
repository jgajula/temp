class TakersController < ApplicationController
  # GET /takers
  # GET /takers.json
  def index
    @takers = Taker.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @takers }
    end
  end

  # GET /takers/1
  # GET /takers/1.json
  def show
    @taker = Taker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @taker }
    end
  end

  # GET /takers/new
  # GET /takers/new.json
  def new
    @taker = Taker.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @taker }
    end
  end

  # GET /takers/1/edit
  def edit
    @taker = Taker.find(params[:id])
  end

  # POST /takers
  # POST /takers.json
  def create
    @taker = Taker.new(params[:taker])

    respond_to do |format|
      if @taker.save
        format.html { redirect_to @taker, notice: 'Taker was successfully created.' }
        format.json { render json: @taker, status: :created, location: @taker }
      else
        format.html { render action: "new" }
        format.json { render json: @taker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /takers/1
  # PUT /takers/1.json
  def update
    @taker = Taker.find(params[:id])

    respond_to do |format|
      if @taker.update_attributes(params[:taker])
        format.html { redirect_to @taker, notice: 'Taker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @taker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /takers/1
  # DELETE /takers/1.json
  def destroy
    @taker = Taker.find(params[:id])
    @taker.destroy

    respond_to do |format|
      format.html { redirect_to takers_url }
      format.json { head :no_content }
    end
  end
end
