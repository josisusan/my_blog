class MailmesController < ApplicationController
  # GET /mailmes
  # GET /mailmes.json
  def index
    @mailmes = Mailme.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mailmes }
    end
  end

  # GET /mailmes/1
  # GET /mailmes/1.json
  def show
    @mailme = Mailme.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mailme }
    end
  end

  # GET /mailmes/new
  # GET /mailmes/new.json
  def new
    @mailme = Mailme.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mailme }
    end
  end

  # GET /mailmes/1/edit
  def edit
    @mailme = Mailme.find(params[:id])
  end

  # POST /mailmes
  # POST /mailmes.json
  def create
    @mailme = Mailme.new(params[:mailme])

    respond_to do |format|
      if @mailme.save
        MeMailer.registration_confirm(@mailme).deliver!
        format.html { redirect_to @mailme, notice: 'Mailme was successfully created.' }
        format.json { render json: @mailme, status: :created, location: @mailme }
      else
        format.html { render action: "new" }
        format.json { render json: @mailme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mailmes/1
  # PUT /mailmes/1.json
  def update
    @mailme = Mailme.find(params[:id])

    respond_to do |format|
      if @mailme.update_attributes(params[:mailme])
        format.html { redirect_to @mailme, notice: 'Mailme was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mailme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mailmes/1
  # DELETE /mailmes/1.json
  def destroy
    @mailme = Mailme.find(params[:id])
    @mailme.destroy

    respond_to do |format|
      format.html { redirect_to mailmes_url }
      format.json { head :no_content }
    end
  end
end
