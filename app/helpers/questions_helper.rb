module QuestionsHelper

 def validate_sign_in option, *question
    if option == 1 
 	 user_signed_in? ? route = question_vote_question_path(question) : route = new_user_session_path 
    elsif option == 2
     user_signed_in? ? route = new_question_path : route = new_user_session_path 
    end
 end

end
