class NewBlogsController < ApplicationController
  before_action :set_new_blog, only: [:show, :edit, :update, :destroy]

  # GET /new_blogs
  # GET /new_blogs.json
  def index
    @new_blogs = NewBlog.all
  end

  # GET /new_blogs/1
  # GET /new_blogs/1.json
  def show
  end

  # GET /new_blogs/new
  def new
    @new_blog = NewBlog.new
  end

  # GET /new_blogs/1/edit
  def edit
  end

  # POST /new_blogs
  # POST /new_blogs.json
  def create
    @new_blog = NewBlog.new(new_blog_params)

    respond_to do |format|
      if @new_blog.save
        format.html { redirect_to @new_blog, notice: 'New blog was successfully created.' }
        format.json { render :show, status: :created, location: @new_blog }
      else
        format.html { render :new }
        format.json { render json: @new_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_blogs/1
  # PATCH/PUT /new_blogs/1.json
  def update
    respond_to do |format|
      if @new_blog.update(new_blog_params)
        format.html { redirect_to @new_blog, notice: 'New blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @new_blog }
      else
        format.html { render :edit }
        format.json { render json: @new_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_blogs/1
  # DELETE /new_blogs/1.json
  def destroy
    @new_blog.destroy
    respond_to do |format|
      format.html { redirect_to new_blogs_url, notice: 'New blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_blog
      @new_blog = NewBlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def new_blog_params
      params.require(:new_blog).permit(:title, :body)
    end
end
