class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      #byebug
      redirect_to person_path(@person)
    else
      render :new
    end

    
  end

  private

  def person_params
    params.require(:person).permit(:name, :address, :magazine_ids => [])
  end

end
