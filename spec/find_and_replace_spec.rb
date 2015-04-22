require('rspec')
require('find_and_replace')

describe('String#find_and_replace') do
  it("replaces one word with another") do
    expect("megatron".find_and_replace("megatron", "doilies")).to(eq("doilies"))
  end

  it("replaces a specific word with another in a phrase") do
    expect("hello world".find_and_replace("world", "universe")).to(eq("hello universe"))
  end

  it("replaces a word and handles capitalization") do
    expect("MeGaTrOn".find_and_replace("megatron", "doilies")).to(eq("doilies"))
  end

  it("replaces a word and handles capitalization") do
    expect("Hello WoRld".find_and_replace("world", "universe")).to(eq("hello universe"))
  end
  # it("replaces a partial matches in larger words") do
  #   expect("cathedral".find_and_replace("cat", "fish")).to(eq("fishthedral"))
  # end

end
