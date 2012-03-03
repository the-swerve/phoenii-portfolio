class EntrepeneursController < ApplicationController
  # GET /entrepeneurs
  # GET /entrepeneurs.json
  def index
    @entrepeneurs = Entrepeneur.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entrepeneurs }
    end
  end

  # GET /entrepeneurs/1
  # GET /entrepeneurs/1.json
  def show
    @entrepeneur = Entrepeneur.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @entrepeneur }
    end
  end

  # GET /entrepeneurs/new
  # GET /entrepeneurs/new.json
  def new
    @entrepeneur = Entrepeneur.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @entrepeneur }
    end
  end

  # GET /entrepeneurs/1/edit
  def edit
    @entrepeneur = Entrepeneur.find(params[:id])
  end

  # POST /entrepeneurs
  # POST /entrepeneurs.json
  def create
    @entrepeneur = Entrepeneur.new(params[:entrepeneur])

    respond_to do |format|
      if @entrepeneur.save
        format.html { redirect_to @entrepeneur, notice: 'Entrepeneur was successfully created.' }
        format.json { render json: @entrepeneur, status: :created, location: @entrepeneur }
      else
        format.html { render action: "new" }
        format.json { render json: @entrepeneur.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /entrepeneurs/1
  # PUT /entrepeneurs/1.json
  def update
    @entrepeneur = Entrepeneur.find(params[:id])

    respond_to do |format|
      if @entrepeneur.update_attributes(params[:entrepeneur])
        format.html { redirect_to @entrepeneur, notice: 'Entrepeneur was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @entrepeneur.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entrepeneurs/1
  # DELETE /entrepeneurs/1.json
  def destroy
    @entrepeneur = Entrepeneur.find(params[:id])
    @entrepeneur.destroy

    respond_to do |format|
      format.html { redirect_to entrepeneurs_url }
      format.json { head :ok }
    end
  end
end
