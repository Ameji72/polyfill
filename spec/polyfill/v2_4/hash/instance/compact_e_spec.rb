RSpec.describe 'Hash#compact!' do
  using Polyfill(Hash: %w[#compact!], version: '2.4')

  it 'removes keys with nil values' do
    expect({ a: 1, b: false, c: nil }.compact!).to eql(a: 1, b: false)
  end

  it 'returns nil if nothing changes' do
    expect({ a: 1 }.compact!).to be nil
  end

  it 'modifies the original' do
    orig = { a: 1, b: false, c: nil }
    orig.compact!
    expect(orig).to eql(a: 1, b: false)
  end
end
