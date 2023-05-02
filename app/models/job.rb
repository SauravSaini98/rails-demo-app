class Job < ApplicationRecord
  has_many :employees

  has_one :job_description
  accepts_nested_attributes_for :job_description, allow_destroy: false


#  add new record with nested attributes
# Job.create(name: "IT", code: "IT-001", job_description_attribute: {description: "This is IT company for provide software applications"})
end
