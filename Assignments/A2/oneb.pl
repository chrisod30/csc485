index sub [] intro [num:number].
	number sub [sg, pl].
		sg sub [].
		pl sub [].

cat sub [s, np, vp, pp].
s sub [].

p sub [].
pp sub [].

det sub [].

n sub [] intro [index:index].
np sub [] intro [head:n].

%% Lexicon
the ---> det.
dog ---> (n,index:(num:sg)).
puppies ---> (n,index:(num:pl)).
with ---> p.

%%rules
srule rule
s
===>
cat> (np, head:(index:(num:pl)).

pprule rule
pp
===>
cat> p,
cat> np.

nrule rule
np
===>
cat> n.

n_pprule rule
np
===>
cat> n,
cat> pp.

detrule rule
np
===>
cat> det,
cat> n.

det_pprule rule
np
===>
cat> det,
cat> n,
cat> pp.