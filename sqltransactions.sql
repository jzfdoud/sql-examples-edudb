-- transaction commands. With 'begin transaction' it is easy to sort of undo mistakes or errors with the 'rollback transaction' command.
-- In this scenerio we begin the transaction, delete the student ( use select * to show student is deleted), then run the rollback tranaction command.
-- After running rollback the student is returned to the DB.
-- (begin, delete, select, rollback, select)<-- order of example
-- reference slides 141-147

Begin transaction 

delete student where lastname = 'foster';

select * from student where Lastname = 'foster';

commit transaction

rollback transaction