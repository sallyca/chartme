class ItherosController < ApplicationController

  def import
    Ithero.import(params[:file])
    redirect_to root_url, notice: "Heroes imported."
  end
  # GET /itheros
  # GET /itheros.json
  def index
    @itheros = Ithero.all
    @salaries = ['Java', 'PHP', 'Ruby/Rails'].map { |spec| Ithero.average_for(spec).to_i}
    puts '#{@salaries} ++++++++++++++'

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @itheros }
    end
  end

  # GET /itheros/1
  # GET /itheros/1.json
  def show
    @ithero = Ithero.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ithero }
    end
  end

  # GET /itheros/new
  # GET /itheros/new.json
  def new
    @ithero = Ithero.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ithero }
    end
  end

  # GET /itheros/1/edit
  def edit
    @ithero = Ithero.find(params[:id])
  end

  # POST /itheros
  # POST /itheros.json
  def create
    @ithero = Ithero.new(params[:ithero])

    respond_to do |format|
      if @ithero.save
        format.html { redirect_to @ithero, notice: 'Ithero was successfully created.' }
        format.json { render json: @ithero, status: :created, location: @ithero }
      else
        format.html { render action: "new" }
        format.json { render json: @ithero.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /itheros/1
  # PUT /itheros/1.json
  def update
    @ithero = Ithero.find(params[:id])

    respond_to do |format|
      if @ithero.update_attributes(params[:ithero])
        format.html { redirect_to @ithero, notice: 'Ithero was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @ithero.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itheros/1
  # DELETE /itheros/1.json
  def destroy
    @ithero = Ithero.find(params[:id])
    @ithero.destroy

    respond_to do |format|
      format.html { redirect_to itheros_url }
      format.json { head :no_content }
    end
  end
end
