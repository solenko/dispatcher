class UserMail < ActionMailer::Base
  default from: "from@example.com"

  def cargo_order(cargo_id)
    @cargo_id = cargo_id
    mail(to: 'kiber_ua@rambler.ru',
        from: "\"Диспетчер\" <support@dispatcher.com>",
        subject: "Уведомление на создание заявки на груз",
        content_type: "text/html",
        cc: "winner_ua@ukr.net") unless Rails.env.test?

  end

  def transport_order(transport_id)
    @transport_id = transport_id
    mail(to: 'kiber_ua@rambler.ru',
        from: "\"Диспетчер\" <support@dispatcher.com>",
        subject: "Уведомление на создание заявки на транспорт",
        content_type: "text/html",
        cc: "winner_ua@ukr.net") unless Rails.env.test?

  end
end
