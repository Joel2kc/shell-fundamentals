#!/bin/bash

TODO_FILE="$HOME/todo.txt"

if [ ! -f "$TODO_FILE" ]; then
    touch "$TODO_FILE"
fi

view_tasks() {
    echo ""
    echo "        YOUR TASKS"
    if [ ! -s "$TODO_FILE" ]; then
        echo "  No tasks yet. Add one!"
    else
        nl -ba "$TODO_FILE"
    fi
    echo ""
}

add_task() {
    echo ""
    echo -n "Enter task description: "
    read task
    if [ -z "$task" ]; then
        echo "Task cannot be empty. Try again."
    else
        echo "$task" >> "$TODO_FILE"
        echo "Task added successfully."
    fi
    echo ""
}

delete_task() {
    view_tasks
    if [ ! -s "$TODO_FILE" ]; then
        return
    fi
    echo -n "Enter the task number to delete: "
    read num
    total=$(wc -l < "$TODO_FILE")
    if ! [[ "$num" =~ ^[0-9]+$ ]] || [ "$num" -lt 1 ] || [ "$num" -gt "$total" ]; then
        echo "Invalid number. Please enter a number between 1 and $total."
    else
        task_text=$(sed -n "${num}p" "$TODO_FILE")
        sed -i "${num}d" "$TODO_FILE"
        echo "Deleted task: $task_text"
    fi
    echo ""
}

while true; do
    echo "       TO-DO LIST MANAGER"
    echo "  1. View all tasks"
    echo "  2. Add a new task"
    echo "  3. Delete a task"
    echo "  4. Exit"
    echo -n "Choose an option (1-4): "
    read choice

    case $choice in
        1) view_tasks ;;
        2) add_task ;;
        3) delete_task ;;
        4)
            echo "Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid option. Please enter 1, 2, 3, or 4."
            echo ""
            ;;
    esac
done