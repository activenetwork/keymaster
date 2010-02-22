class User < ActiveRecord::Base
  
  validates_presence_of   :login,
                          :full_name,
                          :public_ssh_key,
                          :uid
  
  validates_uniqueness_of :login,
                          :public_ssh_key,
                          :uid
  
  validates_length_of     :login, :within => 3..50
  
  validates_format_of     :public_ssh_key, :with => %r{^ssh-(rsa|dss)\b}
  
  validates_numericality_of :uid, :greater_than_or_equal_to => 5000
  
  attr_readonly           :login,
                          :uid
  
end