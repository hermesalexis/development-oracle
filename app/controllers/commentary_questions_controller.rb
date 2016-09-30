class CommentaryQuestionsController < ApplicationController
   before_action :authenticate_user!

	def create
	  @commentary_question = CommentaryQuestion.new(commentary_question_params)
	  @question = Question.find(params[:question_id])
	  @commentary_question.question = @question

	  if @commentary_question.save
	   redirect_to question_path(@question), notice:"El comentario ha sido creada correctamente"  
	  else
	   render "questions/show"
	  end

	end
	
	private
	def commentary_question_params
		params.required(:commentary_question).permit(:commentary).merge(user:current_user)
	end
end
