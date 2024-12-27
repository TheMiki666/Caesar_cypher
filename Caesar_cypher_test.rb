require_relative('Caesar_cypher')

describe 'upcase_change' do
  it 'change A for D' do
    expect(upcase_change(65, 3)).to eq('D')
  end

  it 'change E for Y' do
    expect(upcase_change(69, -6)).to eq('Y')
  end
 end

 describe 'lowcase_change' do
  it 'change d for f' do
    expect(lowcase_change(100, 2)).to eq('f')
  end

  it 'change x for h' do
    expect(lowcase_change(120, 10)).to eq('h')
  end
 end

 describe 'caesar_cypher' do
  it 'change phrase with offset 12' do
    expect(caesar_cypher("Aw qoffc as zc fcpofcb", 12)).to eq("Mi carro me lo robaron")
  end

  it 'change phrase with offset -7' do
    expect(caesar_cypher("Huvzol jbhukv kvytph", -7)).to eq("Anoshe cuando dormia")
  end

  it 'do not change a phrase when offset is 0' do
    expect(caesar_cypher("Donde estara mi carro?", 0)).to eq("Donde estara mi carro?")
  end
 end

