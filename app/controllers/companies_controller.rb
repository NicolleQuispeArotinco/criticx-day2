class CompaniesController < ApplicationController
    def create
        @company = Company.new(companies_params)
        if @company.save
            render json: @company
        else
            render json: @company.errors
        end
    end

    private
    def companies_params
        params.require(:company).permit(:name, :description, :start_date, :country)
    end
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
