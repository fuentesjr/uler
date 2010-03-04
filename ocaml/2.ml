(*  File: 2.ml 
    Date: 03/01/2010
    Name: Salvador Fuentes Jr.
    Info: Euler exercise number 2 
*)


(* Functional Style *)
(********************)
let rec range l u = 
    match (l, u) with
        | _ when l > u -> invalid_arg "Boom!" 
        | _ when l = u -> [u] 
        | _ -> l :: range (l+1) u;;

(* *)


(* Imperative Style *)
(********************)
let solveEuler2 = 
    let maxSum = 4000000 in
    let fibn2 = ref 1 in
    let fibn1 = ref 2 in
    let fibn = ref 0 in
    let accum = ref 2 in

    while !accum < maxSum do 
        fibn := !fibn2 + !fibn1;
        accum := if (!fibn mod 2) = 0 then !accum + !fibn else !accum;
        fibn2 := !fibn1;
        fibn1 := !fibn;
    done;
    !accum;;


(* solveEuler2; === 4613732 *)

print_int (solveEuler2);
print_newline ();
