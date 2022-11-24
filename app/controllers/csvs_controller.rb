class CsvsController < ApplicationController
  def index
    @csvs = current_user.csvs.all
  end

  def create
    books = []
    CSV.foreach(params[:file]).each do |row|
      (title, author, date_published, uuid, publisher_name) = *row
      date = date_published.to_date
      book = Book.new(title: title, author: author, date_published: date, uuid: uuid, publisher_name: publisher_name)

      if book.valid?
        books << book
      else
        raise book.errors.first.full_message
      end
    end
    # Upload the CSV to S3
    csv = current_user.csvs.create(file: params[:file])

    # Associate the books with the CSV
    books.each do  |book| 
      book.csv = csv 
      book.save
    end

    redirect_to csvs_path
  rescue StandardError => e
    redirect_to csvs_path, error: e.message
  end

  def show
    @csv = Csv.find(params[:id])
  end
end