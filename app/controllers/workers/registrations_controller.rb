class Workers::RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:worker).permit(:name, :zip, :school, :degree_id, { industry_ids: []}, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:worker).permit(:name, :zip, :school, :degree_id, { industry_ids: []}, :email, :password, :password_confirmation, :current_password)
  end
end