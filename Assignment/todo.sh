#!/bin/bash

todo_file="todo.txt"

# Ensure the file exists
touch "$todo_file"

while true; do
    echo
    echo "===== TO-DO LIST MENU ====="
    echo "1. Add Task"
    echo "2. View Tasks"
    echo "3. Remove Task"
    echo "4. Exit"
    echo "==========================="
    read -rp "Choose an option (1-4): " choice

    case $choice in

    1)
        read -rp "Enter task to add: " task
        if [[ -n "$task" ]]; then
            echo "$task" >> "$todo_file"
            echo "Task added!"
        else
            echo "Task cannot be empty!"
        fi
        ;;

    2)
        echo
        echo "--- Your Tasks ---"
        if [[ ! -s "$todo_file" ]]; then
            echo "No tasks found."
        else
            nl -w2 -s". " "$todo_file"
        fi
        ;;

    3)
        echo
        nl -w2 -s". " "$todo_file"
        read -rp "Enter task number to remove: " num

        if [[ "$num" =~ ^[0-9]+$ ]]; then
            sed -i "${num}d" "$todo_file"
            echo "Task removed (if number was valid)."
        else
            echo "Invalid number!"
        fi
        ;;

    4)
        echo "Exiting To-Do List. Goodbye!"
        break
        ;;

    *)
        echo "Invalid choice! Try again."
        ;;
    esac
done
