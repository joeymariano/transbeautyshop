class EmailController < ApplicationController
  def create
    binding.pry
    c = ClientForm.new(:name => params['name'], :surname => params['surname'], :pronoun => params['pronoun'], :email => params['email'], :need => params['need'], :message => params['message'])
    binding.pry
    c.deliver

    render 'information#contact'
  end
end
