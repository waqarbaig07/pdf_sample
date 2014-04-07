class FileIosController < ApplicationController
  require 'csv'
  require 'prawn'
  # GET /csv_uploads
  # GET /csv_uploads.json
  def index
    @csv_uploads = CsvUpload.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @csv_uploads }
    end
  end

  # POST /csv_uploads
  # POST /csv_uploads.json
  def create_pdf
    unless params[:title].present? && params[:content].present?
      redirect_to action: :index, alert: "Please enter both title and content"
      return
    end
    logger.debug params
    send_data(generate_pdf(params), :filename => "post.pdf", :type => "application/pdf")
  end

  private 
  def generate_pdf(data)
    Prawn::Document.new do
      text data[:title]
      text data[:content]
    end.render 
	end
end
