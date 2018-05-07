class PeopleController < ApplicationController
  def engineers
    per = params[:per] || 18
    page = params[:page] || 1
    @all_first_words = Person.pluck(:first_word).uniq.sort
    @people = Person.ransack({ first_word_eq: params[:q] }).result.page(page).per(per)
  end

  def faculty_pls
    per = params[:per] || 18
    page = params[:page] || 1
    @all_first_words = Person.pluck(:first_word).uniq.sort
    @people = Person.ransack({ first_word_eq: params[:q] }).result.page(page).per(per)
  end

  def students
    per = params[:per] || 18
    page = params[:page] || 1
    @all_first_words = Person.pluck(:first_word).uniq.sort
    @people = Person.ransack({ first_word_eq: params[:q] }).result.page(page).per(per)
  end
end
