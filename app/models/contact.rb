class Contact < ApplicationRecord
  # file run logic and rules and constraiants on the obj

  #Associations - define the relationship between other models
  # one assoc per relationship


  # belongs_to
  #   - tell who the parent is
  #   - child model
  #   belongs_to :parent

  # has_many
  #   - tell who the children are 
  #   - related to many children of the one model
  #   - in the parent model
  #   - has_many :children(s)

  # has_one
  #   - tell how the child
  #   - related to only one record of the child
  #   - put in the parent model
  #   - has_one :child

  # has_many :through
  # has_one :through
  #   - parent
  #   - adv

  # dependent
  # - has_one or has_many, 

  # dependent: :destroy
  #   - delete the parent, will also delete the children 
  #   - prevent orphan data in db

  has_many :notes, dependent: :destroy
  has_one :address, dependent: :destroy

  #Validations

  #Backbacks(Callbacks)

  #Methods

end
