require_relative 'menu'
require_relative 'menu_options'
require_relative 'add_book_command'
require_relative 'show_all_books_command'
require_relative 'delete_a_book_menu_command'
require_relative 'exit_program_command'

main_menu = Menu.new([
    MenuOption.new("Add A Book", "1", AddBookCommand.new),
    MenuOption.new("Show All Books", "2", ShowAllBooksCommand.new),
    MenuOption.new("Delete A Book", "3", DeleteABookMenuCommand.new),
    MenuOption.new("Exit","Q", ExitProgramCommand.new)
])
#seth is doing this vvv 
# this is not working yet - Zack
member_menu =Menu.new([
    # MenuOption.new("Join the Library", "1", AddMemberCommand.new),
    # MenuOption.new("Show all Members", "2", ShowAllMembersCommand.new),
    # MenuOption.new("Kick somebody out of the Library"),
    MenuOption.new("Exit","Q", ExitProgramCommand.new)
])

main_menu.display_options
#it's because he drools-- touche
# get back here SEth!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
#who wrote these hurtful words?
#it was us as a collective..
#MWAHAHAHAHAHAHA