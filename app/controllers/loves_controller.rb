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
    @result << @answers[:q16]
  end

  def scoring(answers)
    score = 0
    score += 5 if answers[:q1] == 'yes'
    score += 5 if answers[:q2] == 'yes'
    score += 5 if answers[:q3] == 'yes'
    score += 5 if answers[:q4] == 'yes'
    score += 5 if answers[:q5] == 'yes'
    score += 7 if answers[:q6] == 'yes'
    score += 7 if answers[:q7] == 'yes'
    score += 7 if answers[:q8] == 'yes'
    score += 7 if answers[:q9] == 'yes'
    score += 7 if answers[:q10] == 'yes'
    score += 8 if answers[:q11] == 'yes'
    score += 8 if answers[:q12] == 'yes'
    score += 8 if answers[:q13] == 'yes'
    score += 8 if answers[:q14] == 'yes'
    score += 8 if answers[:q15] == 'yes'
    score
  end
end
