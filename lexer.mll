{
  exception Erreur_de_syntaxe
}


(* A completer *)


rule sapin = parse
| ... {...}


 (* A completer *)


and (* A completer *)

{
  (* Ouverture du fichier et parsage *)
  let sapin file = 
    let f = open_in file in
    let s = sapin (Lexing.from_channel f) in
    close_in f; s
}
