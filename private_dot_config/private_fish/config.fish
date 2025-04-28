if status is-interactive
    # Commands to run in interactive sessions can go here
    pyenv init - | source
end

# Get unread count
set unread_count (newsboat -x print-unread | awk '{print $1}')

# If unread count is greater than 0, print it
if test $unread_count -gt 0
    echo $unread_count 'Unread articles in newsboat' 
end
