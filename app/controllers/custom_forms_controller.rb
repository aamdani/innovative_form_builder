class CustomFormsController < ApplicationController
  before_action :set_heading
  before_action :set_custom_form, only: [:show, :edit, :update, :destroy]

  # GET /custom_forms
  # GET /custom_forms.json
  def index
    @custom_forms = CustomForm.all
  end

  # GET /custom_forms/1
  # GET /custom_forms/1.json
  def show
  end

  # GET /custom_forms/new
  def new
    @custom_form = CustomForm.new
  end

  # GET /custom_forms/1/edit
  def edit
  end

  # POST /custom_forms
  # POST /custom_forms.json
  def create
    @custom_form = CustomForm.new(custom_form_params)
    @custom_form.user = current_user
    @custom_form.published_at = Time.zone.now

    respond_to do |format|
      if @custom_form.save
        format.html { redirect_to @custom_form, notice: "Custom form was successfully created." }
        format.json { render :show, status: :created, location: @custom_form }
      else
        format.html { render :new }
        format.json { render json: @custom_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_forms/1
  # PATCH/PUT /custom_forms/1.json
  def update
    respond_to do |format|
      if @custom_form.update(custom_form_params)
        format.html { redirect_to @custom_form, notice: "Custom form was successfully updated." }
        format.json { render :show, status: :ok, location: @custom_form }
      else
        format.html { render :edit }
        format.json { render json: @custom_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_forms/1
  # DELETE /custom_forms/1.json
  def destroy
    @custom_form.destroy
    respond_to do |format|
      format.html { redirect_to custom_forms_url, notice: "Custom form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_custom_form
    @custom_form = CustomForm.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def custom_form_params
    params.require(:custom_form).permit(:name, :user_id, :published_at)
  end

  def set_heading
    @heading = "Custom Forms"
  end
end
