module PartyGoer
  attr_accessor :drink_count
  def initialize
    @drink_count = 0
  end
  def drink
    if drink_count >= 2
      false
    else
      self.drink_count += 1
      true
    end
  end

  def sing
    "Just a small town girl...Living' in a lonely world!!"
  end

  def cause_havoc
    raise PersonalizedHavocError, "You should define this yourself!"
  end

  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def invited?
      true
    end
  end
end

class PersonalizedHavocError < StandardError
end

