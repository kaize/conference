module UserRepository
  extend ActiveSupport::Concern

  include UsefullScopes

  included do
    scope :web, -> { order("created_at DESC")}
    scope :activated, -> { where state: :active }
  end
end
