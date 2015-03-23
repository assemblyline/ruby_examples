describe TrueClass do
  specify { expect(true).to eq true }
  specify { expect(true).to_not eq false }
end
