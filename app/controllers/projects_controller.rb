class ProjectsController < ApplicationController

    def dashboard
        if params[:search].present?
            @projects = Project.where("status = ?", params[:search])
        else
            @projects = Project.all
        end
    end

    def new
        @project = Project.new
        @statuses = Project.statuses.keys.to_a
    end

    def create
        @project = Project.create(project_params)
    end

    private

    def project_params
        params.require(:project).permit(:name, :description, :starts_on, :finish_on, :status)
    end
    
end
