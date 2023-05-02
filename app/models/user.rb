class User < ApplicationRecord
  validates_presence_of :first_name, :email, :password

  validates :first_name, length: {minimum: 3, maximum: 12}
  validates :email, format: {with: /\A(\S+)@(.+)\.(\S+)\z/, message: "invalid should be like this"}

  # call when new record create
  before_create :call_before_create
  after_create :call_after_create

  # call when new record create or update record.
  before_save :call_before_save
  after_save :call_after_save

  # call when record update
  before_update :call_before_update
  after_update :call_after_update

  # call when record destroy
  before_destroy :call_before_destroy
  after_destroy :call_after_destroy

  after_create :send_welcome_email

  private

  def call_after_create
    puts "Call After create"
  end

  def call_before_create
    puts "Call Before create"
  end

  def call_after_save
    puts "Call After save"
  end

  def call_before_save
    puts "Call Before save"
  end

  def call_after_update
    puts "Call After update"
  end

  def call_before_update
    puts "Call Before update"
  end

  def call_after_destroy
    puts "Call After destroy"
  end

  def call_before_destroy
    puts "Call Before destroy"
  end

  def send_welcome_email
    UserMailer.send_welcome_email(user).deliver_now
  end

end
