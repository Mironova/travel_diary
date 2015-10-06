module ArticlesHelper
  def admin?
    session[:admin].present? ? session[:admin].to_datetime + 1.minute > Time.now : false
  end
end
