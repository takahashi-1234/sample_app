class Public::QuestionsController < ApplicationController
  def show
    @question=Question.new
  end
  
  def result
    @question=Question.new(question_params)
    score=0
    if @question.answer1==1
      score+=20
    end
    if @question.answer2==3
      score+=20
    end
    if @question.answer3==2
      score+=20
    end
    if @question.answer4==1
      score+=20
    end
    if @question.answer5==4
      score+=20
    end
    @question.update(score:score)
  end
  
  private
  def question_params
    params.require(:question).permit(:answer1,:answer2,:answer3,:answer4,:answer5)
  end
end
