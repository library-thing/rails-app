class LibrariesController < ApplicationController
  before_action :set_library, only: [:show, :edit, :update, :destroy]

  skip_before_filter :verify_authenticity_token

  # GET /libraries
  # GET /libraries.json
  def index
    @libraries = Library.all
  end

  # GET /libraries/1
  # GET /libraries/1.json
  def show
    if params[:book_checkout]
      @library = Library.find(params[:id])
      @student = Student.find(params[:student][:student_id])
      @books = Book.where(:available => true)
      render :checkout_select
    elsif params[:book_return]
      @library = Library.find(params[:id])
      @student = Student.find(params[:student][:student_id])
      #AND the student has checkedout books
      if @student.books.length > 0
      #keep going if student has books to return   
        render :return_select
      else 
        #display a message and do not leave home page
        redirect_to root_url, notice: "you do not have any books checkedout"
      end
    else 
      render :browse
    end
  end

  def checkout_select
  end

  def checkout_confirm
   #    {"books"=>{"book_id"=>["1", "5", "8"]},
   # "student_id"=>"4",
   # "commit"=>"Check out selected books",
   # "controller"=>"libraries",
   # "action"=>"checkout_confirm",
   # "id"=>"1"}  

    @library = Library.find(params[:id])
    @student = Student.find(params[:student_id])
    
    # get all books from books[:book_id][in here]
    selected_books = params[:books][:book_id]
    @checkedout_books = []

    selected_books.each do |book_id|
      @student.checkout_books.build(:book_id => book_id)
      book = Book.find(book_id)
      book.available = false
      book.save
      @checkedout_books << book
    end

    @student.save
    
  end

  def return_select
  end

  def return_confirm
    @library = Library.find(params[:id])
    @student = Student.find(params[:student_id])
    @book = Book.find(params[:books][:book_id])
    # @returned_book = @student.books.find(@book.id)
    # @student.books.delete(@book)
    # @book.available = true

    selected_books = params[:books][:book_id]
    @returned_books = []

    selected_books.each do |book_id|
      @student.books(:book_id => book_id).delete
      book = Book.find(book_id)
      book.available = true
      book.save
      @returned_books << book
    end

    @student.save

  end

  def browse
    #currently using show to redirect based on user action so may need a separate action for simply browsing books in the library
  end


  # GET /libraries/new
  def new
    @library = Library.new
  end

  # GET /libraries/1/edit
  def edit
  end

  # POST /libraries
  # POST /libraries.json
  def create
    @library = Library.new(library_params)

    respond_to do |format|
      if @library.save
        format.html { redirect_to @library, notice: 'Library was successfully created.' }
        format.json { render action: 'show', status: :created, location: @library }
      else
        format.html { render action: 'new' }
        format.json { render json: @library.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /libraries/1
  # PATCH/PUT /libraries/1.json
  def update
    respond_to do |format|
      if @library.update(library_params)
        format.html { redirect_to @library, notice: 'Library was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @library.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /libraries/1
  # DELETE /libraries/1.json
  def destroy
    @library.destroy
    respond_to do |format|
      format.html { redirect_to libraries_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_library
      @library = Library.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def library_params
      params.require(:library).permit(:name)
    end
end


