require_relative 'findpoint'


describe 'CoordinateCalculator' do
	context "initial test to get correct output" do
		it "should be a valid output" do
			expect(CoordinateCalculator.new(0,0,1,1).calculate).to eq("2 2")
		end
	end

	


end