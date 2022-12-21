class Tarefa < ApplicationRecord
  validates :nome, presence: true
end
