ActiveAdmin.register Transport do

  menu :label => "Транспорт"

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

  permit_params :id,
                :transport_from_date,
                :transport_till_date,
                :transport_city,
                :transport_to_city,
                :transport_type,
                :capacity,
                :volume,
                :payment_type,
                :payment_amount,
                :name,
                :phone,
                :email,
                :company_name,
                :company_type,
                :order_status

  index :title => 'Транспорт' do
    column "Транспорт свободен с", :transport_from_date
    column "Транспорт свободен по", :transport_till_date
    column "Город нахождения", :transport_city
    column "Город назначения", :transport_to_city
    column "Тип транспорта", :transport_type
    #column "Грузоподъемность, т", :capacity
    #column "Объем груза, м3", :volume
    #column "Вид платежа", :payment_type
    #column "Сумма", :payment_amount
    column "Имя", :name
    column "Телефон", :phone
    #column "Email", :email
    #column "Компания или ФИО", :company_name
    #column "Специфика деятельности", :company_type
    column "Статус заявки", :order_status
    actions
  end


  form do |f|
    f.inputs "Транспортная заявка" do
      f.input:transport_from_date, :as => :datepicker, :label => "Транспорт будет свободен с"
      f.input:transport_till_date, :as => :datepicker, :label => "Транспорт будет свободен по"
      f.input:transport_city, :label => "Город нахождения транспорта"
      f.input:transport_to_city, :label => "Город назначения транспорта"
      f.input:transport_type, :as => :select, :collection => Cargo::TRANSPORT_TYPES, :label => "Какой нужен транспорт"
      f.input:capacity, :label => "Грузоподъемность"
      f.input:volume, :label => "Объем груза (если знаете)"
      f.input:payment_type, :as => :select, :collection => Cargo::PAYMENT_TYPES, :label => "Вид платежа"
      f.input:payment_amount, :label => "Сколько будете платить"
      f.input:name, :label => "Как к вам можно обращаться"
      f.input:phone, :label => "Ваш контактный телефон"
      f.input:email, :label => "Электронная почта (если есть)"
      f.input:company_name, :label => "Название фирмы (если есть) или ФИО"
      f.input:company_type, :as => :radio, :collection => Cargo::COMPANY_TYPES, :label => "Специфика деятельности"
      f.input:order_status, :label => "Статус заявки"
    end
    f.actions
  end

end
