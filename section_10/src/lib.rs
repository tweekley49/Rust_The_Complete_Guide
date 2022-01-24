#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn it_works() {
        let result = 2 + 2;
        assert_ne!(result, 5);
    }

    #[test]
    #[should_panic]
    fn it_fails(){
        panic!("Test failed!");
    }

    #[test]
    fn call_simple_add(){
        assert!(simple_add());
    }

}

fn simple_add() -> bool {
    if 2+2 == 4 {
        true
    } else {
        false
    }
}
