class Ability
  include CanCan::Ability
  
  def initialize(user)
    user ||= User.new # guest user
    
    if user.roles.include?('admin')
      can :manage, :all
    else
      can :read, :all
      # can :create, Comment
      # can :update, Comment do |comment|
      #   comment.try(:user) == user || user.roles.include?('moderator')
      # end
    if user.roles.include?('moderator')
      can :create, GalleryItem
      can :update, GalleryItem
    end
      # if user.roles.include?('author')
      # can :create, Comment
      # can :update, Comment do |article|
      #   article.try(:user) == user
      # end
      # end
    end
  end
end