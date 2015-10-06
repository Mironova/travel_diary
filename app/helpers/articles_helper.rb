module ArticlesHelper
  def admin?
    session[:admin].present? ? session[:admin].to_datetime + 1.hour > Time.now : false
  end
end
