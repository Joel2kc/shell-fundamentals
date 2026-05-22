# Shell Fundamentals: To-Do List Manager

A simple terminal-based to-do list manager written in Bash. It lets you add tasks, view them, and delete them by number, all from your terminal with nothing extra to install.

## What It Does

The script shows a menu every time you finish an action. You pick what you want to do by typing a number. Tasks are stored in a plain text file at ~/todo.txt so they stay saved even after you close the terminal.

## How to Set It Up

Clone the repository and move into the folder.

<img width="1787" height="914" alt="kodekloud1 jpg" src="https://github.com/user-attachments/assets/da18f509-027d-4b86-8310-34ac42e25716" />

The cloned repo folder open in VScode.

This shows the repo being pulled down from GitHub and the terminal moved into the project folder.

Make the script executable:

chmod +x todo.sh.

<img width="824" height="570" alt="kodekloud2 jpg" src="https://github.com/user-attachments/assets/552efc04-12da-4153-b606-9bd06ba14593" />

The chmod command being run.

This gives the script permission to execute. No output means it worked.

## Running the Script

./todo.sh

<img width="757" height="353" alt="Kodekloud3 jpg" src="https://github.com/user-attachments/assets/40db4b46-79d3-4dc9-9cc9-b09bf0a90caf" />

The main menu appearing in the terminal.

This is the main menu users see when they start the script. It shows the four available options.

## Adding Tasks

Pick option 2 from the menu and type a task when prompted.
Each task gets a confirmation message saying it was added successfully.

## Viewing Tasks

Pick option 1 to see all saved tasks with their numbers.

<img width="964" height="664" alt="Kodekloud4 jpg" src="https://github.com/user-attachments/assets/57982363-213f-4253-aa47-5acbf85dd31d" />

The numbered task list displayed in the terminal.

Tasks are shown with line numbers using the nl command. These numbers are what you use to delete a specific task.

## Deleting a Task

Pick option 3, then enter the number of the task you want to remove.

<img width="1350" height="714" alt="Task deletion kodekloud jpg" src="https://github.com/user-attachments/assets/ccdb2e54-78f6-4a12-8c0a-e74af4eb9173" />

The delete confirmation showing which task was removed.

The script confirms exactly which task was deleted so there is no confusion.

## Exiting

Pick option 4 to close the script cleanly.

<img width="383" height="160" alt="Task end   kodekloud jpg" src="https://github.com/user-attachments/assets/d214266e-58cf-4761-a288-ccb7abd998e4" />

The Goodbye message and script exit.

The script prints Goodbye and returns you to the normal terminal prompt.

## How It Works

Tasks are saved with echo and appended to ~/todo.txt. Line numbers are shown using nl -ba. Deleting a task uses sed -i to remove that specific line from the file. The whole thing runs inside a while true loop that only stops when you pick option 4.
