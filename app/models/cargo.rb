class Cargo < ActiveRecord::Base
  TRANSPORT_TYPES = ['Цельномет', 'Тент', 'Контейнер', 'Изотерм', 'Реф.', 'Контейнеровоз', 'Бортовая', 'Самосвал', 'Зерновоз', 'Цистерна', 'Негабаритный', 'Платформа', 'Автовоз', 'Окновоз', 'Скотовоз', 'Меблевоз', 'Бензовоз', 'Бетоновоз'];
  COMPANY_TYPES = ['Грузовладелец', 'Перевозчик', 'Диспетчер', 'Экспедитор', 'Логический оператор']
  PAYMENT_TYPES = ['Наличными', 'Безналичными']

  validates :ship_city, :ship_to_city, :phone, :presence => true
  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, on: :create }, if: "email.present?"

  def rounded_weight
    "#{weight.round}т" if weight.present?
  end

  def rounded_volume
    "#{volume.round}<span>м&sup3;</span>" if volume.present?
  end

end
