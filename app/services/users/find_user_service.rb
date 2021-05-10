module Users
    class FindUserService
        integer :id

        def execute
            user = User.find_by_id(id)
            errors.add(:id, 'does not exist') unless user
            user
        end
    end
end