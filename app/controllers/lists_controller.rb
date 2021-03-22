class ListsController < ApplicationController
  before_action :set_list, only: [:show, :edit, :update, :destroy]
  def index
    @list= List.all
  end

  def show

  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(params.require(:list).permit(:student_id, :title, :description))
    if @list.save
      flash[:notice]="successfully saved"
      redirect_to lists_path(@list)
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @list.update(params.require(:list).permit(:student_id, :title, :description))
      flash[:notice]="successfully"
      redirect_to list_path(@list)
    else
      render 'edit'
    end
  end

  def destroy

    @list.destroy
    redirect_to lists_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_list
      @list = List.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def list_params
      params.require(:list).permit(:Student, :title, :description)
    end
end
