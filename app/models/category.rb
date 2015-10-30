class Category < ActiveRecord::Base

  validates :name,
            presence: true,
            :uniqueness => true,
            :length => {:in => 3..25}


end


# validates :first_name, :last_name,
#           :presence => true
# validates :value,
#           :numericality => {:only_integer => true, :greater_than_or_equal_to => 0},
#           :numericality => true,
#           :inclusion => { :in => (1..6),  :message => "must be between 1 and 6" },
#           :inclusion => { :in => [-1, 1], :message => "%{value} is not a valid vote." }
# validates :username,
#           :presence => true,
#           :presence => {:message => "can't be blank"},
#           :length => {:minimum => 2, :maximum => 32, :message => "has invalid length"},
#           :length => {:in => 6..20 },
#           :format => {:with => /^\w+$/},
#           :uniqueness => true
# validates_uniqueness_of :title
#
#
#
# VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
#
# validates :email,
#           :presence => true,
#           :format => {:with =>/\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i},
#           :format => {:with => /^[\w+\-.]+@[a-z\d\-.]+\.[a-z]+$/i},
#           :format => {:with => /^([^@s]+)@((?:[-a-z0-9]+.)+[a-z]{2,})$/i, :message => "has wrong email format"},
#           :format => {with: VALID_EMAIL_REGEX},
#           :uniqueness => {:case_sensitive => false} # see below for stricter uniqueness techniques
#
# # http://apidock.com/rails/ActiveModel/Validations/ClassMethods/validates_format_of
#
# validates_format_of :email,
#                     :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
#                     :on => :create
#
# # require 'uri'
# validates_format_of :url,
#                     :with => URI::regexp(%w(http https))