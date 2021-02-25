(* Exemple de sapin *)
let sapin = [2;4;6;8;4;8;10;12;2;2]

(*** Question 1 ***)

let rec printn_char c n =
  if n > 0 then 
    let () = printn_char c (n-1) in 
    print_char c 
  else ()
  
(*** Question 2 ***)

let etoiles = printn_char '*'

let espaces = printn_char ' '

(*** Question 3 ***)

exception Listvide

let maximum l =
  if l = [] then
    raise Listvide
  else 
    List.fold_left (fun acc el ->
      if el > acc then el
      else acc
      ) (List.hd l) l
      
(*** Question 4 ***)

let dessiner l =
  try 
    let max = maximum l in
    List.iter (fun el ->
      (* On divise par 2 car nombre espaces 
      de part et d'autre identique *)
      espaces ((max - el) / 2);
      etoiles el;
      (* Inutile car invisible *)
      (*espaces ((max - el) / 2);*)
      print_newline ()
      ) l
  (* Ne rien dessiner en cas de liste vide *)
  with Listvide -> ()

(*** Question 5 ***)

let double_sapin l =
  List.map (fun x -> 2 * x) l
  
(*** Question 6 ***)

let chaines_croissantes l =
  if l = [] then []
  else
    List.fold_left (fun acc el ->
      let sl = List.hd acc in
      let x = List.hd sl in
      (* Sous-liste croissante donc ajout à sous-liste *)
      if el >= x then
        (el :: sl) :: List.tl acc
      (* Pas croissant donc nouvelle sous-liste *)
      else [el] :: acc
      ) [[List.hd l]] (List.tl l)
  
(*** Question 7 ***) 

let est_un_sapin l =
  let un_seul_element l =
    match l with
    | [x] -> true
    | _ -> false
  in
  not (List.exists 
    un_seul_element
    (chaines_croissantes l))
