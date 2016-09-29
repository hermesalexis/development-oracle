class VoteAnswersController < ApplicationController
	def create
	   answer = Answer.find(params[:answer_id])
	   question = Question.find(params[:question_id])
	   answer.vote_answers.create(user:current_user)
	   redirect_to question_path(question)
	end
    
    def delete
    	
    end

end
