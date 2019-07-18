class SolutionsController < ApplicationController
    def create
        @problem = Problem.find(params[:problem_id])
        @solution = Solution.new(resources_params)
        @solution.problem = @problem

        if @solution.save
            redirect_to root_path
        else
            flash.now[:notice] = "Gagal"
        end
    end

    private

    def resources_params
        params.require(:solution).permit(:solusi, :user_id)
    end
end