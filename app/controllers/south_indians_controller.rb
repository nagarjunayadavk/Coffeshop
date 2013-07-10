class SouthIndiansController < ApplicationController
  # GET /south_indians
  # GET /south_indians.json
  def index
    @south_indians = SouthIndian.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @south_indians }
    end
  end

  # GET /south_indians/1
  # GET /south_indians/1.json
  def show
    @south_indian = SouthIndian.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @south_indian }
    end
  end

  # GET /south_indians/new
  # GET /south_indians/new.json
  def new
    @south_indian = SouthIndian.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @south_indian }
    end
  end

  # GET /south_indians/1/edit
  def edit
    @south_indian = SouthIndian.find(params[:id])
  end

  # POST /south_indians
  # POST /south_indians.json
  def create
    @south_indian = SouthIndian.new(params[:south_indian])

    respond_to do |format|
      if @south_indian.save
        format.html { redirect_to @south_indian, notice: 'South indian was successfully created.' }
        format.json { render json: @south_indian, status: :created, location: @south_indian }
      else
        format.html { render action: "new" }
        format.json { render json: @south_indian.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /south_indians/1
  # PUT /south_indians/1.json
  def update
    @south_indian = SouthIndian.find(params[:id])

    respond_to do |format|
      if @south_indian.update_attributes(params[:south_indian])
        format.html { redirect_to @south_indian, notice: 'South indian was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @south_indian.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /south_indians/1
  # DELETE /south_indians/1.json
  def destroy
    @south_indian = SouthIndian.find(params[:id])
    @south_indian.destroy

    respond_to do |format|
      format.html { redirect_to south_indians_url }
      format.json { head :no_content }
    end
  end
end
