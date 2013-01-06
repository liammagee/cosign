class IndicatorSetsController < ApplicationController
  # GET /indicator_sets
  # GET /indicator_sets.json
  def index
    @indicator_sets = IndicatorSet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @indicator_sets }
    end
  end

  # GET /indicator_sets/1
  # GET /indicator_sets/1.json
  def show
    @indicator_set = IndicatorSet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @indicator_set }
    end
  end

  # GET /indicator_sets/new
  # GET /indicator_sets/new.json
  def new
    @indicator_set = IndicatorSet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @indicator_set }
    end
  end

  # GET /indicator_sets/1/edit
  def edit
    @indicator_set = IndicatorSet.find(params[:id])
  end

  # POST /indicator_sets
  # POST /indicator_sets.json
  def create
    @indicator_set = IndicatorSet.new(params[:indicator_set])

    respond_to do |format|
      if @indicator_set.save
        format.html { redirect_to @indicator_set, notice: 'Indicator set was successfully created.' }
        format.json { render json: @indicator_set, status: :created, location: @indicator_set }
      else
        format.html { render action: "new" }
        format.json { render json: @indicator_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /indicator_sets/1
  # PUT /indicator_sets/1.json
  def update
    @indicator_set = IndicatorSet.find(params[:id])

    respond_to do |format|
      if @indicator_set.update_attributes(params[:indicator_set])
        format.html { redirect_to @indicator_set, notice: 'Indicator set was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @indicator_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /indicator_sets/1
  # DELETE /indicator_sets/1.json
  def destroy
    @indicator_set = IndicatorSet.find(params[:id])
    @indicator_set.destroy

    respond_to do |format|
      format.html { redirect_to indicator_sets_url }
      format.json { head :no_content }
    end
  end
end
