require_relative "halloween2"

describe 'halloween' do
	context "test that we get a correct answer" do
		it "should return valid" do
			expect(halloween(5)).to eq([3,2])
		end
	end

	context "test the output type" do
		it "should return an array" do
			expect(halloween(5)).to be_an Array
		end
	end


end



describe Trial do
	let(:trial) { Trial.new(5) }
	it "should return true" do
		expect(trial.check_attributes).to be_true
	end
end
