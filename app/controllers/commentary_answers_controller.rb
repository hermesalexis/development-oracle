class CommentaryAnswersController < ApplicationController
  before_action :authenticate_user!

 def create
  @commentary_answer = CommentaryAnswer.new(commentary_answer_params)
  @question = Question.find(params[:question_id])

  if @commentary_answer.save
   	redirect_to question_path(@question), notice:"El comentario ha sido creado correctamente"  
  else
  	render "questions/show"
  end
  
 end

 private
  def commentary_answer_params
  	params.required(:commentary_answer).permit(:commentary, :answer_id).merge(user:current_user)
  end
end
