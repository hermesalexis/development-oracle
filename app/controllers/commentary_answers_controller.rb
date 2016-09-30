class CommentaryAnswersController < ApplicationController
  before_action :authenticate_user!
 def create
  @commentary_answer = CommentaryAnswer.new(commentary_answer_params)
  @question = Question.find(params[:question_id])
  @answer = Answer.find(params[:asnwer_id]) #lo debo mandar desde la vista
  @commentary_answer.answer = @answer

  if @commentary_answer.save
   	redirect_to question_path(@question), notice:"El comentario ha sido creada correctamente"  
  else
  	render "questions/show"
  end
  
 end

 private
  def commentary_answer_params
  	params.required(:commentary_answer).permit(:commentary).merge(user:current_user)
  end
end
