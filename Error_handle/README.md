# Ansible blocks, rescue, Error handling.

# Blocks

blocks create logical group of tasks, and also offer ways to  handle task errors.Similar to exception handling in many programming languages.

Ansible stops playbook execution when a task fails, we can choose ignore errors to continue with remaining tasks.

# Rescue

Rescue blocks specify tasks to run when earlier task in block fails.
Ansible only runs rescue blocks when previous tasks return a failed state.
