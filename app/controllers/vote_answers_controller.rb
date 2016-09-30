class VoteAnswersController < ApplicationController
	before_action :authenticate_user!
	def create
	   answer = Answer.find(params[:answer_id])
	   question = Question.find(params[:question_id])
	   answer.vote_answers.create(user:current_user)
	   redirect_to question_path(question)
	end
    
    def destroy
    	answer = Answer.find(params[:answer_id])
    	question = Question.find(params[:question_id])
    	answer.vote_answers.where(user:current_user).take.try(:destroy)
    	redirect_to question_path(question)
    end

end
