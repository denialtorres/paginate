module Paginate
  class Page
    PER_PAGE = 30

    attr_reader :number, :collection

    def initialize(number, collection)
      @number = number
      @collection = collection
    end

    def records
      collection.offset(offset).limit(PER_PAGE)
    end

    def first?
      number == 1
    end

    def last?
      (collection.size.to_f / PER_PAGE).ceil <= number
    end

    def previous_param
      number - 1
    end

    def next_param
      number + 1
    end

    private

    def offset
      PER_PAGE * (number - 1)
    end
  end
end
