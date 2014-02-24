class Customer < ActiveRecord::Base
  validates :number, numericality: true, if: :step1?
  validates :name, presence: true, if: :step2?
  validates :model, presence: true, if: :step3?

  include MultiStepModel

  def self.total_steps
    3
  end

end

