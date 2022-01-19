mod list {

    pub struct Tasks{
        pub item: String,
    }
}

mod things_todo;
use crate::things_todo::add_activity;
use things_todo::items_completed;
use things_todo::items_completed::test::test;

fn lets_add_task(){
    let task = list::Tasks {item: String::from("Tasks")};
    add_activity();  // relative path
    items_completed::remove_task();
    test();
}