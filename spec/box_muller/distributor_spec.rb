RSpec.describe BoxMuller::Distributor do
  let(:distributor) { described_class.new }
  subject {
    arguments = {
      total: total,
      count: count,
      variance: variance,
    }
    distributor.distribute(**arguments)
  }

  let(:total) { 1000 }
  let(:count) { 10 }
  let(:variance) { 20.0 }

  it do
    result = subject
    expect(result.length).to eq count
    expect(result.sum).to eq total
    expect(result.unique).not_to eq 1
  end
end
