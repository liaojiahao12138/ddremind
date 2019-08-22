class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def hello
    render html: "this is dd_remind !"
  end
end
