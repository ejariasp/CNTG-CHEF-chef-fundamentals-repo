require "spec_helper"

describe "motd::default" do
  let(:chef_run) do
    runner = ChefSpec::ServerRunner.new # simula que ejecuta la receta
    runner.converge(described_recipe)
  end
  it "creates an motdcorrectly" do # nombre que le ponemos a la regla
    expect(chef_run).to create_template("/etc/motd").with(
      :user => "root",
      :group => "root",
      :mode => "0644"
    )
  end
end
