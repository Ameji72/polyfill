require 'polyfill/v2_4/hash/compact'
require 'polyfill/v2_4/hash/compact_e'
require 'polyfill/v2_4/hash/transform_values'

module Polyfill
  module V2_4
    module Hash
      include Compact
      include CompactE
      include TransformValues
    end
  end
end