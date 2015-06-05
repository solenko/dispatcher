class CargosController < ApplicationController

  # GET /cargos/new
  def new
    @cargo = Cargo.new
  end


  # POST /cargos
  # POST /cargos.json
  def create
    @cargo = Cargo.new(cargo_params)

    respond_to do |format|
      if @cargo.save
        UserMail.cargo_order(@cargo.id).deliver
        #TODO: calculate distance
        format.html { redirect_to root_path, :notice => 'Ваша заявка успешно создана.' }
        #format.json { render action: 'show', status: :created, location: @cargo }
      else
        format.html { render action: 'new' }
        format.json { render json: @cargo.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def cargo_params
      params.require(:cargo).permit(:ship_from_date,
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
                                    :company_type)
    end
end
