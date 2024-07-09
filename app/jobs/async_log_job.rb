class AsyncLogJob < ApplicationJob
  queue_as :async_log

  def perform(user)
    UserMailer.with(user: user).welcome_email.deliver_now

  # def perform(message: "hello") # message引数を追加
  #   AsyncLog.create!(message: message) # データベースに保存する
  end
end
