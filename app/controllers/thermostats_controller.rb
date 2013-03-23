class ThermostatsController < ApplicationController
  # GET /thermostats
  # GET /thermostats.json
  def index
    @thermostats = Thermostat.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @thermostats }
    end
  end

  # GET /thermostats/1
  # GET /thermostats/1.json
  def show
    @thermostat = Thermostat.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @thermostat }
    end
  end

  # GET /thermostats/new
  # GET /thermostats/new.json
  def new
    @thermostat = Thermostat.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @thermostat }
    end
  end

  # GET /thermostats/1/edit
  def edit
    @thermostat = Thermostat.find(params[:id])
  end

  # POST /thermostats
  # POST /thermostats.json
  def create
    @thermostat = Thermostat.new(params[:thermostat])

    respond_to do |format|
      if @thermostat.save
        format.html { redirect_to @thermostat, notice: 'Thermostat was successfully created.' }
        format.json { render json: @thermostat, status: :created, location: @thermostat }
      else
        format.html { render action: "new" }
        format.json { render json: @thermostat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /thermostats/1
  # PUT /thermostats/1.json
  def update
    @thermostat = Thermostat.find(params[:id])

    respond_to do |format|
      if @thermostat.update_attributes(params[:thermostat])
        format.html { redirect_to @thermostat, notice: 'Thermostat was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @thermostat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /thermostats/1
  # DELETE /thermostats/1.json
  def destroy
    @thermostat = Thermostat.find(params[:id])
    @thermostat.destroy

    respond_to do |format|
      format.html { redirect_to thermostats_url }
      format.json { head :ok }
    end
  end
end
