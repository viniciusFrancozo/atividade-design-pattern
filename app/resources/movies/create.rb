class Movies::Create
    attr_accessor :movie
  
    def initialize
      @movie = Movie.new
    end

    def with_description(description)
      @movie.description = description
      self
    end
  
    def with_title(title)
      @movie.tittle = title
      self
    end
  
    
    def with_duration(duration)
      @movie.duration_time = duration
      self
    end

    def with_summary(summary)
      @movie.summary = summary
      self
    end

    def with_release_date(release_date)
      @movie.release_date = release_date
      self
    end
  
    def build
      @movie
    end
  end
  