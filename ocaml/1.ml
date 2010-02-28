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
                        range' l u;;  

let solveEuler1Debug x = let seq = range 1 (x-1) in
                (* Alternative Style:
                let filter i j = 
                    if i mod 3 = 0 || i mod 5 = 0 then
                        let () = print_int i in 
                        i+j
                    else 
                        j in *)
                let filter i j = 
                    if j mod 3 = 0 || j mod 5 = 0 then 
                        (print_int j; print_int (j mod 3); print_int (j mod 5); print_newline (); (i + j)) 
                    else i in
                List.fold_left filter 0 seq;;

let solveEuler1 x = let seq = range 1 (x-1) in
                let filter i j = 
                    if j mod 3 = 0 || j mod 5 = 0 then 
                        (i + j) 
                    else 
                        i in
                List.fold_left filter 0 seq;;

*)


(* Imperative Style *)
(********************)

(* Option 1 *)
(* *)
let solveEuler1 x = 
    let accum = ref 0 in

    for i = 1 to 999 do 
        let m3 = i mod 3 in
        let m5 = i mod 5 in
        accum := if m3 = 0 || m5 = 0 then !accum + i else !accum + 0;
    done;
    !accum;;


(* Option 2 *)
(*
let solveEuler1 x = 
    let accum = ref 0 in
    let m3 = ref 0 in
    let m5 = ref 0 in

    for i = 1 to (x-1) do 
        m3 := i mod 3;
        m5 := i mod 5;
        accum := if !m3 = 0 || !m5 = 0 then !accum + i else !accum + 0;
    done;
    !accum;;
*)

(* solveEuler1 1000; === 233168 *)
print_int (solveEuler1 1000);
print_newline ();
