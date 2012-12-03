class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_all_var

  def load_all_var
    @categories = Category.order(:name)
    @lastcomments = Comment.order(:id).reverse_order.limit(5)
    @news = Category.order(:id).reverse_order.limit(5)
    @newservers = Server.order(:id).reverse_order.limit(5)
    @topservers = Follower.top5
  end

end
