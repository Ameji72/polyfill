module Polyfill
  module V2_4
    module Integer
      module Truncate
        module Method
          def truncate(ndigits = 0)
            ndigits = ndigits.to_int
            return super() if ndigits == 0
            return to_f if ndigits > 0

            place = 10 ** -ndigits
            (self.to_f / place).truncate * place
          end if RUBY_VERSION < '2.4.0'
        end

        refine ::Integer do
          include Method
        end
      end
    end
  end
end