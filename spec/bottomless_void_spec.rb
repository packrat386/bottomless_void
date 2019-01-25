require 'bottomless_void'

RSpec.describe BottomlessVoid do
  it 'is not enabled by default' do
    expect { NilClass.new }.to raise_error(NoMethodError)
  end

  context 'enabled' do
    before { described_class.enable! }
    after { described_class.disable! }

    it 'allows you to make nils' do
      mynil = NilClass.new
      expect(mynil).to be_nil
    end
  end
end
