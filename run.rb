require_relative 'menu'
require_relative 'menu_options'
require_relative 'add_book_command'
require_relative 'show_all_books_command'
require_relative 'delete_a_book_menu_command'
require_relative 'display_customer_menu_command'
require_relative 'delete_a_book_menu_command'
require_relative 'add_customer_command'
require_relative 'show_all_customers_command'
require_relative 'delete_a_customer_command'
require_relative 'delete_a_customer_menu_command'
require_relative 'exit_program_command'
require_relative 'go_back_command'

main_menu = Menu.new([
    MenuOption.new("Add A Book", "1", AddBookCommand.new),
    MenuOption.new("Show All Books", "2", ShowAllBooksCommand.new),
    MenuOption.new("Delete A Book", "3", DeleteABookMenuCommand.new),
    MenuOption.new("Customer Menu", "4", DisplayCustomerMenuCommand.new),
    MenuOption.new("Exit","Q", ExitProgramCommand.new)
])



main_menu.display_options
