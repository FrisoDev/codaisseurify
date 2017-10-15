class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end
around_action :rescue_from_fk_contraint, only: [:destroy]

def rescue_from_fk_contraint
  begin
    yield
  rescue ActiveRecord::InvalidForeignKey
    # Flash and render, render API json error... whatever
  end
end
