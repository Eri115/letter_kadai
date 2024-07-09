class UserMailer < ApplicationMailer
  def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: 'Welcome to Our App')
  end
  # def welcome
  #   @name = params[:name] # params: 呼び出し元から渡されたデータ
  #   # インスタンス変数に代入すると次のビューで使える
  #   mail(to: params[:to], subject: "登録完了") # メール送信
  # end
end
