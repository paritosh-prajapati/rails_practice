class PeopleController < ApplicationController
  def index
    @people= Person.new
  end

  def new
    @people = Person.new
  end

  def create
    @people = Person.new(people_params)

    if @people.save
      redirect_to @people
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def people_params
      params.require(:article).permit(:name, :email)
    end

end
