class Ratings::Create
    attr_accessor :params
  
    def initialize(params)
      @params = params
    end
  
    def execute
      Rating.create!(mount_params)
    end
  
    private
  
    def mount_params
      {
        movie_id: params[:movie_id],
        rate: params[:rate]
      }
    end
end