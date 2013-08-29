metadata :name        => "shellcmd",
         :description => "Run arbitrary shell commands and get their output.",
         :author      => "Joe Miller, updates by Joe McGonagh",
         :license     => "GPLv2",
         :version     => "1.1",
         :url         => "http://github.com/joemiller/shellcmd-agent",
         :timeout     => 300


action 'runcmd', :description => "Execute a shell command" do
  output :output,
         :description => "Output from #{:cmd}",
         :display_as  => "Output"

  output :status,
         :description => "Return status of #{:cmd}",
         :display_as  => "Return Status"
end