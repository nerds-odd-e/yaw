class Ability
  include ::CanCan::Ability

  def initialize(user)
    merge(::Exam::Ability.new(user))
  end
end

