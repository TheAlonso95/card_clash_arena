import gleam/bytes_builder.{type BytesBuilder}
import gleam/erlang
import gleam/http.{Post}
import gleam/http/request.{type Request}
import gleam/http/response.{type Response}

pub fn init(req: Request(BitArray)) -> Response(BytesBuilder) {
  let body = bytes_builder.from_string("Welcome to the Card Game!")

  response.new(200)
  |> response.prepend_header("made-with", "Gleam")
  |> response.set_body(body)
}

pub fn create_player(req: Request(BitArray)) -> Response(BytesBuilder) {
  let body = bytes_builder.from_string("Player created successfully!")
  response.new(200)
  |> response.prepend_header("made-with", "Gleam")
  |> response.set_body(body)
}

pub fn start_match(req: Request(BitArray)) -> Response(BytesBuilder) {
  let body = bytes_builder.from_string("Match started successfully!")
  response.new(200)
  |> response.prepend_header("made-with", "Gleam")
  |> response.set_body(body)
}

pub fn not_found(req: Request(BitArray)) -> Response(BytesBuilder) {
  let body = bytes_builder.from_string("404 / Not found!")
  response.new(404)
  |> response.prepend_header("made-with", "Gleam")
  |> response.set_body(body)
}
