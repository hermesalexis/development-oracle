class VoteQuestionsController < ApplicationController
	
	def create
	  question = Question.find(params[:question_id])
	  question.vote_questions.create(user: current_user)
	  redirect_to question_path(question)
	end

	def destroy
	  question = Question.find(params[:question_id])
	  question.vote_questions.where(user: current_user).take.try(:destroy) #ejecuta el metodo destroy si hay un usuario actual
	  redirect_to question_path(question)
	end
end
