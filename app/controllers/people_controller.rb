class PeopleController < ApplicationController
  before_action :set_person, :expect => [:index]

  def index
    per = params[:per] || 18
    page = params[:page] || 1
    @all_first_words = Person.pluck(:first_word).uniq.sort
    @people = Person.ransack({ first_word_eq: params[:q] }).result.page(page).per(per)
  end
  private
  def set_person
    @person = Person.find(params[:id])
  end
end
