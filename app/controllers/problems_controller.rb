class ProblemsController < ApplicationController
    def index
        @problems = Problem.order(id: :desc).paginate(:page => params[:page], per_page: 8)
    end

    def show
        @problem = Problem.find(params[:id])
        @solution = Solution.new
    end

    def new
        @problem = Problem.new
    end
    
    def create
        @problem = Problem.new(resources_params)
        @problem.user = User.first
        if @problem.save
            flash[:notice] = "Berhasil"
            redirect_to root_path
        else
            flash.now[:notice] = "Gagal"
            render 'new'
        end

    end

    def edit
        @problem = Problem.find(params[:id])
    end

    def destroy
        @problem = Problem.find(params[:id])
        @problem.destroy

        redirect_to root_path
    end

    private

    def resources_params
        params.require(:problem).permit(:deskripsi, :categori_id, :priority_id)
    end
end