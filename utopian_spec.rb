require_relative 'utopian'


describe 'utopian' do
	context "it should return the correct answer" do
		it "should return valid" do
			expect(Tree.new(0).calculate).to eq(0)
		end
	end
end