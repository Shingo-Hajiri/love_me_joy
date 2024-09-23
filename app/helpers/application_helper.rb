module ApplicationHelper
  def result_image(member)
    case member
    when '佐々木 舞香'
      'maika2.JPEG'
    when '音嶋 莉沙'
      'risa.JPEG'
    end
  end
end
