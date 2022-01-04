class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @your_question = params[:question]
    @coach_reply = "I don't care, get dressed and go to work!"

    if @your_question == 'I am going to work'
      @coach_reply = 'Great!'
    elsif @your_question.end_with?('?')
      @coach_reply = 'Silly question, get dressed and go to work!'
    else
      @coach_reply
    end
  end
end

# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise the coach will answer I don't care, get dressed and go to work!
