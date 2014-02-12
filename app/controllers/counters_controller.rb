class CountersController < ApplicationController
  before_action :set_counter, only: [:show, :increment]

  # GET /counters/1
  # GET /counters/1.json
  def show
  end
  
  def increment
    @counter.clicks += 1
    @counter.save
    redirect_to counter_path(@counter)
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_counter
      @counter = Counter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def counter_params
      params.require(:counter).permit(:clicks)
    end
end
