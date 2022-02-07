use async_std::{fs::File, io, prelude::*, task};

async fn read_file(path: &str) -> io::Result<String> {
    let mut file = File::open(path).await?;
    let mut contents = String::new();
    file.read_to_string(&mut contents).await?;
    Ok(contents)
}

fn main() {

    let task = task::spawn(async {
        let result = read_file("read.txt").await;
        match result {
            Ok(k) => println!("{}", k),
            Err(e) => println!("Error reading from file: {}", e),
        }
    });

    println!("Task has started!");
    task::block_on(task);
    println!("Stopped task!");

}