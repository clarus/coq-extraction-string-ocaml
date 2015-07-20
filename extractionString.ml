(** * Interface to the OCaml strings. *)

(** Export an OCaml string. *)
let to_lstring (s : string) : char list =
  let rec aux l i =
    if i = -1 then
      l
    else
      aux (s.[i] :: l) (i - 1) in
  aux [] (String.length s - 1)

(** Import a Coq string. *)
let of_lstring (s : char list) : string =
  let length = List.length s in
  let buffer = String.create length in
  List.iteri (fun i c -> String.set buffer i c) s;
  buffer
