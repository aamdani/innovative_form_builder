module PolicyHelpers
  def admin?
    user?.admin?
  end
end
