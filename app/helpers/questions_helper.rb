module QuestionsHelper

 def route_question(question = nil, answer = nil)

   if !question.nil? && !answer.nil?
      question_vote_answer_path(question, answer_id:answer)
   elsif !question.nil?
      question_vote_question_path(question)
   else
      new_question_path
   end
 end


end
