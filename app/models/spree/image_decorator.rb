 module YourApplication
  module Spree
    module ImageDecorator
      module ClassMethods
        def styles
          {
            mini:    '200x200>',
            small:   '400x400>',
            product: '600x600>',
            large:   '1000x1000>',
          }
        end
      end

      def self.prepended(base)
        base.inheritance_column = nil
        base.singleton_class.prepend ClassMethods
      end
    end
  end
end

Spree::Image.prepend ::YourApplication::Spree::ImageDecorator