class EmailController < ApplicationController
  def create
      binding.pry
    render 'information#contact'
  end
end
