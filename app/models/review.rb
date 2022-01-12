class Review < ApplicationRecord
  attachment :image
  belongs_to :customer
  has_many:tag_maps,dependent: :destroy
  has_many:tags,through: :tag_maps
  
  def save_tag(sent_tags)
    current_tags=self.tags.pluck(:tag_name) unless self.tags.nil?
    old_tags=current_tags-sent_tags
    new_tags=sent_tags-current_tags
    
    old_tags.each do |old|
       old.delete if old.post.present?
    end
    
    new_tags.each do |new|
      new_review_tag=Tag.find_or_initialize_by(tag_name:new)
      self.tags << new_review_tag
    end
  end
end
