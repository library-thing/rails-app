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
      render :return
    else
      render :browse
    end
  end

  def checkout_select
  end

  def checkout_confirm
 #    {"books"=>{"book_id"=>"20"},
 # "student_id"=>"1",
 # "commit"=>"Check out the selected book",
 # "controller"=>"libraries",
 # "action"=>"checkout_confirm",
 # "id"=>"1"}
@library = Library.find(params[:id])

#associate book with student
@student = Student.find(params[:student_id])
@book = Book.find(params[:books][:book_id])

@book.available = false

#  @library.books[@book.id].available = false

  #set book in library as not available
  #@library.book(@book).available = false 

    # @student.books = StudentBook.where(:student_id => @student.id)
    # @student.books << @book

    
    

    # display a notice that the book is now checked out (and please don't forget to return it :)

  end

  def return
    #handle return of a book
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


