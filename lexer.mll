{
  exception Erreur_de_syntaxe
}

let space = [' ' '\t']

rule sapin = parse
| space* ('*'+ as l) space* '\n' {
  let n = String.length l in
  if n mod 2 = 0 then
    n :: (sapin lexbuf)
  else
    raise Erreur_de_syntaxe
}
| _ { raise Erreur_de_syntaxe }
| eof { [] }

{
  (* Ouverture du fichier et parsage *)
  let sapin file = 
    let f = open_in file in
    let s = sapin (Lexing.from_channel f) in
    close_in f; s
}
