module Intermodal
  module Mapping
    class Presenter < Mapper

      self._mapping_strategy = INCLUDE_NILS

      class << self
        alias exclude_from_presentation exclude_properties 

        # Convenience alias for maps
        # Examples:
        #
        #  presents :name
        #  presents :name, :as => lambda { |o| o.name.camelize }
        #  presents :name, :as => [ :first_name, :last_name, :suffix, :prefix ]
        #  
        alias presents maps

        def model_name(resource)
          resource.class.name.demodulize.underscore
        end

        def call(resource)
          { model_name(resource) => map_attributes(resource) }
        end
      end
    end

  end
end
