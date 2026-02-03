# Instance Store is temporary storage physically attached to the EC2 host machine.

# Key characteristics:

Extremely high performance

No additional cost

Data is ephemeral

Data is lost when:

Instance stops

Instance terminates

Underlying hardware fails

# Correct use cases:

Caches

Temporary files

Scratch space

Buffers

# Incorrect use cases:

Databases

Backups

Anything needing persistence

# Exam rule:

If the question says “data must survive restart”, Instance Store is wrong.
