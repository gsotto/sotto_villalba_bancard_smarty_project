class Smart < ActiveRecord::Base
  validates :name, :uniqueness => true
  validates :name, :presence => true
  validates :description, :length => {:minimum => 20}
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :image_url, :format => {
      :with => /\.(gif|jpg|png)/i,
      :message => 'must be an url for GIF, JPG o PNG image'
  }
  has_many :line_items

  before_destroy :ensure_not_referenced_by_any_line_item

  def ensure_not_referenced_by_any_line_item
    if line_items.first
            # Agrega un mensaje de error a nivel del objeto, no a nivel del atributo
      errors.add(:base, "Existe line item dependiente del smart")
      return false
    else
    return true
    end
  end
end
