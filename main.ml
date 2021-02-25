(* Arguments ligne de commande *)
let double = ref false
let check = ref false
let file = ref ""

(* Parsage de la ligne de commande et exécution *)
let main () =
  let speclist = 
    [("-d", Arg.Set double, "Double le sapin de Noël");
     ("-c", Arg.Set check, "Vérifie que le sapin est bien formé");]
  in
  let usage_msg = "Parser à sapin de Noël expérimental" in
  
  (* Les arguments anonymes ne nécessitent pas d'option *)
  let () =
    Arg.parse speclist (
      fun anon -> file := !file ^ anon
      ) usage_msg
  in
    
  if !file = "" then
    print_string "Erreur: Renseignez un nom de fichier\n";
  
  (* Exécution du parsage du fichier *)
  let s =
    (* Doublement du sapin *)
    let s = Lexer.sapin !file in
    if !double then
      Sapin.double_sapin s
    else s
  in
  
  (* Vérification que le sapin est bien formé *)
  let est_sapin = Sapin.est_un_sapin s in
  if !check then
    if est_sapin then
      print_string "Note: Sapin bien formé\n"
    else
      print_string "Note: Sapin mal formé\n";
  
  (* Affichage du sapin *)  
  if est_sapin then Sapin.dessiner s
 
let () = main ()