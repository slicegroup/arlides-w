class UserMailer < ApplicationMailer
  def send_new_message(user)
      @message = user
      mail(from: Rails.application.secrets.email, to: @message[:to_emails], subject: 'Arlides Group')
  end
  
  def send_new_message2(user)
    @message = user
    mail(to: Rails.application.secrets.email, subject: 'Arlides Group')
  end 

  def send_message_product(user)
      @message = user
      @host = "https://arlidesgroup.com"
      mail(from: Rails.application.secrets.email, to: @message[:to_emails], subject: 'Arlides Group')
  end
  
  def send_message_product2(user)
    @message = user
    @host = "https://arlidesgroup.com"
    mail(to: Rails.application.secrets.email, subject: 'Arlides Group')
  end
  def document(user)
    attachments.inline[@message.archive.url] = File.read("#{Rails.root}/public#{@message.archive.url}") if @message.archive.url
  end 
end
