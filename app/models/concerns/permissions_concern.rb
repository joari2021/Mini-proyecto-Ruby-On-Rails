module PermissionsConcern
    extend ActiveSupport::Concern

    def is_student?
        self.permission_level == 1
    end

    def is_admin?
        self.permission_level == 2
    end
    
end