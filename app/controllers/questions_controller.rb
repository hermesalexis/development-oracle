class QuestionsController < ApplicationController

	def index
		
	end
	
	def new
	  @question = Question.new
	end
    
    def create
      
    end
    private

    def question_params
      params.required(:question).permit(:question, :description)
    end

end
