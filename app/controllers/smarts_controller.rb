class SmartsController < ApplicationController
  layout 'smarts_vendor'
  # GET /smarts
  # GET /smarts.xml
  def index
    @smarts = Smart.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @smarts }
    end
  end

  # GET /smarts/1
  # GET /smarts/1.xml
  def show
    @smart = Smart.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @smart }
    end
  end

  # GET /smarts/new
  # GET /smarts/new.xml
  def new
    @smart = Smart.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @smart }
    end
  end

  # GET /smarts/1/edit
  def edit
    @smart = Smart.find(params[:id])
  end

  # POST /smarts
  # POST /smarts.xml
  def create
    @smart = Smart.new(params[:smart])

    respond_to do |format|
      if @smart.save
        format.html { redirect_to(@smart, :notice => 'Smart was successfully created.') }
        format.xml  { render :xml => @smart, :status => :created, :location => @smart }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @smart.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /smarts/1
  # PUT /smarts/1.xml
  def update
    @smart = Smart.find(params[:id])

    respond_to do |format|
      if @smart.update_attributes(params[:smart])
        format.html { redirect_to(@smart, :notice => 'Smart was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @smart.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /smarts/1
  # DELETE /smarts/1.xml
  def destroy
    @smart = Smart.find(params[:id])
    @smart.destroy

    respond_to do |format|
      format.html { redirect_to(smarts_url) }
      format.xml  { head :ok }
    end
  end
end
