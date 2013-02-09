class GithubersController < ApplicationController

  def import
    Githuber.import(params[:file])
    redirect_to root_url, notice: "Heroes imported."
  end
  # GET /githubers
  # GET /githubers.json
  def index
    @githubers = Githuber.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @githubers }
    end
  end

  # GET /githubers/1
  # GET /githubers/1.json
  def show
    @githuber = Githuber.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @githuber }
    end
  end

  # GET /githubers/new
  # GET /githubers/new.json
  def new
    @githuber = Githuber.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @githuber }
    end
  end

  # GET /githubers/1/edit
  def edit
    @githuber = Githuber.find(params[:id])
  end

  # POST /githubers
  # POST /githubers.json
  def create
    @githuber = Githuber.new(params[:githuber])

    respond_to do |format|
      if @githuber.save
        format.html { redirect_to @githuber, notice: 'Githuber was successfully created.' }
        format.json { render json: @githuber, status: :created, location: @githuber }
      else
        format.html { render action: "new" }
        format.json { render json: @githuber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /githubers/1
  # PUT /githubers/1.json
  def update
    @githuber = Githuber.find(params[:id])

    respond_to do |format|
      if @githuber.update_attributes(params[:githuber])
        format.html { redirect_to @githuber, notice: 'Githuber was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @githuber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /githubers/1
  # DELETE /githubers/1.json
  def destroy
    @githuber = Githuber.find(params[:id])
    @githuber.destroy

    respond_to do |format|
      format.html { redirect_to githubers_url }
      format.json { head :no_content }
    end
  end
end
