class User < ActiveRecord::Base
  include Exam::Person
  attr_accessor :trainer
  def admin?
    false
  end

  def trainer?
    trainer
  end

end
