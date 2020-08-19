class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @arenes = Arene.where(dispo: "libre").order(id: :DESC)
  end
end
