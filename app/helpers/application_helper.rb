module ApplicationHelper
  def result_image(member)
    case member
    when '佐々木 舞香'
      'maika2.JPEG'
    when '音嶋 莉沙'
      'risa2.JPEG'
    when '諸橋 沙夏'
      'sana2.JPEG'
    when '髙松 瞳'
      'hitomi2.JPEG'
    end
  end
end
