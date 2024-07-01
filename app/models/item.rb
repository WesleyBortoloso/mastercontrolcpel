class Item < ApplicationRecord
  belongs_to :order
  validates :name, :description, :quantity, presence: true

  def self.options_for_filter
    [
      %w[ ], %w[Nome name], %w[Descrição description], %w[Quantidade quantity]
    ]
  end
end
