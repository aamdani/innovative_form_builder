module PolicyHelpers
  def admin?
    user && user.admin?
  end
end
