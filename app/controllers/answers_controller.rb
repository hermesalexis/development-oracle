class AnswersController < ApplicationController
  before_action :authenticate_user!

  def create
  	 @answer = Answer.new(answer_params)
  	 @question = Question.find(params[:question_id])
  	 @answer.question = @question

    if @answer.save
     redirect_to question_path(@question), notice:"La respuesta ha sido creada correctamente"  
    else
     render "questions/show/"
    end

  end
  
  private
  def answer_params
  	params.required(:answer).permit(:answer).merge(user:current_user)
  end
end
