require('rspec')
require('ping_pong')
require('pry')

describe("#ping_pong") do
  it("returns error message if user input is not a number") do
    expect(ping_pong("yup")).to(eq(["Please enter a number"]))
  end
  it("returns error message if user input is zero or lower") do
    expect(ping_pong(0)).to(eq(["Please enter a number greater than zero"]))
  end
  it ("accepts a number from user and pushes user number into an array") do
    expect(ping_pong(1)).to(eq([1]))
  end
  it("counts up from 1 to user inputted number and pushes all counted numbers into an array") do
    expect(ping_pong(2)).to(eq([1,2]))
  end
  it("replaces numbers divisible by 3 with 'ping'") do
    expect(ping_pong(3)).to(eq([1,2,"ping"]))
  end
  it("replaces numbers divisible by 5 with 'pong'") do
    expect(ping_pong(5)).to(eq([1,2,"ping",4,"pong"]))
  end
  it("replaces numbers divisible by 15 with 'ping-pong'") do
    expect(ping_pong(15)).to(eq([1,2,"ping",4,"pong","ping",7,8,"ping","pong",11,"ping",13,14,"ping-pong"]))
  end
end