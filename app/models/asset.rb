class Asset < ActiveRecord::Base
  attr_accessible :asset_documents, :asset_id, :asset_type_id, :asset_image, :description, :display_size, :make_year, :manufacturer, :model, :operating_system, :purchase_date, :release_date, :serial_number, :retired, :asset_bounded
  self.per_page = 10
  
  validates :asset_id, :presence => true, length: { maximum: 20}
  validates :purchase_date, :presence => true
  validates :serial_number, :presence => true, length: { maximum: 25}
  validates :make_year, :presence => true
  validates :description, length: {maximum: 200}
  validates :display_size, length: {maximum: 10}
  validates :manufacturer, length: {maximum: 20}
  validates :model , length: {maximum: 15}
  validates :operating_system, length: {maximum: 15}

  belongs_to :asset_type
  has_one :asset_assignment
  has_many :asset_allocation_histories
  
  before_destroy :ensure_no_assignment
  
  private
    def ensure_no_assignment
      assetAssmt = nil
      begin
        assetAssmt = AssetAssignment.find_by_asset_id(self.id)
      rescue
      end
      if assetAssmt != nil
        errors.add(:base, "Cannot be deleted.   The asset is currently assigned to #{assetAssmt.assignee_name}") unless assetAssmt == nil
        return false
      end
    end

end
