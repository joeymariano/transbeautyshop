class EmailController < ApplicationController
  def create
    c = ClientForm.new(:name => params['name'], :surname => params['surname'], :pronoun => params['pronoun'], :email => params['email'], :need => params['need'], :message => params['message'])
    if c.deliver
      flash[:notice] = "Email Sent Successfully."
      redirect_to '/contact'
    else
      flash[:notice] = "Email Failure - Please Try Again."
      redirect_to '/contact'
    end
  end
end
