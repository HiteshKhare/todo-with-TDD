require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the TodosHelper. For example:
#
# describe TodosHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe TodosHelper, type: :helper do
  describe "#some_helper_method" do
    it "does something useful" do
      expect(helper.display).to eq(nil)
    end
  end
end