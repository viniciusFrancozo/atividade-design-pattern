class MovieDecorator < SimpleDelegator
    def with_action
        "Movie: " + __getobj__.tittle + "(Action)"
    end

    def with_thriller
        "Movie: " + __getobj__.tittle + "(Thriller)"
    end

    def with_drama
        "Movie: " + __getobj__.tittle + " (Drama)"
    end
end