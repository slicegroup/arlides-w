module App
  # FrontsController
  class FrontController < AppController
    before_action :message

    def send_message
    end

    def new_message
      @message = KepplerContactUs::Message.new(
        message_params
      )
      if verify_recaptcha(model: @message) && @message.save
        UserMailer.send_new_message(@message).deliver_now
        UserMailer.send_new_message2(@message).deliver_now
        flash[:notice] = 'Mensaje enviado'
        flash[:name] = params[:message][:name]

        redirect_to root_path
      else
        redirect_to root_path
        flash[:notice] = 'Mensaje no enviado'
      end

    end

    def new_message_product
      @message = KepplerContactUs::Message.new(
        message_params

      )
      @message.archive = params[:message][:archive]
      if verify_recaptcha(model: @message) && @message.save!
        UserMailer.send_message_product(@message).deliver_now
        UserMailer.send_message_product2(@message).deliver_now
        flash[:notice] = 'Mensaje enviado'
        flash[:name] = params[:message][:name]

        redirect_to root_path
      else
        redirect_to root_path
        flash[:notice] = 'Mensaje no enviado'
      end

    end


    def index
      @banners = KepplerBanners::Banner.where(active: true)
      @clients = KepplerCustomers::Client.order(position: :asc)
    end

    def about
      @clients = KepplerCustomers::Client.all
    end

    def form
    end

    private
    def message
      @message = KepplerContactUs::Message.new
    end

    def message_params
      params.require(:message).permit(
        :name,
        :from_email,
        # { to_emails: [] },
        :to_emails,
        :subject,
        :content,
        :product,
        :problem,
        :income,
        :company,
        :biography,
        :city,
        :phone,
        :archive,
        :favorite,
        :read,
        :position,
        :deleted_at
      )
    end
  end

end
