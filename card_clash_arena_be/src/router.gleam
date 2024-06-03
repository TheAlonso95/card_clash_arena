import gleam/bytes_builder.{type BytesBuilder}
import gleam/http/request.{type Request}
import gleam/http/response.{type Response}

import handler

pub fn router(req: Request(BitArray)) -> Response(BytesBuilder) {
  case req.path {
    "/" -> handler.init(req)
    "/create-player" -> handler.create_player(req)
    "/start-match" -> handler.start_match(req)
    _ -> handler.not_found(req)
  }
}
