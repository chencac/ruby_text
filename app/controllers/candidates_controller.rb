class CandidatesController < ApplicationController


    def index
        @candidates =Candidate.all
    end

    def new
        @candidate = Candidate.new
    end
    def show

        
    end

    def create

        @candidate = Candidate.new(candidate_params)

        if@candidate.save
            flash[:notice] = "Candidate rewxw"
            redirect_to '/candidates'
        else
            render:new
        end
    end


    private
    def candidate_params
        params.require(:candidate).permit(:name, :party,:age,:politics)
    end

end