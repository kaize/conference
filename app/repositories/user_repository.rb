module UserRepository
  extend ActiveSupport::Concern

  included do
    scope :web, -> { order("created_at DESC")}
    #NOTE: here scopes for User
  end
end
