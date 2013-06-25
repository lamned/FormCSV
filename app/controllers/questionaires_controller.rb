class QuestionairesController < ApplicationController
  # GET /questionaires
  # GET /questionaires.json
  def index
    @questionaires = Questionaire.all.map{ |q| arraify_strings(q) }

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @questionaires }
      format.csv
    end
  end

  # GET /questionaires/1
  # GET /questionaires/1.json
  def show
    @questionaire = Questionaire.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @questionaire }
    end
  end

  # GET /questionaires/new
  # GET /questionaires/new.json
  def new
    @questionaire = Questionaire.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @questionaire }
    end
  end

  # GET /questionaires/1/edit
  def edit
    @questionaire = arraify_strings Questionaire.find(params[:id])

  end

  # POST /questionaires
  # POST /questionaires.json
  def create
    questionaire_params = params[:questionaire]
    questionaire_params = stringify_arrays questionaire_params

    @questionaire = Questionaire.new(questionaire_params)

    respond_to do |format|
      if @questionaire.save
        format.html { redirect_to @questionaire, notice: 'Questionaire was successfully created.' }
        format.json { render json: @questionaire, status: :created, location: @questionaire }
      else
        format.html { render action: "new" }
        format.json { render json: @questionaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /questionaires/1
  # PUT /questionaires/1.json
  def update
    @questionaire = Questionaire.find(params[:id])

    respond_to do |format|
      if @questionaire.update_attributes(params[:questionaire])
        format.html { redirect_to @questionaire, notice: 'Questionaire was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @questionaire.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questionaires/1
  # DELETE /questionaires/1.json
  def destroy
    @questionaire = Questionaire.find(params[:id])
    @questionaire.destroy

    respond_to do |format|
      format.html { redirect_to questionaires_url }
      format.json { head :no_content }
    end
  end

  private

  def stringify_arrays(params_hash)
    %w{ subsistence found_apprenticeship internet_portal known_portals reason_apprenticeship reason_canceled_apprenticeship annoying_apprenticeship }.each do |array_field|
      array = params_hash[array_field]
      params_hash[array_field] = array.join('%$%')
    end
    params_hash
  end

  def arraify_strings(questionaire)
    %w{ subsistence found_apprenticeship internet_portal known_portals reason_apprenticeship reason_canceled_apprenticeship annoying_apprenticeship }.each do |string_field|
      questionaire.send("#{string_field}=", questionaire.send(string_field).split('%$%'))
    end
    questionaire
  end
  helper_method :arraify_strings

end
