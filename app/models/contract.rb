class Contract < ActiveRecord::Base
	validates :agree_to_contract, :acceptance => { :accept => true }, :on => :update, :if => :signer_full_name
	validates :signer_full_name, :presence => true, :length => {:minimum => 2}, :on => :update, :if => :agree_to_contract
end
