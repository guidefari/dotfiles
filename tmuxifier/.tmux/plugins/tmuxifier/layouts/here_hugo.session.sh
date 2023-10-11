# Set a custom session root path. Default is `$HOME`.
# Must be called before `initialize_session`.
session_root "~/source/blogs/here_hugo/"

# Create session with specified name if it does not already exist. If no
# argument is given, session name will be based on layout file name.
if initialize_session "here_hugo"; then

  # Create a new window inline within session layout definition.
  new_window "server"
  run_cmd "yarn dev"
  split_h 50
  new_window "nvim"
  run_cmd "nvim ."
fi

# Finalize session creation and switch/attach to it.
finalize_and_go_to_session
