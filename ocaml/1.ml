(*  File: 1.ml 
    Date: 02/25/2010
    Name: Salvador Fuentes Jr.
    Info: Euler exercise number 1 
*)



(* Functional Style *)
(********************)
let rec range l u = 
    match (l, u) with
        | _ when l > u -> invalid_arg "Boom!" 
        | _ when l = u -> [u] 
        | _ -> l :: range (l+1) u;;

(*
let range l u = if l > u then 
                        invalid_arg "Lower bound can't be larger than uppper bound" 
                    else
                        let rec range' x y = if x < y then x :: (range' (x+1) y) else [y] in
                        range' l u
                    ;;  
*)

let giveSumDebug x = let seq = range 1 (x-1) in
                let filter i j = if j mod 3 = 0 || j mod 5 = 0 
                    then (print_int j; print_int (j mod 3); print_int (j mod 5); print_newline (); (i + j)) 
                    else i in
                (* Alternative Style:
                    let filter i j = if i mod 3 = 0 || i mod 5 = 0 then
                    let () = print_int i in i+j
                    else j in *)
                    List.fold_left filter 0 seq;;

let giveSum x = let seq = range 1 (x-1) in
                let filter i j = 
                    if j mod 3 = 0 || j mod 5 = 0 then 
                        (i + j) 
                    else 
                        i 
                    in
                    List.fold_left filter 0 seq;;


print_int (giveSum 1000);;
print_newline ();;


(********************)
(* Imperative Style 
let accum = ref 0;;

for i = 0 to 10 do 
    let m1 = i mod 3;
    let m2 = i mod 5;
    accum := if m1 = 0 || m2 = 0 then !accum + i else !accum + 0;
    print_newline ();;
done

print_int !accum;
print_newline ();

*)
