class CommentaryQuestionsController < ApplicationController
	def create
      question = Question.find(params[:question_id])
      question.commentary_questions.create(commentary_question_params)
      redirect_to question_path(question)
	end

	private
	def commentary_question_params
	  params.require(:commentary_question).permit(:commentary).merge(user:current_user)
	end
end
