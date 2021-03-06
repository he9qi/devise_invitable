module DeviseInvitable
  module Schema
    # Creates invitation_token and invitation_sent_at.
    def invitable
      apply_devise_schema :invitation_token,   String, :limit => 20
      apply_devise_schema :invitation_sent_at, DateTime
      apply_devise_schema :inviter_id, Integer 
      apply_devise_schema :username, String
    end
  end
end

Devise::Schema.send :include, DeviseInvitable::Schema
