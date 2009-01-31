class BottlesController < ApplicationController
  # GET /bottles
  # GET /bottles.xml
  def index
    @bottles = Bottle.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bottles }
    end
  end

  # GET /bottles/1
  # GET /bottles/1.xml
  def show
    @bottle = Bottle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bottle }
    end
  end

  # GET /bottles/new
  # GET /bottles/new.xml
  def new
    @bottle = Bottle.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bottle }
    end
  end

  # GET /bottles/1/edit
  def edit
    @bottle = Bottle.find(params[:id])
  end

  # POST /bottles
  # POST /bottles.xml
  def create
    @bottle = Bottle.new(params[:bottle])

    respond_to do |format|
      if @bottle.save
        flash[:notice] = 'Bottle was successfully created.'
        format.html { redirect_to(@bottle) }
        format.xml  { render :xml => @bottle, :status => :created, :location => @bottle }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bottle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /bottles/1
  # PUT /bottles/1.xml
  def update
    @bottle = Bottle.find(params[:id])

    respond_to do |format|
      if @bottle.update_attributes(params[:bottle])
        flash[:notice] = 'Bottle was successfully updated.'
        format.html { redirect_to(@bottle) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bottle.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /bottles/1
  # DELETE /bottles/1.xml
  def destroy
    @bottle = Bottle.find(params[:id])
    @bottle.destroy

    respond_to do |format|
      format.html { redirect_to(bottles_url) }
      format.xml  { head :ok }
    end
  end
end
