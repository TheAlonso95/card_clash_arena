import gleam/erlang/process
import gleam/http/cowboy
import router

// Start it on port 3000!
//
pub fn main() {
  let _ = cowboy.start(router.router, on_port: 3000)
  process.sleep_forever()
}
