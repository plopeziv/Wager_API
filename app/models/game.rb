class Game < ApplicationRecord
    validates :gameId, presence: true, length: {minimum: 6}, uniqueness: true
    validates :teamOne, presence: true, length: {minimum: 3}
    validates :teamTwo, presence: true, length: {minimum: 3}
    validates :gameSpread, presence: true, numericality:true
    validates :status, inclusion: [true, false]
    validates :scoreDiff, presence: false, numericality: {only_integer: true}, allow_nil: true
end
