(* let () = *)
(*   try *)
(*     let line = read_line () in *)
(*     print_endline line *)
(*   with End_of_file -> () *)

let get_safe_arg index =
  try Some Sys.argv.(index) with Invalid_argument _ -> None

let validate_file path = if Sys.file_exit path then true else false

let () =
  match get_safe_arg 1 with
  | Some arg ->
      if validate_file arg then print_endline "File exists";  exit 0 (* OS Success *) else None
  | None ->
      prerr_endline "Error: Missing argument";
      exit 1 (* OS Failure *)
