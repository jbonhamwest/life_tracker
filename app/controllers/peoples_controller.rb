# This class generates a controller file for people.
class PeoplesController < ApplicationController
  before_action :set_people, only: [:show, :edit, :update, :destroy]

  def index
    @peoples = People.all
  end

  def new
    @people = People.new
  end

  def show
  end

  def edit
  end

  def create
    @people = People.new(people_params)

    respond_to do |format|
      if @people.save
        format.html { redirect_to @people, notice: 'Record for people was successfully created.' }
        format.json { render :show, status: :created, location: @people }
      else
        format.html { render :new }
        format.json { render json: @people.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @people.update(people_params)
        format.html { redirect_to @people, notice: 'Record for people was successfully updated.' }
        format.json { render :show, status: :ok, location: @people }
      else
        format.html { render :edit }
        format.json { render json: @people.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @people.destroy
    respond_to do |format|
      format.html { redirect_to perons_url, notice: 'Record for people was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

private

  def set_people
    @people = people.find(params[:id])
  end

  def people_params
    params.require(:people).permit(:first_name, :middle_initial, :last_name)
  end
end
