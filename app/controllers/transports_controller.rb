class TransportsController < ApplicationController

  # GET /transports/new
  def new
    @transport = Transport.new
  end


  # POST /transports
  # POST /transports.json
  def create
    @transport = Transport.new(transport_params)

    respond_to do |format|
      if @transport.save
        UserMail.transport_order(@transport.id).deliver
        #TODO: calculate distance
        format.html { redirect_to root_path, :notice => 'Ваша заявка успешно создана.' }
        #format.json { render action: 'show', status: :created, location: @cargo }
      else
        format.html { render action: 'new' }
        format.json { render json: @transport.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def transport_params
      params.require(:transport).permit(:ship_from_date,
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
                                    :company_type)
    end
end
