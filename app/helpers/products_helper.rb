module ProductsHelper
  def allowed?(id)
    current_user.id == id
  end
end
