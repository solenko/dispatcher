ActiveAdmin.register Cargo do

  menu :label => "Груз"

  #menu :label => proc{ I18n.t("mypost") }

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

  permit_params :id,
                :ship_from_date,
                :ship_till_date,
                :ship_city,
                :ship_to_city,
                :description,
                :transport_type,
                :weight,
                :volume,
                :payment_type,
                :payment_amount,
                :name,
                :phone,
                :email,
                :company_name,
                :company_type,
                :order_status

  index :title => 'Груз' do
    column "Дата отправки груза", :ship_from_date
    column "Дата отправки по", :ship_till_date
    column "Откуда", :ship_city
    column "Куда", :ship_to_city
    column "Описание груза", :description
    #column "Тип транспорта", :transport_type
    #column "Вес груза, т", :weight
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
    f.inputs "Заявка" do
      f.input:ship_from_date, :as => :datepicker, :label => "Дата отправки груза с"
      f.input:ship_till_date, :as => :datepicker, :label => "Дата отправки груза по"
      f.input:ship_city, :label => "Город отправления"
      f.input:ship_to_city, :label => "Город назначения"
      f.input:description, :label => "Описание груза (кратко)"
      f.input:transport_type, :as => :select, :collection => Cargo::TRANSPORT_TYPES, :label => "Какой нужен транспорт"
      f.input:weight, :label => "Сколько весит груз"
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
