class JoysController < ApplicationController
  before_action :set_params, only: %i[create]
  def create
    @result << scoring(@answers)
    redirect_to love_result_path(result: @result)
  end

  def members; end

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
    score += 5 if answers[:q1] == '正解'
    score += 5 if answers[:q2] == '正解'
    score += 5 if answers[:q3] == '正解'
    score += 5 if answers[:q4] == '正解'
    score += 5 if answers[:q5] == '正解'
    score += 7 if answers[:q6] == '正解'
    score += 7 if answers[:q7] == '正解'
    score += 7 if answers[:q8] == '正解'
    score += 7 if answers[:q9] == '正解'
    score += 7 if answers[:q10] == '正解'
    score += 8 if answers[:q11] == '正解'
    score += 8 if answers[:q12] == '正解'
    score += 8 if answers[:q13] == '正解'
    score += 8 if answers[:q14] == '正解'
    score += 8 if answers[:q15] == '正解'
    score
  end
end
