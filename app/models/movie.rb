class Movie < ApplicationRecord
    STATUSES = [
        "Rumored",
        "Planned",
        "In Production",
        "Post Production",
        "Released",
        "Canceled"
    ]
end
