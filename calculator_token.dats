(*
** Copyright (C) 2013 Hongwei Xi, ATS Trustful Software, Inc.
**
** Permission is hereby granted, free of charge, to any person
** obtaining a copy of this software and associated documentation
** files (the "Software"), to deal in the Software without
** restriction, including without limitation the rights to use,
** copy, modify, merge, publish, distribute, sublicense, and/or sell
** copies of the Software, and to permit persons to whom the
** Software is furnished to do so, subject to the following
** conditions:
**
** THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
** EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
** OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
** NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
** HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
** WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
** FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
** OTHER DEALINGS IN THE SOFTWARE.
*)

(* ****** ****** *)

staload "./calculator.sats"

(* ****** ****** *)

implement
token_is_nil (tok) = let
in
//
case+ tok of
| TOKunknown (c) => isspace(c) | _ => false
//
end // end of [token_is_nil]

(* ****** ****** *)

implement
token_is_add (tok) = let
in
//
case+ tok of
| TOKopr ("+") => true
| TOKopr ("add") => true
| _ (* void *) => false
//
end // end of [token_is_add]

(* ****** ****** *)

implement
token_is_sub (tok) = let
in
//
case+ tok of
| TOKopr ("-") => true
| TOKopr ("sub") => true
| _ (* void *) => false
//
end // end of [token_is_sub]

(* ****** ****** *)

implement
token_is_mul (tok) = let
in
//
case+ tok of
| TOKopr ("*") => true
| TOKopr ("mul") => true
| _ (* void *) => false
//
end // end of [token_is_mul]

(* ****** ****** *)

implement
token_is_div (tok) = let
in
//
case+ tok of
| TOKopr ("/") => true
| TOKopr ("div") => true
| _ (* void *) => false
//
end // end of [token_is_div]

(* ****** ****** *)

implement
token_is_unknown (tok) = let
in
//
case+ tok of
| TOKunknown (c) => true | _ => false
//
end // end of [token_is_unknown]

(* ****** ****** *)

(* end of [calculator_token.dats] *)
