class VotesController < ApplicationController
	def create
	  question = Question.find(params[:question_id])
	  question.votes.create(user_id: current_user.id)

	  redirect_to root_path
	end

	def destroy
	  question = Question.find(params[:question_id])
	  question.votes.where(user: current_user).take.try(:destroy)

	  redirect_to root_path
	end
end
