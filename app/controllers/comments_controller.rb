class CommentsController < ApplicationController
	def create
		if params[:question_id].present?
			@question = Question.find(params[:question_id])
			@comment = @question.comments.new(comment_params)

			@comment.save
			redirect_to @question

			# Crear un comentario para la pregunta
		elsif params[:answer_id].present?
			@answer = Answer.find(params[:answer_id])
			@comment = @answer.comments.new(comment_params)

			@comment.save
			redirect_to @answer.question
			# Crear un comment para la respuest 
		end
	end

	  private
  	def comment_params
    	params.require(:comment).permit(:body).merge(user_id: current_user.id)
 	end
end
