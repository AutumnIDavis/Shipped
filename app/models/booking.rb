class Booking < ApplicationRecord
    belongs_to :boat
    belongs_to :job
  # def boat
  #   Boat.find(self.boat_id).name
  # end
  #
  # def job
  #   Job.find(self.job_id).name
  # end
end
