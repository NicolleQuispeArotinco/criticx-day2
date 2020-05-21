class CompaniesController < ApplicationController
    def update
        @company = Company.find(params[:id])
        if @company.update_attributes(companies_params)
            render json: @company
        else
            render json: @company.errors, status: :unprocessable_entity
        end
    end
=begin
    def destroy
        @company = Company.find(params[:id])
        @company.destroy
        render json: { status: 'Company destroyed', data: @company}, status: :ok
    end
    #-----
    def create
        @company = Company.new(companies_params)
        if @company.save
            render json: @company
        else
            render json: @company.errors
        end
    end
=end
    private
    def companies_params
        params.require(:company).permit(:name, :description, :start_date, :country)
    end
    #----
=begin
    def index
        @companies = Company.all
        render json: @companies
    end
    def show
        @companies = Company.find(params[:id])
        render json: @companies
    end
=end
end
