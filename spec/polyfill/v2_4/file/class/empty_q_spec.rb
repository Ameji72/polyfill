RSpec.describe 'File.empty?' do
  using Polyfill(File: %w[.empty?], version: '2.4')

  def fixture(file_name)
    File.join(File.dirname(__FILE__), '..', 'fixtures', file_name)
  end

  it 'returns true if the file exists and is has zero size' do
    expect(File.empty?(fixture('empty.txt'))).to be true
  end

  it 'returns false if the file exists and is has more than a zero size' do
    expect(File.empty?(fixture('non-empty.txt'))).to be false
  end

  it 'returns false if the file does not exist' do
    expect(File.empty?(fixture('missing.txt'))).to be false
  end
end
