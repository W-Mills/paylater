class BorrowersController < JSONAPI::ResourceController
  skip_before_action :verify_authenticity_token

  def create
    @borrower = Borrower.new(borrower_params)
    if @borrower.save
      render json: @borrower
    else
      render json: @borrower.errors, status: :unprocessable_entity
    end
  end

  def borrower_params
    params[:data][:attributes].permit(:name, :address, :phone, :email, :income, :expense)
  end
end
