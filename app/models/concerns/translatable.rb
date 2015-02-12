module Translatable
  extend ActiveSupport::Concern

  included do
    scope :find_by_lang, -> (lang) {where(locale: lang)}

    before_save :build_permalink
  end

  protected

  def build_permalink
    self.slug ||= slug_from_string(self.title)
  end

  def slug_from_string(title)
    Russian::transliterate(title).downcase.gsub(/\s/, "-")
  end
end