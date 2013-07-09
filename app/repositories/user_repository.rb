module UserRepository
  extend ActiveSupport::Concern

  include UsefullScopes

  included do
    scope :web, -> { order("created_at DESC")}
    state_machine.states.each do |s|
      scope s.name, -> { where(state: s.name) }
    end
  end
end
