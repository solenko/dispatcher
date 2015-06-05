class PagesController < ApplicationController
  def home
    @transports = Transport.where(:order_status => true).order(id: :desc).last(5)
    @cargos = Cargo.where(:order_status => true).order(id: :desc).last(5)
  end

  def help
  end

  def about
  end
end
