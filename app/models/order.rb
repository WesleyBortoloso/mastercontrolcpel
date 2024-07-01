class Order < ApplicationRecord
  validates :description, :client, :sector, :delivery_date, :status, presence: true

  has_many :items

  enum status: {
    proccess: 'Em processo',
    waiting: 'Aguardando'
  }

  def self.options_for_filter
    [
      %w[ ], %w[ID id], %w[Cliente client], %w[Setor sector], %w[Status status]
    ]
  end
end
