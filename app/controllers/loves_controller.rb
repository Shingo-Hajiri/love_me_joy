class LovesController < ApplicationController
  before_action :set_params, only: %i[create]
  def create
    @result << scoring(@answers)
    redirect_to love_result_path(result: @result)
  end

  def members; end

  def maika; end

  def result
    @result = params[:result]
  end

  private
  def set_params
    @answers = params[:answers]
    @result = []
    n = 0
    (1..16).each do |i|
      answer = @answers[:"q#{i}"] || '未回答'
      @result << answer
    end
  end

  def scoring(answers)
    score = 0
    score += 5 if answers[:q1] == '⚪︎'
    score += 5 if answers[:q2] == '⚪︎'
    score += 5 if answers[:q3] == '⚪︎'
    score += 5 if answers[:q4] == '⚪︎'
    score += 5 if answers[:q5] == '⚪︎'
    score += 7 if answers[:q6] == '⚪︎'
    score += 7 if answers[:q7] == '⚪︎'
    score += 7 if answers[:q8] == '⚪︎'
    score += 7 if answers[:q9] == '⚪︎'
    score += 7 if answers[:q10] == '⚪︎'
    score += 8 if answers[:q11] == '⚪︎'
    score += 8 if answers[:q12] == '⚪︎'
    score += 8 if answers[:q13] == '⚪︎'
    score += 8 if answers[:q14] == '⚪︎'
    score += 8 if answers[:q15] == '⚪︎'
    score
  end
end
