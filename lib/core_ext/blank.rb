unless Object.respond_to? :blank?

  class Object
    # An object is blank if it's false, empty, or a whitespace string.
    # For example, "", "   ", +nil+, [], and {} are all blank.
    #
    # This simplifies:
    #
    #   if address.nil? || address.empty?
    #
    # ...to:
    #
    #   if address.blank?
    def blank?
      respond_to?(:empty?) ? empty? : !self
    end

  end

end