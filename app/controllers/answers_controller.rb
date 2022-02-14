class AnswersController < ApplicationController
  def answer
    @answer = params[:question]

    @coach_answer = "I don't care, get dressed and go to work!"
    @coach_answer = 'Great!' if @answer.downcase == 'i am going to work'
    @coach_answer = 'Silly question, get dressed and go to work!' if @answer.end_with?('?')
  end
end
