class UserDecorator < Draper::Decorator
  include Exam::PersonDecorator
  def identification
    'cool name(with email)'
  end
end
