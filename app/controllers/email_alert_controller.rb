class EmailAlertsController < ApplicationController

  # GET /pages/new
  # GET /pages/new.xml
  def new
    @email_alert = EmailAlert.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @email_alert }
    end
  end

  # POST /email_alerts
  # POST /email_alerts.xml
  def create
    @email_alert = EmailAlert.new(params[:email_alert])

    respond_to do |format|
      if @email_alert.save
        format.html { redirect_to :action => 'home' }
        format.xml  { render :xml => @email_alert, :status => :created, :location => @email_alert }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @email_alert.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /email_alerts/1
  # DELETE /email_alerts/1.xml
  def destroy
    @email_alert = EmailAlert.find(params[:id])
    @email_alert.destroy

    respond_to do |format|
      format.html { redirect_to :action => 'home' }
      format.xml  { head :ok }
    end
  end
end
