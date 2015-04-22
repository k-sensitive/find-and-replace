require('rspec')
require('./lib/find_and_replace')

describe('String#find_and_replace') do
  it("replaces one word with another") do
    expect("megatron".find_and_replace("megatron", "doilies").to(eq("doilies"))
  end
end
