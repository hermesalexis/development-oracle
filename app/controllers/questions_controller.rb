class QuestionsController < ApplicationController

	def index
		@questions = Question.all.order('created_at DESC')
	end
	
	def new
	  @question = Question.new
	end
    
  def create
    @question = Question.new(question_params)
    @question.user = current_user
    if @question.save
      redirect_to questions_path, notice:"La pregunta fue creada correctamente"
    else
      render:new
    end
  end
  
  def show
    @question = Question.find(params[:id])
  end
  private

    def question_params
      params.required(:question).permit(:question, :description)
    end

end
