class CustomersController < ApplicationController

  before_action :set_customer, only: [:show, :update, :edit, :destroy]

  def index
    @customers = Customer.all
  end

  def show
  end

  def new
    wizard = ModelWizard.new(Customer, session).start
    @customer = wizard.object
  end

  def edit
    ModelWizard.new(@customer, session).start
  end

  def create
    wizard = ModelWizard.new(Customer, session, params).process
    @customer = wizard.object
    if wizard.save
      redirect_to @customer, notice: "Customer's profile added!"
    else
      render :new
    end
  end

  def update
    wizard = ModelWizard.new(@customer, session, params).process
    if wizard.save
      redirect_to @customer, notice: 'Customer profile was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @customer.destroy
    redirect_to customers_url
  end

private

  def set_customer
    @customer = Customer.find(params[:id])
  end

end
