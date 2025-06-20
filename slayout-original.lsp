 
(prompt "\nEnter slayout to start...")
 

;#######################################################;
    
(defun dtr (x);define degrees to radians function

	(* pi (/ x 180.0))
		;divide the angle by 180 then
		;multiply the result by the constant PI
);defun
	  
;#######################################################;


;#######################################################;

(defun savevars ()
  
;get values from dcl
	(setq prjn (atof (get_tile "eb50")));project number
  	(setq dwgn (atof (get_tile "eb51")));drawing number
  	(setq revn (atof (get_tile "eb60")));revision number

  	(setq hdtyp (get_tile "pl1"));is it hemi or semi head?
  
  	(setq hddsgn (get_tile "pl2"));is it designed inside diameter?
  	
  	(setq shld (atof (get_tile "eb70")));shell diameter
  	(setq pltt (atof (get_tile "eb75")));plate thickness
  	(setq nshlr (atoi (get_tile "eb80")));number of shells required
  	(setq lsof (atof (get_tile "eb90")));long seam offset
  	(setq lsloc (get_tile "pl3"));first shell long seam on FS or NS?
	(setq slen (atof (get_tile "eb100")));shell length

	(setq shlws (get_tile "tg30"));are the shells same widths through out the job?
  	(setq shlwns (get_tile "tg40"));are the shells not same width through out the job?

	(setq swid (atof (get_tile "eb120")));width of most common shells

  	(setq ushla (atoi (get_tile "eb130")));1st unique shell (a) that is different width
  	(setq ushlaw (atof (get_tile "eb140")));width of shell (a)
	(setq ushlb (atoi (get_tile "eb150")));2nd unique shell (b) that is different width
  	(setq ushlbw (atof (get_tile "eb160")));width of shell (b)
	(setq ushlc (atoi (get_tile "eb170")));3rd unique shell (c) that is different width
  	(setq ushlcw (atof (get_tile "eb180")));width of shell (c)

  	;Fittings Information

  	(setq nzm1 (get_tile "eb1a"))
  	(setq nzs1 (get_tile "eb1b"))
	(setq nzr1 (get_tile "eb1c"))
  	(setq nzt1 (get_tile "eb1d"))
  	(setq nzd1 (get_tile "eb1e"))
  	(setq nzl1 (get_tile "eb1f"))
  	(setq nzdtm1 (get_tile "eb1g"))

  	(setq nzm2 (get_tile "eb2a"))
  	(setq nzs2 (get_tile "eb2b"))
	(setq nzr2 (get_tile "eb2c"))
  	(setq nzt2 (get_tile "eb2d"))
  	(setq nzd2 (get_tile "eb2e"))
  	(setq nzl2 (get_tile "eb2f"))
  	(setq nzdtm2 (get_tile "eb2g"))

  	(setq nzm3 (get_tile "eb3a"))
  	(setq nzs3 (get_tile "eb3b"))
	(setq nzr3 (get_tile "eb3c"))
  	(setq nzt3 (get_tile "eb3d"))
  	(setq nzd3 (get_tile "eb3e"))
  	(setq nzl3 (get_tile "eb3f"))
  	(setq nzdtm3 (get_tile "eb3g"))

  	(setq nzm4 (get_tile "eb4a"))
  	(setq nzs4 (get_tile "eb4b"))
	(setq nzr4 (get_tile "eb4c"))
  	(setq nzt4 (get_tile "eb4d"))
  	(setq nzd4 (get_tile "eb4e"))
  	(setq nzl4 (get_tile "eb4f"))
  	(setq nzdtm4 (get_tile "eb4g"))

  	(setq nzm5 (get_tile "eb5a"))
  	(setq nzs5 (get_tile "eb5b"))
	(setq nzr5 (get_tile "eb5c"))
  	(setq nzt5 (get_tile "eb5d"))
  	(setq nzd5 (get_tile "eb5e"))
  	(setq nzl5 (get_tile "eb5f"))
  	(setq nzdtm5 (get_tile "eb5g"))

  	(setq nzm6 (get_tile "eb6a"))
  	(setq nzs6 (get_tile "eb6b"))
	(setq nzr6 (get_tile "eb6c"))
  	(setq nzt6 (get_tile "eb6d"))
  	(setq nzd6 (get_tile "eb6e"))
  	(setq nzl6 (get_tile "eb6f"))
  	(setq nzdtm6 (get_tile "eb6g"))

  	(setq nzm7 (get_tile "eb7a"))
  	(setq nzs7 (get_tile "eb7b"))
	(setq nzr7 (get_tile "eb7c"))
  	(setq nzt7 (get_tile "eb7d"))
  	(setq nzd7 (get_tile "eb7e"))
  	(setq nzl7 (get_tile "eb7f"))
  	(setq nzdtm7 (get_tile "eb7g"))

  	(setq nzm8 (get_tile "eb8a"))
  	(setq nzs8 (get_tile "eb8b"))
	(setq nzr8 (get_tile "eb8c"))
  	(setq nzt8 (get_tile "eb8d"))
  	(setq nzd8 (get_tile "eb8e"))
  	(setq nzl8 (get_tile "eb8f"))
  	(setq nzdtm8 (get_tile "eb8g"))

  	(setq nzm9 (get_tile "eb9a"))
  	(setq nzs9 (get_tile "eb9b"))
	(setq nzr9 (get_tile "eb9c"))
  	(setq nzt9 (get_tile "eb9d"))
  	(setq nzd9 (get_tile "eb9e"))
  	(setq nzl9 (get_tile "eb9f"))
  	(setq nzdtm9 (get_tile "eb9g"))

  	(setq nzm10 (get_tile "eb10a"))
  	(setq nzs10 (get_tile "eb10b"))
	(setq nzr10 (get_tile "eb10c"))
  	(setq nzt10 (get_tile "eb10d"))
  	(setq nzd10 (get_tile "eb10e"))
  	(setq nzl10 (get_tile "eb10f"))
  	(setq nzdtm10 (get_tile "eb10g"))

  	(setq nzm11 (get_tile "eb11a"))
  	(setq nzs11 (get_tile "eb11b"))
	(setq nzr11 (get_tile "eb11c"))
  	(setq nzt11 (get_tile "eb11d"))
  	(setq nzd11 (get_tile "eb11e"))
  	(setq nzl11 (get_tile "eb11f"))
  	(setq nzdtm11 (get_tile "eb11g"))

  	(setq nzm12 (get_tile "eb12a"))
  	(setq nzs12 (get_tile "eb12b"))
	(setq nzr12 (get_tile "eb12c"))
  	(setq nzt12 (get_tile "eb12d"))
  	(setq nzd12 (get_tile "eb12e"))
  	(setq nzl12 (get_tile "eb12f"))
  	(setq nzdtm12 (get_tile "eb12g"))

  	(setq nzm13 (get_tile "eb13a"))
  	(setq nzs13 (get_tile "eb13b"))
	(setq nzr13 (get_tile "eb13c"))
  	(setq nzt13 (get_tile "eb13d"))
  	(setq nzd13 (get_tile "eb13e"))
	(setq nzl13 (get_tile "eb13f"))
  	(setq nzdtm13 (get_tile "eb13g"))
  
  	(setq nzm14 (get_tile "eb14a"))
  	(setq nzs14 (get_tile "eb14b"))
	(setq nzr14 (get_tile "eb14c"))
  	(setq nzt14 (get_tile "eb14d"))
  	(setq nzd14 (get_tile "eb14e"))
  	(setq nzl14 (get_tile "eb14f"))
  	(setq nzdtm14 (get_tile "eb14g"))

  	(setq nzm15 (get_tile "eb15a"))
  	(setq nzs15 (get_tile "eb15b"))
	(setq nzr15 (get_tile "eb15c"))
  	(setq nzt15 (get_tile "eb15d"))
  	(setq nzd15 (get_tile "eb15e"))
  	(setq nzl15 (get_tile "eb15f"))
  	(setq nzdtm15 (get_tile "eb15g"))

  	(setq nzm16 (get_tile "eb16a"))
  	(setq nzs16 (get_tile "eb16b"))
	(setq nzr16 (get_tile "eb16c"))
  	(setq nzt16 (get_tile "eb16d"))
  	(setq nzd16 (get_tile "eb16e"))
  	(setq nzl16 (get_tile "eb16f"))
  	(setq nzdtm16 (get_tile "eb16g"))

  	(setq nzm17 (get_tile "eb17a"))
  	(setq nzs17 (get_tile "eb17b"))
	(setq nzr17 (get_tile "eb17c"))
  	(setq nzt17 (get_tile "eb17d"))
  	(setq nzd17 (get_tile "eb17e"))
  	(setq nzl17 (get_tile "eb17f"))
  	(setq nzdtm17 (get_tile "eb17g"))

  	(setq nzm18 (get_tile "eb18a"))
  	(setq nzs18 (get_tile "eb18b"))
	(setq nzr18 (get_tile "eb18c"))
  	(setq nzt18 (get_tile "eb18d"))
  	(setq nzd18 (get_tile "eb18e"))
  	(setq nzl18 (get_tile "eb18f"))
  	(setq nzdtm18 (get_tile "eb18g"))

  	(setq nzm19 (get_tile "eb19a"))
  	(setq nzs19 (get_tile "eb19b"))
	(setq nzr19 (get_tile "eb19c"))
  	(setq nzt19 (get_tile "eb19d"))
  	(setq nzd19 (get_tile "eb19e"))
	(setq nzl19 (get_tile "eb19f"))
  	(setq nzdtm19 (get_tile "eb19g"))
  
  	(setq nzm20 (get_tile "eb20a"))
  	(setq nzs20 (get_tile "eb20b"))
	(setq nzr20 (get_tile "eb20c"))
  	(setq nzt20 (get_tile "eb20d"))
  	(setq nzd20 (get_tile "eb20e"))
  	(setq nzl20 (get_tile "eb20f"))
  	(setq nzdtm20 (get_tile "eb20g"))
  	;end of fitting information
  
 ;end of getting values from dcl
  
;#######################################################;
  
  	(setq qtrdis (/ slen 4));shell length / 4

;#######################################################;

;get coodinations
  ;qmt1 = quater Mark Top 1
  ;qmns = quater Mark Near Side
  ;qmbtm = quater Mark Bottom
  ;qmfs = quater Mark Far Side
  ;qmt2 =  quater Mark Top 2
  ;s1qmt1a = shell 1 quater mark top 1 a
  ;s1qmt1b = shell 1 quater mark top 1 b
  ;s1qmt1c = shell 1 quater mark top 1 c

  ;The long seam offset on the first shell is "NS"
	(cond
	  ((= (atoi lsloc) 0)
	   (setq s11 '(1000.0 1000.0 0.0 ))
	   (setq s11a (polar s11 (dtr 0.0) 3))
	   (setq s11b (polar s11 (dtr 90.0) 3))
	   (setq s13 (polar s11 (dtr 0.0) swid))
	   (setq s13a (polar s13 (dtr 180.0) 3))
	   (setq s13b (polar s13 (dtr 90.0) 3))
	   (setq s19 (polar s13 (dtr 90.0) slen))
	   (setq s19a (polar s19 (dtr 180.0) 3))
	   (setq s19b (polar s19 (dtr 270.0) 3))
	   (setq s17 (polar s11 (dtr 90.0) slen))
	   (setq s17a (polar s17 (dtr 0.0) 3))
	   (setq s17b (polar s17 (dtr 270.0) 3))
	   (setq qmt1 (polar s11 (dtr 90.0) lsof))
	   (setq qmns (polar qmt1 (dtr 90.0) qtrdis))
	   (setq qmbtm (polar qmns (dtr 90.0) qtrdis))
	   (setq qmfs (polar qmbtm (dtr 90.0) qtrdis))
	   (setq qmt2 (polar qmfs (dtr 90.0) qtrdis))
	   (setq s1qmt1a (polar qmt1 (dtr 0.0) 0.1875))
	   (setq s1qmt1b (polar qmt1 (dtr 0.0) (- swid 0.1875)))
	   (setq s1qmt1c (polar qmt1 (dtr 0.0) swid))
	   (setq s1qmnsa (polar qmns (dtr 0.0) 0.1875))
	   (setq s1qmnsb (polar qmns (dtr 0.0) (- swid 0.1875)))
	   (setq s1qmnsc (polar qmns (dtr 0.0) swid))
	   (setq s1qmbtma (polar qmbtm (dtr 0.0) 0.1875))
	   (setq s1qmbtmb (polar qmbtm (dtr 0.0) (- swid 0.1875)))
	   (setq s1qmbtmc (polar qmbtm (dtr 0.0) swid))
	   (setq s1qmfsa (polar qmfs (dtr 0.0) 0.1875))
	   (setq s1qmfsb (polar qmfs (dtr 0.0) (- swid 0.1875)))
	   (setq s1qmfsc (polar qmfs (dtr 0.0) swid))
	  )
	);cond

	(if
	    (and
	      (= (<= 2 nshlr) T)
	      (= (atoi lsloc) 0)
	    );and
	    (progn
	     (setq s21 (polar s13 (dtr 90.0) (* 2 lsof)))
	     (setq s21a (polar s21 (dtr 0.0) 3))
	     (setq s21b (polar s21 (dtr 90.0) 3))
	     (setq s23 (polar s21 (dtr 0.0) swid))
	     (setq s23a (polar s23 (dtr 180.0) 3))
	     (setq s23b (polar s23 (dtr 90.0) 3))
	     (setq s29 (polar s23 (dtr 90.0) slen))
	     (setq s29a (polar s29 (dtr 180.0) 3))
	     (setq s29b (polar s29 (dtr 270.0) 3))
	     (setq s27 (polar s19 (dtr 90.0) (* 2 lsof)))
	     (setq s27a (polar s27 (dtr 0.0) 3))
	     (setq s27b (polar s27 (dtr 270.0) 3))
	     (setq s2qmnsa (polar s1qmnsa (dtr 0.0) swid))
	     (setq s2qmnsb (polar s1qmnsb (dtr 0.0) swid))
	     (setq s2qmnsc (polar s1qmnsc (dtr 0.0) swid))
	     (setq s2qmbtma (polar s1qmbtma (dtr 0.0) swid))
	     (setq s2qmbtmb (polar s1qmbtmb (dtr 0.0) swid))
	     (setq s2qmbtmc (polar s1qmbtmc (dtr 0.0) swid))
	     (setq s2qmfsa (polar s1qmfsa (dtr 0.0) swid))
	     (setq s2qmfsb (polar s1qmfsb (dtr 0.0) swid))
	     (setq s2qmfsc (polar s1qmfsc (dtr 0.0) swid))
	     (setq s2qmt2 (polar qmt2 (dtr 0.0) swid))
	     (setq s2qmt2a (polar s2qmt2 (dtr 0.0) 0.1875))
	     (setq s2qmt2b (polar s2qmt2 (dtr 0.0) (- swid 0.1875)))
	     (setq s2qmt2c (polar s2qmt2 (dtr 0.0) swid))
	     
	    );progn
	);if
    	   (if
	     (and
	       (= (<= 3 nshlr) T)
	       (= (atoi lsloc) 0)
	     );and
	     (progn
	      (setq s31 (polar s11 (dtr 0.0) (* 2 swid)))
	      (setq s31a (polar s31 (dtr 0.0) 3))
	      (setq s31b (polar s31 (dtr 90.0) 3))
	      (setq s33 (polar s13 (dtr 0.0) (* 2 swid)))
	      (setq s33a (polar s33 (dtr 180.0) 3))
	      (setq s33b (polar s33 (dtr 90.0) 3))
	      (setq s39 (polar s19 (dtr 0.0) (* 2 swid)))
	      (setq s39a (polar s39 (dtr 180.0) 3))
	      (setq s39b (polar s39 (dtr 270.0) 3))
	      (setq s37 (polar s17 (dtr 0.0) (* 2 swid)))
	      (setq s37a (polar s37 (dtr 0.0) 3))
	      (setq s37b (polar s37 (dtr 270.0) 3))
	      (setq s3qmt1 (polar qmt1 (dtr 0.0) (* swid 2)))
	      (setq s3qmt1a (polar s1qmt1a (dtr 0.0) (* swid 2)))
	      (setq s3qmt1b (polar s1qmt1b (dtr 0.0) (* swid 2)))
	      (setq s3qmt1c (polar s1qmt1c (dtr 0.0) (* swid 2)))
	      (setq s3qmnsa (polar s2qmnsa (dtr 0.0) swid))
	      (setq s3qmnsb (polar s2qmnsb (dtr 0.0) swid))
	      (setq s3qmnsc (polar s2qmnsc (dtr 0.0) swid))
	      (setq s3qmbtma (polar s2qmbtma (dtr 0.0) swid))
	      (setq s3qmbtmb (polar s2qmbtmb (dtr 0.0) swid))
	      (setq s3qmbtmc (polar s2qmbtmc (dtr 0.0) swid))
	      (setq s3qmfsa (polar s2qmfsa (dtr 0.0) swid))
	      (setq s3qmfsb (polar s2qmfsb (dtr 0.0) swid))
	      (setq s3qmfsc (polar s2qmfsc (dtr 0.0) swid))
	     );progn
    	   );if
	(if
	     (and
	       (= (<= 4 nshlr) T)
	       (= (atoi lsloc) 0)
	     );and
	     (progn
	      (setq s41 (polar s21 (dtr 0.0) (* 2 swid)))
	      (setq s41a (polar s41 (dtr 0.0) 3))
	      (setq s41b (polar s41 (dtr 90.0) 3))
	      (setq s43 (polar s23 (dtr 0.0) (* 2 swid)))
	      (setq s43a (polar s43 (dtr 180.0) 3))
	      (setq s43b (polar s43 (dtr 90.0) 3))
	      (setq s49 (polar s29 (dtr 0.0) (* 2 swid)))
	      (setq s49a (polar s49 (dtr 180.0) 3))
	      (setq s49b (polar s49 (dtr 270.0) 3))
	      (setq s47 (polar s27 (dtr 0.0) (* 2 swid)))
	      (setq s47a (polar s47 (dtr 0.0) 3))
	      (setq s47b (polar s47 (dtr 270.0) 3))
	      (setq s4qmnsa (polar s3qmnsa (dtr 0.0) swid))
	      (setq s4qmnsb (polar s3qmnsb (dtr 0.0) swid))
	      (setq s4qmnsc (polar s3qmnsc (dtr 0.0) swid))
	      (setq s4qmbtma (polar s3qmbtma (dtr 0.0) swid))
	      (setq s4qmbtmb (polar s3qmbtmb (dtr 0.0) swid))
	      (setq s4qmbtmc (polar s3qmbtmc (dtr 0.0) swid))
	      (setq s4qmfsa (polar s3qmfsa (dtr 0.0) swid))
	      (setq s4qmfsb (polar s3qmfsb (dtr 0.0) swid))
	      (setq s4qmfsc (polar s3qmfsc (dtr 0.0) swid))
	      (setq s4qmt2 (polar s2qmt2 (dtr 0.0) (* swid 2)))
	      (setq s4qmt2a (polar s2qmt2a (dtr 0.0) (* swid 2)))
	      (setq s4qmt2b (polar s2qmt2b (dtr 0.0) (* swid 2)))
	      (setq s4qmt2c (polar s2qmt2c (dtr 0.0) (* swid 2)))
	     );progn
	);if

  	(if
	     (and
	       (= (<= 5 nshlr) T)
	       (= (atoi lsloc) 0)
	     );and
	     (progn
	      (setq s51 (polar s31 (dtr 0.0) (* 2 swid)))
	      (setq s51a (polar s51 (dtr 0.0) 3))
	      (setq s51b (polar s51 (dtr 90.0) 3))
	      (setq s53 (polar s33 (dtr 0.0) (* 2 swid)))
	      (setq s53a (polar s53 (dtr 180.0) 3))
	      (setq s53b (polar s53 (dtr 90.0) 3))
	      (setq s59 (polar s39 (dtr 0.0) (* 2 swid)))
	      (setq s59a (polar s59 (dtr 180.0) 3))
	      (setq s59b (polar s59 (dtr 270.0) 3))
	      (setq s57 (polar s37 (dtr 0.0) (* 2 swid)))
	      (setq s57a (polar s57 (dtr 0.0) 3))
	      (setq s57b (polar s57 (dtr 270.0) 3))
	      (setq s5qmt1 (polar s3qmt1 (dtr 0.0) (* swid 2)))
	      (setq s5qmt1a (polar s3qmt1a (dtr 0.0) (* swid 2)))
	      (setq s5qmt1b (polar s3qmt1b (dtr 0.0) (* swid 2)))
	      (setq s5qmt1c (polar s3qmt1c (dtr 0.0) (* swid 2)))
	      (setq s5qmnsa (polar s4qmnsa (dtr 0.0) swid))
	      (setq s5qmnsb (polar s4qmnsb (dtr 0.0) swid))
	      (setq s5qmnsc (polar s4qmnsc (dtr 0.0) swid))
	      (setq s5qmbtma (polar s4qmbtma (dtr 0.0) swid))
	      (setq s5qmbtmb (polar s4qmbtmb (dtr 0.0) swid))
	      (setq s5qmbtmc (polar s4qmbtmc (dtr 0.0) swid))
	      (setq s5qmfsa (polar s4qmfsa (dtr 0.0) swid))
	      (setq s5qmfsb (polar s4qmfsb (dtr 0.0) swid))
	      (setq s5qmfsc (polar s4qmfsc (dtr 0.0) swid))
	      
	     );progn
	);if

  	(if
	     (and
	       (= (<= 6 nshlr) T)
	       (= (atoi lsloc) 0)
	     );and
	     (progn
	      (setq s61 (polar s41 (dtr 0.0) (* 2 swid)))
	      (setq s61a (polar s61 (dtr 0.0) 3))
	      (setq s61b (polar s61 (dtr 90.0) 3))
	      (setq s63 (polar s43 (dtr 0.0) (* 2 swid)))
	      (setq s63a (polar s63 (dtr 180.0) 3))
	      (setq s63b (polar s63 (dtr 90.0) 3))
	      (setq s69 (polar s49 (dtr 0.0) (* 2 swid)))
	      (setq s69a (polar s69 (dtr 180.0) 3))
	      (setq s69b (polar s69 (dtr 270.0) 3))
	      (setq s67 (polar s47 (dtr 0.0) (* 2 swid)))
	      (setq s67a (polar s67 (dtr 0.0) 3))
	      (setq s67b (polar s67 (dtr 270.0) 3))
	      (setq s6qmnsa (polar s5qmnsa (dtr 0.0) swid))
	      (setq s6qmnsb (polar s5qmnsb (dtr 0.0) swid))
	      (setq s6qmnsc (polar s5qmnsc (dtr 0.0) swid))
	      (setq s6qmbtma (polar s5qmbtma (dtr 0.0) swid))
	      (setq s6qmbtmb (polar s5qmbtmb (dtr 0.0) swid))
	      (setq s6qmbtmc (polar s5qmbtmc (dtr 0.0) swid))
	      (setq s6qmfsa (polar s5qmfsa (dtr 0.0) swid))
	      (setq s6qmfsb (polar s5qmfsb (dtr 0.0) swid))
	      (setq s6qmfsc (polar s5qmfsc (dtr 0.0) swid))
	      (setq s6qmt2 (polar s4qmt2 (dtr 0.0) (* swid 2)))
	      (setq s6qmt2a (polar s4qmt2a (dtr 0.0) (* swid 2)))
	      (setq s6qmt2b (polar s4qmt2b (dtr 0.0) (* swid 2)))
	      (setq s6qmt2c (polar s4qmt2c (dtr 0.0) (* swid 2)))
	     );progn
	);if

  	(if
	     (and
	       (= (<= 7 nshlr) T)
	       (= (atoi lsloc) 0)
	     );and
	     (progn
	      (setq s71 (polar s51 (dtr 0.0) (* 2 swid)))
	      (setq s71a (polar s71 (dtr 0.0) 3))
	      (setq s71b (polar s71 (dtr 90.0) 3))
	      (setq s73 (polar s53 (dtr 0.0) (* 2 swid)))
	      (setq s73a (polar s73 (dtr 180.0) 3))
	      (setq s73b (polar s73 (dtr 90.0) 3))
	      (setq s79 (polar s59 (dtr 0.0) (* 2 swid)))
	      (setq s79a (polar s79 (dtr 180.0) 3))
	      (setq s79b (polar s79 (dtr 270.0) 3))
	      (setq s77 (polar s57 (dtr 0.0) (* 2 swid)))
	      (setq s77a (polar s77 (dtr 0.0) 3))
	      (setq s77b (polar s77 (dtr 270.0) 3))
	      (setq s7qmt1 (polar s5qmt1 (dtr 0.0) (* swid 2)))
	      (setq s7qmt1a (polar s5qmt1a (dtr 0.0) (* swid 2)))
	      (setq s7qmt1b (polar s5qmt1b (dtr 0.0) (* swid 2)))
	      (setq s7qmt1c (polar s5qmt1c (dtr 0.0) (* swid 2)))
	      (setq s7qmnsa (polar s6qmnsa (dtr 0.0) swid))
	      (setq s7qmnsb (polar s6qmnsb (dtr 0.0) swid))
	      (setq s7qmnsc (polar s6qmnsc (dtr 0.0) swid))
	      (setq s7qmbtma (polar s6qmbtma (dtr 0.0) swid))
	      (setq s7qmbtmb (polar s6qmbtmb (dtr 0.0) swid))
	      (setq s7qmbtmc (polar s6qmbtmc (dtr 0.0) swid))
	      (setq s7qmfsa (polar s6qmfsa (dtr 0.0) swid))
	      (setq s7qmfsb (polar s6qmfsb (dtr 0.0) swid))
	      (setq s7qmfsc (polar s6qmfsc (dtr 0.0) swid))
	     );progn
	);if

    	(if
	     (and
	       (= (<= 8 nshlr) T)
	       (= (atoi lsloc) 0)
	     );and
	     (progn
	      (setq s81 (polar s61 (dtr 0.0) (* 2 swid)))
	      (setq s81a (polar s81 (dtr 0.0) 3))
	      (setq s81b (polar s81 (dtr 90.0) 3))
	      (setq s83 (polar s63 (dtr 0.0) (* 2 swid)))
	      (setq s83a (polar s83 (dtr 180.0) 3))
	      (setq s83b (polar s83 (dtr 90.0) 3))
	      (setq s89 (polar s69 (dtr 0.0) (* 2 swid)))
	      (setq s89a (polar s89 (dtr 180.0) 3))
	      (setq s89b (polar s89 (dtr 270.0) 3))
	      (setq s87 (polar s67 (dtr 0.0) (* 2 swid)))
	      (setq s87a (polar s87 (dtr 0.0) 3))
	      (setq s87b (polar s87 (dtr 270.0) 3))
	      (setq s8qmnsa (polar s7qmnsa (dtr 0.0) swid))
	      (setq s8qmnsb (polar s7qmnsb (dtr 0.0) swid))
	      (setq s8qmnsc (polar s7qmnsc (dtr 0.0) swid))
	      (setq s8qmbtma (polar s7qmbtma (dtr 0.0) swid))
	      (setq s8qmbtmb (polar s7qmbtmb (dtr 0.0) swid))
	      (setq s8qmbtmc (polar s7qmbtmc (dtr 0.0) swid))
	      (setq s8qmfsa (polar s7qmfsa (dtr 0.0) swid))
	      (setq s8qmfsb (polar s7qmfsb (dtr 0.0) swid))
	      (setq s8qmfsc (polar s7qmfsc (dtr 0.0) swid))
	      (setq s8qmt2 (polar s6qmt2 (dtr 0.0) (* swid 2)))
	      (setq s8qmt2a (polar s6qmt2a (dtr 0.0) (* swid 2)))
	      (setq s8qmt2b (polar s6qmt2b (dtr 0.0) (* swid 2)))
	      (setq s8qmt2c (polar s6qmt2c (dtr 0.0) (* swid 2)))
	     );progn
	);if

      	(if
	     (and
	       (= (<= 9 nshlr) T)
	       (= (atoi lsloc) 0)
	     );and
	     (progn
	      (setq s91 (polar s71 (dtr 0.0) (* 2 swid)))
	      (setq s91a (polar s91 (dtr 0.0) 3))
	      (setq s91b (polar s91 (dtr 90.0) 3))
	      (setq s93 (polar s73 (dtr 0.0) (* 2 swid)))
	      (setq s93a (polar s93 (dtr 180.0) 3))
	      (setq s93b (polar s93 (dtr 90.0) 3))
	      (setq s99 (polar s79 (dtr 0.0) (* 2 swid)))
	      (setq s99a (polar s99 (dtr 180.0) 3))
	      (setq s99b (polar s99 (dtr 270.0) 3))
	      (setq s97 (polar s77 (dtr 0.0) (* 2 swid)))
	      (setq s97a (polar s97 (dtr 0.0) 3))
	      (setq s97b (polar s97 (dtr 270.0) 3))
	      (setq s9qmt1 (polar s7qmt1 (dtr 0.0) (* swid 2)))
	      (setq s9qmt1a (polar s7qmt1a (dtr 0.0) (* swid 2)))
	      (setq s9qmt1b (polar s7qmt1b (dtr 0.0) (* swid 2)))
	      (setq s9qmt1c (polar s7qmt1c (dtr 0.0) (* swid 2)))
	      (setq s9qmnsa (polar s8qmnsa (dtr 0.0) swid))
	      (setq s9qmnsb (polar s8qmnsb (dtr 0.0) swid))
	      (setq s9qmnsc (polar s8qmnsc (dtr 0.0) swid))
	      (setq s9qmbtma (polar s8qmbtma (dtr 0.0) swid))
	      (setq s9qmbtmb (polar s8qmbtmb (dtr 0.0) swid))
	      (setq s9qmbtmc (polar s8qmbtmc (dtr 0.0) swid))
	      (setq s9qmfsa (polar s8qmfsa (dtr 0.0) swid))
	      (setq s9qmfsb (polar s8qmfsb (dtr 0.0) swid))
	      (setq s9qmfsc (polar s8qmfsc (dtr 0.0) swid))
	     );progn
	);if

        (if
	     (and
	       (= (<= 10 nshlr) T)
	       (= (atoi lsloc) 0)
	     );and
	     (progn
	      (setq s101 (polar s81 (dtr 0.0) (* 2 swid)))
	      (setq s101a (polar s101 (dtr 0.0) 3))
	      (setq s101b (polar s101 (dtr 90.0) 3))
	      (setq s103 (polar s83 (dtr 0.0) (* 2 swid)))
	      (setq s103a (polar s103 (dtr 180.0) 3))
	      (setq s103b (polar s103 (dtr 90.0) 3))
	      (setq s109 (polar s89 (dtr 0.0) (* 2 swid)))
	      (setq s109a (polar s109 (dtr 180.0) 3))
	      (setq s109b (polar s109 (dtr 270.0) 3))
	      (setq s107 (polar s87 (dtr 0.0) (* 2 swid)))
	      (setq s107a (polar s107 (dtr 0.0) 3))
	      (setq s107b (polar s107 (dtr 270.0) 3))
	      (setq s10qmnsa (polar s9qmnsa (dtr 0.0) swid))
	      (setq s10qmnsb (polar s9qmnsb (dtr 0.0) swid))
	      (setq s10qmnsc (polar s9qmnsc (dtr 0.0) swid))
	      (setq s10qmbtma (polar s9qmbtma (dtr 0.0) swid))
	      (setq s10qmbtmb (polar s9qmbtmb (dtr 0.0) swid))
	      (setq s10qmbtmc (polar s9qmbtmc (dtr 0.0) swid))
	      (setq s10qmfsa (polar s9qmfsa (dtr 0.0) swid))
	      (setq s10qmfsb (polar s9qmfsb (dtr 0.0) swid))
	      (setq s10qmfsc (polar s9qmfsc (dtr 0.0) swid))
	      (setq s10qmt2 (polar s8qmt2 (dtr 0.0) (* swid 2)))
	      (setq s10qmt2a (polar s8qmt2a (dtr 0.0) (* swid 2)))
	      (setq s10qmt2b (polar s8qmt2b (dtr 0.0) (* swid 2)))
	      (setq s10qmt2c (polar s8qmt2c (dtr 0.0) (* swid 2)))
	     );progn
	);if

        (if
	     (and
	       (= (<= 11 nshlr) T)
	       (= (atoi lsloc) 0)
	     );and
	     (progn
	      (setq s111 (polar s91 (dtr 0.0) (* 2 swid)))
	      (setq s111a (polar s111 (dtr 0.0) 3))
	      (setq s111b (polar s111 (dtr 90.0) 3))
	      (setq s113 (polar s93 (dtr 0.0) (* 2 swid)))
	      (setq s113a (polar s113 (dtr 180.0) 3))
	      (setq s113b (polar s113 (dtr 90.0) 3))
	      (setq s119 (polar s99 (dtr 0.0) (* 2 swid)))
	      (setq s119a (polar s119 (dtr 180.0) 3))
	      (setq s119b (polar s119 (dtr 270.0) 3))
	      (setq s117 (polar s97 (dtr 0.0) (* 2 swid)))
	      (setq s117a (polar s117 (dtr 0.0) 3))
	      (setq s117b (polar s117 (dtr 270.0) 3))
	      (setq s11qmt1 (polar s9qmt1 (dtr 0.0) (* swid 2)))
	      (setq s11qmt1a (polar s9qmt1a (dtr 0.0) (* swid 2)))
	      (setq s11qmt1b (polar s9qmt1b (dtr 0.0) (* swid 2)))
	      (setq s11qmt1c (polar s9qmt1c (dtr 0.0) (* swid 2)))
	      (setq s11qmnsa (polar s10qmnsa (dtr 0.0) swid))
	      (setq s11qmnsb (polar s10qmnsb (dtr 0.0) swid))
	      (setq s11qmnsc (polar s10qmnsc (dtr 0.0) swid))
	      (setq s11qmbtma (polar s10qmbtma (dtr 0.0) swid))
	      (setq s11qmbtmb (polar s10qmbtmb (dtr 0.0) swid))
	      (setq s11qmbtmc (polar s10qmbtmc (dtr 0.0) swid))
	      (setq s11qmfsa (polar s10qmfsa (dtr 0.0) swid))
	      (setq s11qmfsb (polar s10qmfsb (dtr 0.0) swid))
	      (setq s11qmfsc (polar s10qmfsc (dtr 0.0) swid))
	     );progn
	);if

        (if
	     (and
	       (= (<= 12 nshlr) T)
	       (= (atoi lsloc) 0)
	     );and
	     (progn
	      (setq s121 (polar s101 (dtr 0.0) (* 2 swid)))
	      (setq s121a (polar s121 (dtr 0.0) 3))
	      (setq s121b (polar s121 (dtr 90.0) 3))
	      (setq s123 (polar s103 (dtr 0.0) (* 2 swid)))
	      (setq s123a (polar s123 (dtr 180.0) 3))
	      (setq s123b (polar s123 (dtr 90.0) 3))
	      (setq s129 (polar s109 (dtr 0.0) (* 2 swid)))
	      (setq s129a (polar s129 (dtr 180.0) 3))
	      (setq s129b (polar s129 (dtr 270.0) 3))
	      (setq s127 (polar s107 (dtr 0.0) (* 2 swid)))
	      (setq s127a (polar s127 (dtr 0.0) 3))
	      (setq s127b (polar s127 (dtr 270.0) 3))
	      (setq s12qmnsa (polar s11qmnsa (dtr 0.0) swid))
	      (setq s12qmnsb (polar s11qmnsb (dtr 0.0) swid))
	      (setq s12qmnsc (polar s11qmnsc (dtr 0.0) swid))
	      (setq s12qmbtma (polar s11qmbtma (dtr 0.0) swid))
	      (setq s12qmbtmb (polar s11qmbtmb (dtr 0.0) swid))
	      (setq s12qmbtmc (polar s11qmbtmc (dtr 0.0) swid))
	      (setq s12qmfsa (polar s11qmfsa (dtr 0.0) swid))
	      (setq s12qmfsb (polar s11qmfsb (dtr 0.0) swid))
	      (setq s12qmfsc (polar s11qmfsc (dtr 0.0) swid))
	      (setq s12qmt2 (polar s10qmt2 (dtr 0.0) (* swid 2)))
	      (setq s12qmt2a (polar s10qmt2a (dtr 0.0) (* swid 2)))
	      (setq s12qmt2b (polar s10qmt2b (dtr 0.0) (* swid 2)))
	      (setq s12qmt2c (polar s10qmt2c (dtr 0.0) (* swid 2)))
	     );progn
	);if

        (if
	     (and
	       (= (<= 13 nshlr) T)
	       (= (atoi lsloc) 0)
	     );and
	     (progn
	      (setq s131 (polar s111 (dtr 0.0) (* 2 swid)))
	      (setq s131a (polar s131 (dtr 0.0) 3))
	      (setq s131b (polar s131 (dtr 90.0) 3))
	      (setq s133 (polar s113 (dtr 0.0) (* 2 swid)))
	      (setq s133a (polar s133 (dtr 180.0) 3))
	      (setq s133b (polar s133 (dtr 90.0) 3))
	      (setq s139 (polar s119 (dtr 0.0) (* 2 swid)))
	      (setq s139a (polar s139 (dtr 180.0) 3))
	      (setq s139b (polar s139 (dtr 270.0) 3))
	      (setq s137 (polar s117 (dtr 0.0) (* 2 swid)))
	      (setq s137a (polar s137 (dtr 0.0) 3))
	      (setq s137b (polar s137 (dtr 270.0) 3))
	      (setq s13qmt1 (polar s11qmt1 (dtr 0.0) (* swid 2)))
	      (setq s13qmt1a (polar s11qmt1a (dtr 0.0) (* swid 2)))
	      (setq s13qmt1b (polar s11qmt1b (dtr 0.0) (* swid 2)))
	      (setq s13qmt1c (polar s11qmt1c (dtr 0.0) (* swid 2)))
	      (setq s13qmnsa (polar s12qmnsa (dtr 0.0) swid))
	      (setq s13qmnsb (polar s12qmnsb (dtr 0.0) swid))
	      (setq s13qmnsc (polar s12qmnsc (dtr 0.0) swid))
	      (setq s13qmbtma (polar s12qmbtma (dtr 0.0) swid))
	      (setq s13qmbtmb (polar s12qmbtmb (dtr 0.0) swid))
	      (setq s13qmbtmc (polar s12qmbtmc (dtr 0.0) swid))
	      (setq s13qmfsa (polar s12qmfsa (dtr 0.0) swid))
	      (setq s13qmfsb (polar s12qmfsb (dtr 0.0) swid))
	      (setq s13qmfsc (polar s12qmfsc (dtr 0.0) swid))
	     );progn
	);if

        (if
	     (and
	       (= (<= 14 nshlr) T)
	       (= (atoi lsloc) 0)
	     );and
	     (progn
	      (setq s141 (polar s121 (dtr 0.0) (* 2 swid)))
	      (setq s141a (polar s141 (dtr 0.0) 3))
	      (setq s141b (polar s141 (dtr 90.0) 3))
	      (setq s143 (polar s123 (dtr 0.0) (* 2 swid)))
	      (setq s143a (polar s143 (dtr 180.0) 3))
	      (setq s143b (polar s143 (dtr 90.0) 3))
	      (setq s149 (polar s129 (dtr 0.0) (* 2 swid)))
	      (setq s149a (polar s149 (dtr 180.0) 3))
	      (setq s149b (polar s149 (dtr 270.0) 3))
	      (setq s147 (polar s127 (dtr 0.0) (* 2 swid)))
	      (setq s147a (polar s147 (dtr 0.0) 3))
	      (setq s147b (polar s147 (dtr 270.0) 3))
	      (setq s14qmnsa (polar s13qmnsa (dtr 0.0) swid))
	      (setq s14qmnsb (polar s13qmnsb (dtr 0.0) swid))
	      (setq s14qmnsc (polar s13qmnsc (dtr 0.0) swid))
	      (setq s14qmbtma (polar s13qmbtma (dtr 0.0) swid))
	      (setq s14qmbtmb (polar s13qmbtmb (dtr 0.0) swid))
	      (setq s14qmbtmc (polar s13qmbtmc (dtr 0.0) swid))
	      (setq s14qmfsa (polar s13qmfsa (dtr 0.0) swid))
	      (setq s14qmfsb (polar s13qmfsb (dtr 0.0) swid))
	      (setq s14qmfsc (polar s13qmfsc (dtr 0.0) swid))
	      (setq s14qmt2 (polar s12qmt2 (dtr 0.0) (* swid 2)))
	      (setq s14qmt2a (polar s12qmt2a (dtr 0.0) (* swid 2)))
	      (setq s14qmt2b (polar s12qmt2b (dtr 0.0) (* swid 2)))
	      (setq s14qmt2c (polar s12qmt2c (dtr 0.0) (* swid 2)))
	     );progn
	);if

        (if
	     (and
	       (= (<= 15 nshlr) T)
	       (= (atoi lsloc) 0)
	     );and
	     (progn
	      (setq s151 (polar s131 (dtr 0.0) (* 2 swid)))
	      (setq s151a (polar s151 (dtr 0.0) 3))
	      (setq s151b (polar s151 (dtr 90.0) 3))
	      (setq s153 (polar s133 (dtr 0.0) (* 2 swid)))
	      (setq s153a (polar s153 (dtr 180.0) 3))
	      (setq s153b (polar s153 (dtr 90.0) 3))
	      (setq s159 (polar s139 (dtr 0.0) (* 2 swid)))
	      (setq s159a (polar s159 (dtr 180.0) 3))
	      (setq s159b (polar s159 (dtr 270.0) 3))
	      (setq s157 (polar s137 (dtr 0.0) (* 2 swid)))
	      (setq s157a (polar s157 (dtr 0.0) 3))
	      (setq s157b (polar s157 (dtr 270.0) 3))
	      (setq s15qmt1 (polar s13qmt1 (dtr 0.0) (* swid 2)))
	      (setq s15qmt1a (polar s13qmt1a (dtr 0.0) (* swid 2)))
	      (setq s15qmt1b (polar s13qmt1b (dtr 0.0) (* swid 2)))
	      (setq s15qmt1c (polar s13qmt1c (dtr 0.0) (* swid 2)))
	      (setq s15qmnsa (polar s14qmnsa (dtr 0.0) swid))
	      (setq s15qmnsb (polar s14qmnsb (dtr 0.0) swid))
	      (setq s15qmnsc (polar s14qmnsc (dtr 0.0) swid))
	      (setq s15qmbtma (polar s14qmbtma (dtr 0.0) swid))
	      (setq s15qmbtmb (polar s14qmbtmb (dtr 0.0) swid))
	      (setq s15qmbtmc (polar s14qmbtmc (dtr 0.0) swid))
	      (setq s15qmfsa (polar s14qmfsa (dtr 0.0) swid))
	      (setq s15qmfsb (polar s14qmfsb (dtr 0.0) swid))
	      (setq s15qmfsc (polar s14qmfsc (dtr 0.0) swid))
	     );progn
	);if

  	(if
	     (and
	       (= (<= 16 nshlr) T)
	       (= (atoi lsloc) 0)
	     );and
	     (progn
	      (setq s161 (polar s141 (dtr 0.0) (* 2 swid)))
	      (setq s161a (polar s161 (dtr 0.0) 3))
	      (setq s161b (polar s161 (dtr 90.0) 3))
	      (setq s163 (polar s143 (dtr 0.0) (* 2 swid)))
	      (setq s163a (polar s163 (dtr 180.0) 3))
	      (setq s163b (polar s163 (dtr 90.0) 3))
	      (setq s169 (polar s149 (dtr 0.0) (* 2 swid)))
	      (setq s169a (polar s169 (dtr 180.0) 3))
	      (setq s169b (polar s169 (dtr 270.0) 3))
	      (setq s167 (polar s147 (dtr 0.0) (* 2 swid)))
	      (setq s167a (polar s167 (dtr 0.0) 3))
	      (setq s167b (polar s167 (dtr 270.0) 3))
	      (setq s16qmnsa (polar s15qmnsa (dtr 0.0) swid))
	      (setq s16qmnsb (polar s15qmnsb (dtr 0.0) swid))
	      (setq s16qmnsc (polar s15qmnsc (dtr 0.0) swid))
	      (setq s16qmbtma (polar s15qmbtma (dtr 0.0) swid))
	      (setq s16qmbtmb (polar s15qmbtmb (dtr 0.0) swid))
	      (setq s16qmbtmc (polar s15qmbtmc (dtr 0.0) swid))
	      (setq s16qmfsa (polar s15qmfsa (dtr 0.0) swid))
	      (setq s16qmfsb (polar s15qmfsb (dtr 0.0) swid))
	      (setq s16qmfsc (polar s15qmfsc (dtr 0.0) swid))
	      (setq s16qmt2 (polar s14qmt2 (dtr 0.0) (* swid 2)))
	      (setq s16qmt2a (polar s14qmt2a (dtr 0.0) (* swid 2)))
	      (setq s16qmt2b (polar s14qmt2b (dtr 0.0) (* swid 2)))
	      (setq s16qmt2c (polar s14qmt2c (dtr 0.0) (* swid 2)))
	     );progn
	);if

    	(if
	     (and
	       (= (<= 17 nshlr) T)
	       (= (atoi lsloc) 0)
	     );and
	     (progn
	      (setq s171 (polar s151 (dtr 0.0) (* 2 swid)))
	      (setq s171a (polar s171 (dtr 0.0) 3))
	      (setq s171b (polar s171 (dtr 90.0) 3))
	      (setq s173 (polar s153 (dtr 0.0) (* 2 swid)))
	      (setq s173a (polar s173 (dtr 180.0) 3))
	      (setq s173b (polar s173 (dtr 90.0) 3))
	      (setq s179 (polar s159 (dtr 0.0) (* 2 swid)))
	      (setq s179a (polar s179 (dtr 180.0) 3))
	      (setq s179b (polar s179 (dtr 270.0) 3))
	      (setq s177 (polar s157 (dtr 0.0) (* 2 swid)))
	      (setq s177a (polar s177 (dtr 0.0) 3))
	      (setq s177b (polar s177 (dtr 270.0) 3))
	      (setq s17qmt1 (polar s15qmt1 (dtr 0.0) (* swid 2)))
	      (setq s17qmt1a (polar s15qmt1a (dtr 0.0) (* swid 2)))
	      (setq s17qmt1b (polar s15qmt1b (dtr 0.0) (* swid 2)))
	      (setq s17qmt1c (polar s15qmt1c (dtr 0.0) (* swid 2)))
	      (setq s17qmnsa (polar s16qmnsa (dtr 0.0) swid))
	      (setq s17qmnsb (polar s16qmnsb (dtr 0.0) swid))
	      (setq s17qmnsc (polar s16qmnsc (dtr 0.0) swid))
	      (setq s17qmbtma (polar s16qmbtma (dtr 0.0) swid))
	      (setq s17qmbtmb (polar s16qmbtmb (dtr 0.0) swid))
	      (setq s17qmbtmc (polar s16qmbtmc (dtr 0.0) swid))
	      (setq s17qmfsa (polar s16qmfsa (dtr 0.0) swid))
	      (setq s17qmfsb (polar s16qmfsb (dtr 0.0) swid))
	      (setq s17qmfsc (polar s16qmfsc (dtr 0.0) swid))
	     );progn
	);if

  	(if
	     (and
	       (= (<= 18 nshlr) T)
	       (= (atoi lsloc) 0)
	     );and
	     (progn
	      (setq s181 (polar s161 (dtr 0.0) (* 2 swid)))
	      (setq s181a (polar s181 (dtr 0.0) 3))
	      (setq s181b (polar s181 (dtr 90.0) 3))
	      (setq s183 (polar s163 (dtr 0.0) (* 2 swid)))
	      (setq s183a (polar s183 (dtr 180.0) 3))
	      (setq s183b (polar s183 (dtr 90.0) 3))
	      (setq s189 (polar s169 (dtr 0.0) (* 2 swid)))
	      (setq s189a (polar s189 (dtr 180.0) 3))
	      (setq s189b (polar s189 (dtr 270.0) 3))
	      (setq s187 (polar s167 (dtr 0.0) (* 2 swid)))
	      (setq s187a (polar s187 (dtr 0.0) 3))
	      (setq s187b (polar s187 (dtr 270.0) 3))
	      (setq s18qmnsa (polar s17qmnsa (dtr 0.0) swid))
	      (setq s18qmnsb (polar s17qmnsb (dtr 0.0) swid))
	      (setq s18qmnsc (polar s17qmnsc (dtr 0.0) swid))
	      (setq s18qmbtma (polar s17qmbtma (dtr 0.0) swid))
	      (setq s18qmbtmb (polar s17qmbtmb (dtr 0.0) swid))
	      (setq s18qmbtmc (polar s17qmbtmc (dtr 0.0) swid))
	      (setq s18qmfsa (polar s17qmfsa (dtr 0.0) swid))
	      (setq s18qmfsb (polar s17qmfsb (dtr 0.0) swid))
	      (setq s18qmfsc (polar s17qmfsc (dtr 0.0) swid))
	      (setq s18qmt2 (polar s16qmt2 (dtr 0.0) (* swid 2)))
	      (setq s18qmt2a (polar s16qmt2a (dtr 0.0) (* swid 2)))
	      (setq s18qmt2b (polar s16qmt2b (dtr 0.0) (* swid 2)))
	      (setq s18qmt2c (polar s16qmt2c (dtr 0.0) (* swid 2)))
	     );progn
	);if

    	(if
	     (and
	       (= (<= 19 nshlr) T)
	       (= (atoi lsloc) 0)
	     );and
	     (progn
	      (setq s191 (polar s171 (dtr 0.0) (* 2 swid)))
	      (setq s191a (polar s191 (dtr 0.0) 3))
	      (setq s191b (polar s191 (dtr 90.0) 3))
	      (setq s193 (polar s173 (dtr 0.0) (* 2 swid)))
	      (setq s193a (polar s193 (dtr 180.0) 3))
	      (setq s193b (polar s193 (dtr 90.0) 3))
	      (setq s199 (polar s179 (dtr 0.0) (* 2 swid)))
	      (setq s199a (polar s199 (dtr 180.0) 3))
	      (setq s199b (polar s199 (dtr 270.0) 3))
	      (setq s197 (polar s177 (dtr 0.0) (* 2 swid)))
	      (setq s197a (polar s197 (dtr 0.0) 3))
	      (setq s197b (polar s197 (dtr 270.0) 3))
	      (setq s19qmt1 (polar s17qmt1 (dtr 0.0) (* swid 2)))
	      (setq s19qmt1a (polar s17qmt1a (dtr 0.0) (* swid 2)))
	      (setq s19qmt1b (polar s17qmt1b (dtr 0.0) (* swid 2)))
	      (setq s19qmt1c (polar s17qmt1c (dtr 0.0) (* swid 2)))
	      (setq s19qmnsa (polar s18qmnsa (dtr 0.0) swid))
	      (setq s19qmnsb (polar s18qmnsb (dtr 0.0) swid))
	      (setq s19qmnsc (polar s18qmnsc (dtr 0.0) swid))
	      (setq s19qmbtma (polar s18qmbtma (dtr 0.0) swid))
	      (setq s19qmbtmb (polar s18qmbtmb (dtr 0.0) swid))
	      (setq s19qmbtmc (polar s18qmbtmc (dtr 0.0) swid))
	      (setq s19qmfsa (polar s18qmfsa (dtr 0.0) swid))
	      (setq s19qmfsb (polar s18qmfsb (dtr 0.0) swid))
	      (setq s19qmfsc (polar s18qmfsc (dtr 0.0) swid))
	     );progn
	);if

      	(if
	     (and
	       (= (<= 20 nshlr) T)
	       (= (atoi lsloc) 0)
	     );and
	     (progn
	      (setq s201 (polar s181 (dtr 0.0) (* 2 swid)))
	      (setq s201a (polar s201 (dtr 0.0) 3))
	      (setq s201b (polar s201 (dtr 90.0) 3))
	      (setq s203 (polar s183 (dtr 0.0) (* 2 swid)))
	      (setq s203a (polar s203 (dtr 180.0) 3))
	      (setq s203b (polar s203 (dtr 90.0) 3))
	      (setq s209 (polar s189 (dtr 0.0) (* 2 swid)))
	      (setq s209a (polar s209 (dtr 180.0) 3))
	      (setq s209b (polar s209 (dtr 270.0) 3))
	      (setq s207 (polar s187 (dtr 0.0) (* 2 swid)))
	      (setq s207a (polar s207 (dtr 0.0) 3))
	      (setq s207b (polar s207 (dtr 270.0) 3))
	      (setq s20qmnsa (polar s19qmnsa (dtr 0.0) swid))
	      (setq s20qmnsb (polar s19qmnsb (dtr 0.0) swid))
	      (setq s20qmnsc (polar s19qmnsc (dtr 0.0) swid))
	      (setq s20qmbtma (polar s19qmbtma (dtr 0.0) swid))
	      (setq s20qmbtmb (polar s19qmbtmb (dtr 0.0) swid))
	      (setq s20qmbtmc (polar s19qmbtmc (dtr 0.0) swid))
	      (setq s20qmfsa (polar s19qmfsa (dtr 0.0) swid))
	      (setq s20qmfsb (polar s19qmfsb (dtr 0.0) swid))
	      (setq s20qmfsc (polar s19qmfsc (dtr 0.0) swid))
	      (setq s20qmt2 (polar s18qmt2 (dtr 0.0) (* swid 2)))
	      (setq s20qmt2a (polar s18qmt2a (dtr 0.0) (* swid 2)))
	      (setq s20qmt2b (polar s18qmt2b (dtr 0.0) (* swid 2)))
	      (setq s20qmt2c (polar s18qmt2c (dtr 0.0) (* swid 2)))
	     );progn
	);if

;#######################################################;
  ;The long seam offset on the first shell is "NS"
  	(cond
	  ((= (atoi lsloc) 1)
	   (setq s11 '(1000.0 1000.0 0.0 ))
	   (setq s11a (polar s11 (dtr 0.0) 3))
	   (setq s11b (polar s11 (dtr 90.0) 3))
	   (setq s13 (polar s11 (dtr 0.0) swid))
	   (setq s13a (polar s13 (dtr 180.0) 3))
	   (setq s13b (polar s13 (dtr 90.0) 3))
	   (setq s19 (polar s13 (dtr 90.0) slen))
	   (setq s19a (polar s19 (dtr 180.0) 3))
	   (setq s19b (polar s19 (dtr 270.0) 3))
	   (setq s17 (polar s11 (dtr 90.0) slen))
	   (setq s17a (polar s17 (dtr 0.0) 3))
	   (setq s17b (polar s17 (dtr 270.0) 3))
	   (setq qmt1 (polar s17 (dtr 270.0) lsof))
	   (setq qmfs (polar qmt1 (dtr 270.0) qtrdis))
	   (setq qmbtm (polar qmfs (dtr 270.0) qtrdis))
	   (setq qmns (polar qmbtm (dtr 270.0) qtrdis))
	   (setq s1qmt1a (polar qmt1 (dtr 0.0) 0.1875))
	   (setq s1qmt1b (polar qmt1 (dtr 0.0) (- swid 0.1875)))
	   (setq s1qmt1c (polar qmt1 (dtr 0.0) swid))
	   (setq s1qmnsa (polar qmns (dtr 0.0) 0.1875))
	   (setq s1qmnsb (polar qmns (dtr 0.0) (- swid 0.1875)))
	   (setq s1qmnsc (polar qmns (dtr 0.0) swid))
	   (setq s1qmbtma (polar qmbtm (dtr 0.0) 0.1875))
	   (setq s1qmbtmb (polar qmbtm (dtr 0.0) (- swid 0.1875)))
	   (setq s1qmbtmc (polar qmbtm (dtr 0.0) swid))
	   (setq s1qmfsa (polar qmfs (dtr 0.0) 0.1875))
	   (setq s1qmfsb (polar qmfs (dtr 0.0) (- swid 0.1875)))
	   (setq s1qmfsc (polar qmfs (dtr 0.0) swid))
	  )
	);cond

	(if
	    (and
	      (= (<= 2 nshlr) T)
	      (= (atoi lsloc) 1)
	    );and
	    (progn
	     (setq s21 (polar s13 (dtr 270.0) (* 2 lsof)))
	     (setq s21a (polar s21 (dtr 0.0) 3))
	     (setq s21b (polar s21 (dtr 90.0) 3))
	     (setq s23 (polar s21 (dtr 0.0) swid))
	     (setq s23a (polar s23 (dtr 180.0) 3))
	     (setq s23b (polar s23 (dtr 90.0) 3))
	     (setq s29 (polar s23 (dtr 90.0) slen))
	     (setq s29a (polar s29 (dtr 180.0) 3))
	     (setq s29b (polar s29 (dtr 270.0) 3))
	     (setq s27 (polar s19 (dtr 270.0) (* 2 lsof)))
	     (setq s27a (polar s27 (dtr 0.0) 3))
	     (setq s27b (polar s27 (dtr 270.0) 3))
	     (setq s2qmnsa (polar s1qmnsa (dtr 0.0) swid))
	     (setq s2qmnsb (polar s1qmnsb (dtr 0.0) swid))
	     (setq s2qmnsc (polar s1qmnsc (dtr 0.0) swid))
	     (setq s2qmbtma (polar s1qmbtma (dtr 0.0) swid))
	     (setq s2qmbtmb (polar s1qmbtmb (dtr 0.0) swid))
	     (setq s2qmbtmc (polar s1qmbtmc (dtr 0.0) swid))
	     (setq s2qmfsa (polar s1qmfsa (dtr 0.0) swid))
	     (setq s2qmfsb (polar s1qmfsb (dtr 0.0) swid))
	     (setq s2qmfsc (polar s1qmfsc (dtr 0.0) swid))
	     (setq s2qmt2 (polar s13 (dtr 270.0) lsof))
	     (setq s2qmt2a (polar s2qmt2 (dtr 0.0) 0.1875))
	     (setq s2qmt2b (polar s2qmt2 (dtr 0.0) (- swid 0.1875)))
	     (setq s2qmt2c (polar s2qmt2 (dtr 0.0) swid))
	     
	    );progn
	);if
    	   (if
	     (and
	       (= (<= 3 nshlr) T)
	       (= (atoi lsloc) 1)
	     );and
	     (progn
	      (setq s31 (polar s11 (dtr 0.0) (* 2 swid)))
	      (setq s31a (polar s31 (dtr 0.0) 3))
	      (setq s31b (polar s31 (dtr 90.0) 3))
	      (setq s33 (polar s13 (dtr 0.0) (* 2 swid)))
	      (setq s33a (polar s33 (dtr 180.0) 3))
	      (setq s33b (polar s33 (dtr 90.0) 3))
	      (setq s39 (polar s19 (dtr 0.0) (* 2 swid)))
	      (setq s39a (polar s39 (dtr 180.0) 3))
	      (setq s39b (polar s39 (dtr 270.0) 3))
	      (setq s37 (polar s17 (dtr 0.0) (* 2 swid)))
	      (setq s37a (polar s37 (dtr 0.0) 3))
	      (setq s37b (polar s37 (dtr 270.0) 3))
	      (setq s3qmt1 (polar qmt1 (dtr 0.0) (* swid 2)))
	      (setq s3qmt1a (polar s1qmt1a (dtr 0.0) (* swid 2)))
	      (setq s3qmt1b (polar s1qmt1b (dtr 0.0) (* swid 2)))
	      (setq s3qmt1c (polar s1qmt1c (dtr 0.0) (* swid 2)))
	      (setq s3qmnsa (polar s2qmnsa (dtr 0.0) swid))
	      (setq s3qmnsb (polar s2qmnsb (dtr 0.0) swid))
	      (setq s3qmnsc (polar s2qmnsc (dtr 0.0) swid))
	      (setq s3qmbtma (polar s2qmbtma (dtr 0.0) swid))
	      (setq s3qmbtmb (polar s2qmbtmb (dtr 0.0) swid))
	      (setq s3qmbtmc (polar s2qmbtmc (dtr 0.0) swid))
	      (setq s3qmfsa (polar s2qmfsa (dtr 0.0) swid))
	      (setq s3qmfsb (polar s2qmfsb (dtr 0.0) swid))
	      (setq s3qmfsc (polar s2qmfsc (dtr 0.0) swid))
	      
	     );progn
    	   );if
	(if
	     (and
	       (= (<= 4 nshlr) T)
	       (= (atoi lsloc) 1)
	     );and
	     (progn
	      (setq s41 (polar s21 (dtr 0.0) (* 2 swid)))
	      (setq s41a (polar s41 (dtr 0.0) 3))
	      (setq s41b (polar s41 (dtr 90.0) 3))
	      (setq s43 (polar s23 (dtr 0.0) (* 2 swid)))
	      (setq s43a (polar s43 (dtr 180.0) 3))
	      (setq s43b (polar s43 (dtr 90.0) 3))
	      (setq s49 (polar s29 (dtr 0.0) (* 2 swid)))
	      (setq s49a (polar s49 (dtr 180.0) 3))
	      (setq s49b (polar s49 (dtr 270.0) 3))
	      (setq s47 (polar s27 (dtr 0.0) (* 2 swid)))
	      (setq s47a (polar s47 (dtr 0.0) 3))
	      (setq s47b (polar s47 (dtr 270.0) 3))
	      (setq s4qmnsa (polar s3qmnsa (dtr 0.0) swid))
	      (setq s4qmnsb (polar s3qmnsb (dtr 0.0) swid))
	      (setq s4qmnsc (polar s3qmnsc (dtr 0.0) swid))
	      (setq s4qmbtma (polar s3qmbtma (dtr 0.0) swid))
	      (setq s4qmbtmb (polar s3qmbtmb (dtr 0.0) swid))
	      (setq s4qmbtmc (polar s3qmbtmc (dtr 0.0) swid))
	      (setq s4qmfsa (polar s3qmfsa (dtr 0.0) swid))
	      (setq s4qmfsb (polar s3qmfsb (dtr 0.0) swid))
	      (setq s4qmfsc (polar s3qmfsc (dtr 0.0) swid))
	      (setq s4qmt2 (polar s2qmt2 (dtr 0.0) (* swid 2)))
	      (setq s4qmt2a (polar s2qmt2a (dtr 0.0) (* swid 2)))
	      (setq s4qmt2b (polar s2qmt2b (dtr 0.0) (* swid 2)))
	      (setq s4qmt2c (polar s2qmt2c (dtr 0.0) (* swid 2)))
	     );progn
	);if

  	(if
	     (and
	       (= (<= 5 nshlr) T)
	       (= (atoi lsloc) 1)
	     );and
	     (progn
	      (setq s51 (polar s31 (dtr 0.0) (* 2 swid)))
	      (setq s51a (polar s51 (dtr 0.0) 3))
	      (setq s51b (polar s51 (dtr 90.0) 3))
	      (setq s53 (polar s33 (dtr 0.0) (* 2 swid)))
	      (setq s53a (polar s53 (dtr 180.0) 3))
	      (setq s53b (polar s53 (dtr 90.0) 3))
	      (setq s59 (polar s39 (dtr 0.0) (* 2 swid)))
	      (setq s59a (polar s59 (dtr 180.0) 3))
	      (setq s59b (polar s59 (dtr 270.0) 3))
	      (setq s57 (polar s37 (dtr 0.0) (* 2 swid)))
	      (setq s57a (polar s57 (dtr 0.0) 3))
	      (setq s57b (polar s57 (dtr 270.0) 3))
	      (setq s5qmt1 (polar s3qmt1 (dtr 0.0) (* swid 2)))
	      (setq s5qmt1a (polar s3qmt1a (dtr 0.0) (* swid 2)))
	      (setq s5qmt1b (polar s3qmt1b (dtr 0.0) (* swid 2)))
	      (setq s5qmt1c (polar s3qmt1c (dtr 0.0) (* swid 2)))
	      (setq s5qmnsa (polar s4qmnsa (dtr 0.0) swid))
	      (setq s5qmnsb (polar s4qmnsb (dtr 0.0) swid))
	      (setq s5qmnsc (polar s4qmnsc (dtr 0.0) swid))
	      (setq s5qmbtma (polar s4qmbtma (dtr 0.0) swid))
	      (setq s5qmbtmb (polar s4qmbtmb (dtr 0.0) swid))
	      (setq s5qmbtmc (polar s4qmbtmc (dtr 0.0) swid))
	      (setq s5qmfsa (polar s4qmfsa (dtr 0.0) swid))
	      (setq s5qmfsb (polar s4qmfsb (dtr 0.0) swid))
	      (setq s5qmfsc (polar s4qmfsc (dtr 0.0) swid))
	      
	     );progn
	);if

  	(if
	     (and
	       (= (<= 6 nshlr) T)
	       (= (atoi lsloc) 1)
	     );and
	     (progn
	      (setq s61 (polar s41 (dtr 0.0) (* 2 swid)))
	      (setq s61a (polar s61 (dtr 0.0) 3))
	      (setq s61b (polar s61 (dtr 90.0) 3))
	      (setq s63 (polar s43 (dtr 0.0) (* 2 swid)))
	      (setq s63a (polar s63 (dtr 180.0) 3))
	      (setq s63b (polar s63 (dtr 90.0) 3))
	      (setq s69 (polar s49 (dtr 0.0) (* 2 swid)))
	      (setq s69a (polar s69 (dtr 180.0) 3))
	      (setq s69b (polar s69 (dtr 270.0) 3))
	      (setq s67 (polar s47 (dtr 0.0) (* 2 swid)))
	      (setq s67a (polar s67 (dtr 0.0) 3))
	      (setq s67b (polar s67 (dtr 270.0) 3))
	      (setq s6qmnsa (polar s5qmnsa (dtr 0.0) swid))
	      (setq s6qmnsb (polar s5qmnsb (dtr 0.0) swid))
	      (setq s6qmnsc (polar s5qmnsc (dtr 0.0) swid))
	      (setq s6qmbtma (polar s5qmbtma (dtr 0.0) swid))
	      (setq s6qmbtmb (polar s5qmbtmb (dtr 0.0) swid))
	      (setq s6qmbtmc (polar s5qmbtmc (dtr 0.0) swid))
	      (setq s6qmfsa (polar s5qmfsa (dtr 0.0) swid))
	      (setq s6qmfsb (polar s5qmfsb (dtr 0.0) swid))
	      (setq s6qmfsc (polar s5qmfsc (dtr 0.0) swid))
	      (setq s6qmt2 (polar s4qmt2 (dtr 0.0) (* swid 2)))
	      (setq s6qmt2a (polar s4qmt2a (dtr 0.0) (* swid 2)))
	      (setq s6qmt2b (polar s4qmt2b (dtr 0.0) (* swid 2)))
	      (setq s6qmt2c (polar s4qmt2c (dtr 0.0) (* swid 2)))
	     );progn
	);if

  	(if
	     (and
	       (= (<= 7 nshlr) T)
	       (= (atoi lsloc) 1)
	     );and
	     (progn
	      (setq s71 (polar s51 (dtr 0.0) (* 2 swid)))
	      (setq s71a (polar s71 (dtr 0.0) 3))
	      (setq s71b (polar s71 (dtr 90.0) 3))
	      (setq s73 (polar s53 (dtr 0.0) (* 2 swid)))
	      (setq s73a (polar s73 (dtr 180.0) 3))
	      (setq s73b (polar s73 (dtr 90.0) 3))
	      (setq s79 (polar s59 (dtr 0.0) (* 2 swid)))
	      (setq s79a (polar s79 (dtr 180.0) 3))
	      (setq s79b (polar s79 (dtr 270.0) 3))
	      (setq s77 (polar s57 (dtr 0.0) (* 2 swid)))
	      (setq s77a (polar s77 (dtr 0.0) 3))
	      (setq s77b (polar s77 (dtr 270.0) 3))
	      (setq s7qmt1 (polar s5qmt1 (dtr 0.0) (* swid 2)))
	      (setq s7qmt1a (polar s5qmt1a (dtr 0.0) (* swid 2)))
	      (setq s7qmt1b (polar s5qmt1b (dtr 0.0) (* swid 2)))
	      (setq s7qmt1c (polar s5qmt1c (dtr 0.0) (* swid 2)))
	      (setq s7qmnsa (polar s6qmnsa (dtr 0.0) swid))
	      (setq s7qmnsb (polar s6qmnsb (dtr 0.0) swid))
	      (setq s7qmnsc (polar s6qmnsc (dtr 0.0) swid))
	      (setq s7qmbtma (polar s6qmbtma (dtr 0.0) swid))
	      (setq s7qmbtmb (polar s6qmbtmb (dtr 0.0) swid))
	      (setq s7qmbtmc (polar s6qmbtmc (dtr 0.0) swid))
	      (setq s7qmfsa (polar s6qmfsa (dtr 0.0) swid))
	      (setq s7qmfsb (polar s6qmfsb (dtr 0.0) swid))
	      (setq s7qmfsc (polar s6qmfsc (dtr 0.0) swid))
	     );progn
	);if

    	(if
	     (and
	       (= (<= 8 nshlr) T)
	       (= (atoi lsloc) 1)
	     );and
	     (progn
	      (setq s81 (polar s61 (dtr 0.0) (* 2 swid)))
	      (setq s81a (polar s81 (dtr 0.0) 3))
	      (setq s81b (polar s81 (dtr 90.0) 3))
	      (setq s83 (polar s63 (dtr 0.0) (* 2 swid)))
	      (setq s83a (polar s83 (dtr 180.0) 3))
	      (setq s83b (polar s83 (dtr 90.0) 3))
	      (setq s89 (polar s69 (dtr 0.0) (* 2 swid)))
	      (setq s89a (polar s89 (dtr 180.0) 3))
	      (setq s89b (polar s89 (dtr 270.0) 3))
	      (setq s87 (polar s67 (dtr 0.0) (* 2 swid)))
	      (setq s87a (polar s87 (dtr 0.0) 3))
	      (setq s87b (polar s87 (dtr 270.0) 3))
	      (setq s8qmnsa (polar s7qmnsa (dtr 0.0) swid))
	      (setq s8qmnsb (polar s7qmnsb (dtr 0.0) swid))
	      (setq s8qmnsc (polar s7qmnsc (dtr 0.0) swid))
	      (setq s8qmbtma (polar s7qmbtma (dtr 0.0) swid))
	      (setq s8qmbtmb (polar s7qmbtmb (dtr 0.0) swid))
	      (setq s8qmbtmc (polar s7qmbtmc (dtr 0.0) swid))
	      (setq s8qmfsa (polar s7qmfsa (dtr 0.0) swid))
	      (setq s8qmfsb (polar s7qmfsb (dtr 0.0) swid))
	      (setq s8qmfsc (polar s7qmfsc (dtr 0.0) swid))
	      (setq s8qmt2 (polar s6qmt2 (dtr 0.0) (* swid 2)))
	      (setq s8qmt2a (polar s6qmt2a (dtr 0.0) (* swid 2)))
	      (setq s8qmt2b (polar s6qmt2b (dtr 0.0) (* swid 2)))
	      (setq s8qmt2c (polar s6qmt2c (dtr 0.0) (* swid 2)))
	     );progn
	);if

      	(if
	     (and
	       (= (<= 9 nshlr) T)
	       (= (atoi lsloc) 1)
	     );and
	     (progn
	      (setq s91 (polar s71 (dtr 0.0) (* 2 swid)))
	      (setq s91a (polar s91 (dtr 0.0) 3))
	      (setq s91b (polar s91 (dtr 90.0) 3))
	      (setq s93 (polar s73 (dtr 0.0) (* 2 swid)))
	      (setq s93a (polar s93 (dtr 180.0) 3))
	      (setq s93b (polar s93 (dtr 90.0) 3))
	      (setq s99 (polar s79 (dtr 0.0) (* 2 swid)))
	      (setq s99a (polar s99 (dtr 180.0) 3))
	      (setq s99b (polar s99 (dtr 270.0) 3))
	      (setq s97 (polar s77 (dtr 0.0) (* 2 swid)))
	      (setq s97a (polar s97 (dtr 0.0) 3))
	      (setq s97b (polar s97 (dtr 270.0) 3))
	      (setq s9qmt1 (polar s7qmt1 (dtr 0.0) (* swid 2)))
	      (setq s9qmt1a (polar s7qmt1a (dtr 0.0) (* swid 2)))
	      (setq s9qmt1b (polar s7qmt1b (dtr 0.0) (* swid 2)))
	      (setq s9qmt1c (polar s7qmt1c (dtr 0.0) (* swid 2)))
	      (setq s9qmnsa (polar s8qmnsa (dtr 0.0) swid))
	      (setq s9qmnsb (polar s8qmnsb (dtr 0.0) swid))
	      (setq s9qmnsc (polar s8qmnsc (dtr 0.0) swid))
	      (setq s9qmbtma (polar s8qmbtma (dtr 0.0) swid))
	      (setq s9qmbtmb (polar s8qmbtmb (dtr 0.0) swid))
	      (setq s9qmbtmc (polar s8qmbtmc (dtr 0.0) swid))
	      (setq s9qmfsa (polar s8qmfsa (dtr 0.0) swid))
	      (setq s9qmfsb (polar s8qmfsb (dtr 0.0) swid))
	      (setq s9qmfsc (polar s8qmfsc (dtr 0.0) swid))
	     );progn
	);if

        (if
	     (and
	       (= (<= 10 nshlr) T)
	       (= (atoi lsloc) 1)
	     );and
	     (progn
	      (setq s101 (polar s81 (dtr 0.0) (* 2 swid)))
	      (setq s101a (polar s101 (dtr 0.0) 3))
	      (setq s101b (polar s101 (dtr 90.0) 3))
	      (setq s103 (polar s83 (dtr 0.0) (* 2 swid)))
	      (setq s103a (polar s103 (dtr 180.0) 3))
	      (setq s103b (polar s103 (dtr 90.0) 3))
	      (setq s109 (polar s89 (dtr 0.0) (* 2 swid)))
	      (setq s109a (polar s109 (dtr 180.0) 3))
	      (setq s109b (polar s109 (dtr 270.0) 3))
	      (setq s107 (polar s87 (dtr 0.0) (* 2 swid)))
	      (setq s107a (polar s107 (dtr 0.0) 3))
	      (setq s107b (polar s107 (dtr 270.0) 3))
	      (setq s10qmnsa (polar s9qmnsa (dtr 0.0) swid))
	      (setq s10qmnsb (polar s9qmnsb (dtr 0.0) swid))
	      (setq s10qmnsc (polar s9qmnsc (dtr 0.0) swid))
	      (setq s10qmbtma (polar s9qmbtma (dtr 0.0) swid))
	      (setq s10qmbtmb (polar s9qmbtmb (dtr 0.0) swid))
	      (setq s10qmbtmc (polar s9qmbtmc (dtr 0.0) swid))
	      (setq s10qmfsa (polar s9qmfsa (dtr 0.0) swid))
	      (setq s10qmfsb (polar s9qmfsb (dtr 0.0) swid))
	      (setq s10qmfsc (polar s9qmfsc (dtr 0.0) swid))
	      (setq s10qmt2 (polar s8qmt2 (dtr 0.0) (* swid 2)))
	      (setq s10qmt2a (polar s8qmt2a (dtr 0.0) (* swid 2)))
	      (setq s10qmt2b (polar s8qmt2b (dtr 0.0) (* swid 2)))
	      (setq s10qmt2c (polar s8qmt2c (dtr 0.0) (* swid 2)))
	     );progn
	);if

        (if
	     (and
	       (= (<= 11 nshlr) T)
	       (= (atoi lsloc) 1)
	     );and
	     (progn
	      (setq s111 (polar s91 (dtr 0.0) (* 2 swid)))
	      (setq s111a (polar s111 (dtr 0.0) 3))
	      (setq s111b (polar s111 (dtr 90.0) 3))
	      (setq s113 (polar s93 (dtr 0.0) (* 2 swid)))
	      (setq s113a (polar s113 (dtr 180.0) 3))
	      (setq s113b (polar s113 (dtr 90.0) 3))
	      (setq s119 (polar s99 (dtr 0.0) (* 2 swid)))
	      (setq s119a (polar s119 (dtr 180.0) 3))
	      (setq s119b (polar s119 (dtr 270.0) 3))
	      (setq s117 (polar s97 (dtr 0.0) (* 2 swid)))
	      (setq s117a (polar s117 (dtr 0.0) 3))
	      (setq s117b (polar s117 (dtr 270.0) 3))
	      (setq s11qmt1 (polar s9qmt1 (dtr 0.0) (* swid 2)))
	      (setq s11qmt1a (polar s9qmt1a (dtr 0.0) (* swid 2)))
	      (setq s11qmt1b (polar s9qmt1b (dtr 0.0) (* swid 2)))
	      (setq s11qmt1c (polar s9qmt1c (dtr 0.0) (* swid 2)))
	      (setq s11qmnsa (polar s10qmnsa (dtr 0.0) swid))
	      (setq s11qmnsb (polar s10qmnsb (dtr 0.0) swid))
	      (setq s11qmnsc (polar s10qmnsc (dtr 0.0) swid))
	      (setq s11qmbtma (polar s10qmbtma (dtr 0.0) swid))
	      (setq s11qmbtmb (polar s10qmbtmb (dtr 0.0) swid))
	      (setq s11qmbtmc (polar s10qmbtmc (dtr 0.0) swid))
	      (setq s11qmfsa (polar s10qmfsa (dtr 0.0) swid))
	      (setq s11qmfsb (polar s10qmfsb (dtr 0.0) swid))
	      (setq s11qmfsc (polar s10qmfsc (dtr 0.0) swid))
	     );progn
	);if

        (if
	     (and
	       (= (<= 12 nshlr) T)
	       (= (atoi lsloc) 1)
	     );and
	     (progn
	      (setq s121 (polar s101 (dtr 0.0) (* 2 swid)))
	      (setq s121a (polar s121 (dtr 0.0) 3))
	      (setq s121b (polar s121 (dtr 90.0) 3))
	      (setq s123 (polar s103 (dtr 0.0) (* 2 swid)))
	      (setq s123a (polar s123 (dtr 180.0) 3))
	      (setq s123b (polar s123 (dtr 90.0) 3))
	      (setq s129 (polar s109 (dtr 0.0) (* 2 swid)))
	      (setq s129a (polar s129 (dtr 180.0) 3))
	      (setq s129b (polar s129 (dtr 270.0) 3))
	      (setq s127 (polar s107 (dtr 0.0) (* 2 swid)))
	      (setq s127a (polar s127 (dtr 0.0) 3))
	      (setq s127b (polar s127 (dtr 270.0) 3))
	      (setq s12qmnsa (polar s11qmnsa (dtr 0.0) swid))
	      (setq s12qmnsb (polar s11qmnsb (dtr 0.0) swid))
	      (setq s12qmnsc (polar s11qmnsc (dtr 0.0) swid))
	      (setq s12qmbtma (polar s11qmbtma (dtr 0.0) swid))
	      (setq s12qmbtmb (polar s11qmbtmb (dtr 0.0) swid))
	      (setq s12qmbtmc (polar s11qmbtmc (dtr 0.0) swid))
	      (setq s12qmfsa (polar s11qmfsa (dtr 0.0) swid))
	      (setq s12qmfsb (polar s11qmfsb (dtr 0.0) swid))
	      (setq s12qmfsc (polar s11qmfsc (dtr 0.0) swid))
	      (setq s12qmt2 (polar s10qmt2 (dtr 0.0) (* swid 2)))
	      (setq s12qmt2a (polar s10qmt2a (dtr 0.0) (* swid 2)))
	      (setq s12qmt2b (polar s10qmt2b (dtr 0.0) (* swid 2)))
	      (setq s12qmt2c (polar s10qmt2c (dtr 0.0) (* swid 2)))
	     );progn
	);if

        (if
	     (and
	       (= (<= 13 nshlr) T)
	       (= (atoi lsloc) 1)
	     );and
	     (progn
	      (setq s131 (polar s111 (dtr 0.0) (* 2 swid)))
	      (setq s131a (polar s131 (dtr 0.0) 3))
	      (setq s131b (polar s131 (dtr 90.0) 3))
	      (setq s133 (polar s113 (dtr 0.0) (* 2 swid)))
	      (setq s133a (polar s133 (dtr 180.0) 3))
	      (setq s133b (polar s133 (dtr 90.0) 3))
	      (setq s139 (polar s119 (dtr 0.0) (* 2 swid)))
	      (setq s139a (polar s139 (dtr 180.0) 3))
	      (setq s139b (polar s139 (dtr 270.0) 3))
	      (setq s137 (polar s117 (dtr 0.0) (* 2 swid)))
	      (setq s137a (polar s137 (dtr 0.0) 3))
	      (setq s137b (polar s137 (dtr 270.0) 3))
	      (setq s13qmt1 (polar s11qmt1 (dtr 0.0) (* swid 2)))
	      (setq s13qmt1a (polar s11qmt1a (dtr 0.0) (* swid 2)))
	      (setq s13qmt1b (polar s11qmt1b (dtr 0.0) (* swid 2)))
	      (setq s13qmt1c (polar s11qmt1c (dtr 0.0) (* swid 2)))
	      (setq s13qmnsa (polar s12qmnsa (dtr 0.0) swid))
	      (setq s13qmnsb (polar s12qmnsb (dtr 0.0) swid))
	      (setq s13qmnsc (polar s12qmnsc (dtr 0.0) swid))
	      (setq s13qmbtma (polar s12qmbtma (dtr 0.0) swid))
	      (setq s13qmbtmb (polar s12qmbtmb (dtr 0.0) swid))
	      (setq s13qmbtmc (polar s12qmbtmc (dtr 0.0) swid))
	      (setq s13qmfsa (polar s12qmfsa (dtr 0.0) swid))
	      (setq s13qmfsb (polar s12qmfsb (dtr 0.0) swid))
	      (setq s13qmfsc (polar s12qmfsc (dtr 0.0) swid))
	     );progn
	);if

        (if
	     (and
	       (= (<= 14 nshlr) T)
	       (= (atoi lsloc) 1)
	     );and
	     (progn
	      (setq s141 (polar s121 (dtr 0.0) (* 2 swid)))
	      (setq s141a (polar s141 (dtr 0.0) 3))
	      (setq s141b (polar s141 (dtr 90.0) 3))
	      (setq s143 (polar s123 (dtr 0.0) (* 2 swid)))
	      (setq s143a (polar s143 (dtr 180.0) 3))
	      (setq s143b (polar s143 (dtr 90.0) 3))
	      (setq s149 (polar s129 (dtr 0.0) (* 2 swid)))
	      (setq s149a (polar s149 (dtr 180.0) 3))
	      (setq s149b (polar s149 (dtr 270.0) 3))
	      (setq s147 (polar s127 (dtr 0.0) (* 2 swid)))
	      (setq s147a (polar s147 (dtr 0.0) 3))
	      (setq s147b (polar s147 (dtr 270.0) 3))
	      (setq s14qmnsa (polar s13qmnsa (dtr 0.0) swid))
	      (setq s14qmnsb (polar s13qmnsb (dtr 0.0) swid))
	      (setq s14qmnsc (polar s13qmnsc (dtr 0.0) swid))
	      (setq s14qmbtma (polar s13qmbtma (dtr 0.0) swid))
	      (setq s14qmbtmb (polar s13qmbtmb (dtr 0.0) swid))
	      (setq s14qmbtmc (polar s13qmbtmc (dtr 0.0) swid))
	      (setq s14qmfsa (polar s13qmfsa (dtr 0.0) swid))
	      (setq s14qmfsb (polar s13qmfsb (dtr 0.0) swid))
	      (setq s14qmfsc (polar s13qmfsc (dtr 0.0) swid))
	      (setq s14qmt2 (polar s12qmt2 (dtr 0.0) (* swid 2)))
	      (setq s14qmt2a (polar s12qmt2a (dtr 0.0) (* swid 2)))
	      (setq s14qmt2b (polar s12qmt2b (dtr 0.0) (* swid 2)))
	      (setq s14qmt2c (polar s12qmt2c (dtr 0.0) (* swid 2)))
	     );progn
	);if

        (if
	     (and
	       (= (<= 15 nshlr) T)
	       (= (atoi lsloc) 1)
	     );and
	     (progn
	      (setq s151 (polar s131 (dtr 0.0) (* 2 swid)))
	      (setq s151a (polar s151 (dtr 0.0) 3))
	      (setq s151b (polar s151 (dtr 90.0) 3))
	      (setq s153 (polar s133 (dtr 0.0) (* 2 swid)))
	      (setq s153a (polar s153 (dtr 180.0) 3))
	      (setq s153b (polar s153 (dtr 90.0) 3))
	      (setq s159 (polar s139 (dtr 0.0) (* 2 swid)))
	      (setq s159a (polar s159 (dtr 180.0) 3))
	      (setq s159b (polar s159 (dtr 270.0) 3))
	      (setq s157 (polar s137 (dtr 0.0) (* 2 swid)))
	      (setq s157a (polar s157 (dtr 0.0) 3))
	      (setq s157b (polar s157 (dtr 270.0) 3))
	      (setq s15qmt1 (polar s13qmt1 (dtr 0.0) (* swid 2)))
	      (setq s15qmt1a (polar s13qmt1a (dtr 0.0) (* swid 2)))
	      (setq s15qmt1b (polar s13qmt1b (dtr 0.0) (* swid 2)))
	      (setq s15qmt1c (polar s13qmt1c (dtr 0.0) (* swid 2)))
	      (setq s15qmnsa (polar s14qmnsa (dtr 0.0) swid))
	      (setq s15qmnsb (polar s14qmnsb (dtr 0.0) swid))
	      (setq s15qmnsc (polar s14qmnsc (dtr 0.0) swid))
	      (setq s15qmbtma (polar s14qmbtma (dtr 0.0) swid))
	      (setq s15qmbtmb (polar s14qmbtmb (dtr 0.0) swid))
	      (setq s15qmbtmc (polar s14qmbtmc (dtr 0.0) swid))
	      (setq s15qmfsa (polar s14qmfsa (dtr 0.0) swid))
	      (setq s15qmfsb (polar s14qmfsb (dtr 0.0) swid))
	      (setq s15qmfsc (polar s14qmfsc (dtr 0.0) swid))
	     );progn
	);if

  	(if
	     (and
	       (= (<= 16 nshlr) T)
	       (= (atoi lsloc) 1)
	     );and
	     (progn
	      (setq s161 (polar s141 (dtr 0.0) (* 2 swid)))
	      (setq s161a (polar s161 (dtr 0.0) 3))
	      (setq s161b (polar s161 (dtr 90.0) 3))
	      (setq s163 (polar s143 (dtr 0.0) (* 2 swid)))
	      (setq s163a (polar s163 (dtr 180.0) 3))
	      (setq s163b (polar s163 (dtr 90.0) 3))
	      (setq s169 (polar s149 (dtr 0.0) (* 2 swid)))
	      (setq s169a (polar s169 (dtr 180.0) 3))
	      (setq s169b (polar s169 (dtr 270.0) 3))
	      (setq s167 (polar s147 (dtr 0.0) (* 2 swid)))
	      (setq s167a (polar s167 (dtr 0.0) 3))
	      (setq s167b (polar s167 (dtr 270.0) 3))
	      (setq s16qmnsa (polar s15qmnsa (dtr 0.0) swid))
	      (setq s16qmnsb (polar s15qmnsb (dtr 0.0) swid))
	      (setq s16qmnsc (polar s15qmnsc (dtr 0.0) swid))
	      (setq s16qmbtma (polar s15qmbtma (dtr 0.0) swid))
	      (setq s16qmbtmb (polar s15qmbtmb (dtr 0.0) swid))
	      (setq s16qmbtmc (polar s15qmbtmc (dtr 0.0) swid))
	      (setq s16qmfsa (polar s15qmfsa (dtr 0.0) swid))
	      (setq s16qmfsb (polar s15qmfsb (dtr 0.0) swid))
	      (setq s16qmfsc (polar s15qmfsc (dtr 0.0) swid))
	      (setq s16qmt2 (polar s14qmt2 (dtr 0.0) (* swid 2)))
	      (setq s16qmt2a (polar s14qmt2a (dtr 0.0) (* swid 2)))
	      (setq s16qmt2b (polar s14qmt2b (dtr 0.0) (* swid 2)))
	      (setq s16qmt2c (polar s14qmt2c (dtr 0.0) (* swid 2)))
	     );progn
	);if

    	(if
	     (and
	       (= (<= 17 nshlr) T)
	       (= (atoi lsloc) 1)
	     );and
	     (progn
	      (setq s171 (polar s151 (dtr 0.0) (* 2 swid)))
	      (setq s171a (polar s171 (dtr 0.0) 3))
	      (setq s171b (polar s171 (dtr 90.0) 3))
	      (setq s173 (polar s153 (dtr 0.0) (* 2 swid)))
	      (setq s173a (polar s173 (dtr 180.0) 3))
	      (setq s173b (polar s173 (dtr 90.0) 3))
	      (setq s179 (polar s159 (dtr 0.0) (* 2 swid)))
	      (setq s179a (polar s179 (dtr 180.0) 3))
	      (setq s179b (polar s179 (dtr 270.0) 3))
	      (setq s177 (polar s157 (dtr 0.0) (* 2 swid)))
	      (setq s177a (polar s177 (dtr 0.0) 3))
	      (setq s177b (polar s177 (dtr 270.0) 3))
	      (setq s17qmt1 (polar s15qmt1 (dtr 0.0) (* swid 2)))
	      (setq s17qmt1a (polar s15qmt1a (dtr 0.0) (* swid 2)))
	      (setq s17qmt1b (polar s15qmt1b (dtr 0.0) (* swid 2)))
	      (setq s17qmt1c (polar s15qmt1c (dtr 0.0) (* swid 2)))
	      (setq s17qmnsa (polar s16qmnsa (dtr 0.0) swid))
	      (setq s17qmnsb (polar s16qmnsb (dtr 0.0) swid))
	      (setq s17qmnsc (polar s16qmnsc (dtr 0.0) swid))
	      (setq s17qmbtma (polar s16qmbtma (dtr 0.0) swid))
	      (setq s17qmbtmb (polar s16qmbtmb (dtr 0.0) swid))
	      (setq s17qmbtmc (polar s16qmbtmc (dtr 0.0) swid))
	      (setq s17qmfsa (polar s16qmfsa (dtr 0.0) swid))
	      (setq s17qmfsb (polar s16qmfsb (dtr 0.0) swid))
	      (setq s17qmfsc (polar s16qmfsc (dtr 0.0) swid))
	     );progn
	);if

  	(if
	     (and
	       (= (<= 18 nshlr) T)
	       (= (atoi lsloc) 1)
	     );and
	     (progn
	      (setq s181 (polar s161 (dtr 0.0) (* 2 swid)))
	      (setq s181a (polar s181 (dtr 0.0) 3))
	      (setq s181b (polar s181 (dtr 90.0) 3))
	      (setq s183 (polar s163 (dtr 0.0) (* 2 swid)))
	      (setq s183a (polar s183 (dtr 180.0) 3))
	      (setq s183b (polar s183 (dtr 90.0) 3))
	      (setq s189 (polar s169 (dtr 0.0) (* 2 swid)))
	      (setq s189a (polar s189 (dtr 180.0) 3))
	      (setq s189b (polar s189 (dtr 270.0) 3))
	      (setq s187 (polar s167 (dtr 0.0) (* 2 swid)))
	      (setq s187a (polar s187 (dtr 0.0) 3))
	      (setq s187b (polar s187 (dtr 270.0) 3))
	      (setq s18qmnsa (polar s17qmnsa (dtr 0.0) swid))
	      (setq s18qmnsb (polar s17qmnsb (dtr 0.0) swid))
	      (setq s18qmnsc (polar s17qmnsc (dtr 0.0) swid))
	      (setq s18qmbtma (polar s17qmbtma (dtr 0.0) swid))
	      (setq s18qmbtmb (polar s17qmbtmb (dtr 0.0) swid))
	      (setq s18qmbtmc (polar s17qmbtmc (dtr 0.0) swid))
	      (setq s18qmfsa (polar s17qmfsa (dtr 0.0) swid))
	      (setq s18qmfsb (polar s17qmfsb (dtr 0.0) swid))
	      (setq s18qmfsc (polar s17qmfsc (dtr 0.0) swid))
	      (setq s18qmt2 (polar s16qmt2 (dtr 0.0) (* swid 2)))
	      (setq s18qmt2a (polar s16qmt2a (dtr 0.0) (* swid 2)))
	      (setq s18qmt2b (polar s16qmt2b (dtr 0.0) (* swid 2)))
	      (setq s18qmt2c (polar s16qmt2c (dtr 0.0) (* swid 2)))
	     );progn
	);if

    	(if
	     (and
	       (= (<= 19 nshlr) T)
	       (= (atoi lsloc) 1)
	     );and
	     (progn
	      (setq s191 (polar s171 (dtr 0.0) (* 2 swid)))
	      (setq s191a (polar s191 (dtr 0.0) 3))
	      (setq s191b (polar s191 (dtr 90.0) 3))
	      (setq s193 (polar s173 (dtr 0.0) (* 2 swid)))
	      (setq s193a (polar s193 (dtr 180.0) 3))
	      (setq s193b (polar s193 (dtr 90.0) 3))
	      (setq s199 (polar s179 (dtr 0.0) (* 2 swid)))
	      (setq s199a (polar s199 (dtr 180.0) 3))
	      (setq s199b (polar s199 (dtr 270.0) 3))
	      (setq s197 (polar s177 (dtr 0.0) (* 2 swid)))
	      (setq s197a (polar s197 (dtr 0.0) 3))
	      (setq s197b (polar s197 (dtr 270.0) 3))
	      (setq s19qmt1 (polar s17qmt1 (dtr 0.0) (* swid 2)))
	      (setq s19qmt1a (polar s17qmt1a (dtr 0.0) (* swid 2)))
	      (setq s19qmt1b (polar s17qmt1b (dtr 0.0) (* swid 2)))
	      (setq s19qmt1c (polar s17qmt1c (dtr 0.0) (* swid 2)))
	      (setq s19qmnsa (polar s18qmnsa (dtr 0.0) swid))
	      (setq s19qmnsb (polar s18qmnsb (dtr 0.0) swid))
	      (setq s19qmnsc (polar s18qmnsc (dtr 0.0) swid))
	      (setq s19qmbtma (polar s18qmbtma (dtr 0.0) swid))
	      (setq s19qmbtmb (polar s18qmbtmb (dtr 0.0) swid))
	      (setq s19qmbtmc (polar s18qmbtmc (dtr 0.0) swid))
	      (setq s19qmfsa (polar s18qmfsa (dtr 0.0) swid))
	      (setq s19qmfsb (polar s18qmfsb (dtr 0.0) swid))
	      (setq s19qmfsc (polar s18qmfsc (dtr 0.0) swid))
	     );progn
	);if

      	(if
	     (and
	       (= (<= 20 nshlr) T)
	       (= (atoi lsloc) 1)
	     );and
	     (progn
	      (setq s201 (polar s181 (dtr 0.0) (* 2 swid)))
	      (setq s201a (polar s201 (dtr 0.0) 3))
	      (setq s201b (polar s201 (dtr 90.0) 3))
	      (setq s203 (polar s183 (dtr 0.0) (* 2 swid)))
	      (setq s203a (polar s203 (dtr 180.0) 3))
	      (setq s203b (polar s203 (dtr 90.0) 3))
	      (setq s209 (polar s189 (dtr 0.0) (* 2 swid)))
	      (setq s209a (polar s209 (dtr 180.0) 3))
	      (setq s209b (polar s209 (dtr 270.0) 3))
	      (setq s207 (polar s187 (dtr 0.0) (* 2 swid)))
	      (setq s207a (polar s207 (dtr 0.0) 3))
	      (setq s207b (polar s207 (dtr 270.0) 3))
	      (setq s20qmnsa (polar s19qmnsa (dtr 0.0) swid))
	      (setq s20qmnsb (polar s19qmnsb (dtr 0.0) swid))
	      (setq s20qmnsc (polar s19qmnsc (dtr 0.0) swid))
	      (setq s20qmbtma (polar s19qmbtma (dtr 0.0) swid))
	      (setq s20qmbtmb (polar s19qmbtmb (dtr 0.0) swid))
	      (setq s20qmbtmc (polar s19qmbtmc (dtr 0.0) swid))
	      (setq s20qmfsa (polar s19qmfsa (dtr 0.0) swid))
	      (setq s20qmfsb (polar s19qmfsb (dtr 0.0) swid))
	      (setq s20qmfsc (polar s19qmfsc (dtr 0.0) swid))
	      (setq s20qmt2 (polar s18qmt2 (dtr 0.0) (* swid 2)))
	      (setq s20qmt2a (polar s18qmt2a (dtr 0.0) (* swid 2)))
	      (setq s20qmt2b (polar s18qmt2b (dtr 0.0) (* swid 2)))
	      (setq s20qmt2c (polar s18qmt2c (dtr 0.0) (* swid 2)))
	     );progn
	);if

;Nozzle Locations
;;;  	nzm1
;;;  	nzs1
;;;	nzr1
;;;  	nzt1
;;;  	nzd1
;;;  	nzl1
;;;  	nzdtm1
	         

(princ));defun

;#######################################################;

; Add this new function after the savevars function and before C:slayout
(defun display_variables ()
  ; Define the list of main variables
  (setq var_list '(
    prjn dwgn revn hdtyp hddsgn shld pltt nshlr lsof lsloc slen
    shlws shlwns swid ushla ushlaw ushlb ushlbw ushlc ushlcw
  ))
  ; Dynamically add fitting variables (nzm1 to nzdtm20)
  (setq i 1)
  (while (<= i 20)
    (setq var_list (append var_list (list
      (read (strcat "nzm" (itoa i)))
      (read (strcat "nzs" (itoa i)))
      (read (strcat "nzr" (itoa i)))
      (read (strcat "nzt" (itoa i)))
      (read (strcat "nzd" (itoa i)))
      (read (strcat "nzl" (itoa i)))
      (read (strcat "nzdtm" (itoa i)))
    )))
    (setq i (1+ i))
  )
  ; Build the text content string
  (setq text_content "")
  (foreach var var_list
    (if (boundp var)
      (setq text_content (strcat text_content (vl-symbol-name var) " = " (vl-princ-to-string (eval var)) "\\P"))
    )
  )
  ; Create an mtext object at (0,0,0) with height 10 and width 500
  (command "mtext" '(0 0 0) "J" "TL" "H" 10 "W" 500 text_content "")
)



;#######################################################;

(defun C:slayout ()
	 
	(setq slayout (load_dialog "slayout.dcl"))
	 
	     (if (not (new_dialog "slayout" slayout))
		 (exit )
	     );if

	(action_tile "accept" "(setq ddiag 1)(savevars)(done_dialog)");action tile
	(action_tile "cancel" "(setq ddiag 2)(done_dialog)");action tile
	
	(start_dialog)
  
	(if (= ddiag 1)
	  (unload_dialog slayout));if

	(princ)
  
;;;	(command "layer" "s" "0" "")

	(command "pline" s11 s13 s19 s17 s11 "")
  	(command "pline" s21 s23 s29 s27 s21 "")
  	(command "pline" s31 s33 s39 s37 s31 "")
  	(command "pline" s41 s43 s49 s47 s41 "")
  	(command "pline" s51 s53 s59 s57 s51 "")
  	(command "pline" s61 s63 s69 s67 s61 "")
  	(command "pline" s71 s73 s79 s77 s71 "")
  	(command "pline" s81 s83 s89 s87 s81 "")
  	(command "pline" s91 s93 s99 s97 s91 "")
  	(command "pline" s101 s103 s109 s107 s101 "")
  	(command "pline" s111 s113 s119 s117 s111 "")
  	(command "pline" s121 s123 s129 s127 s121 "")
  	(command "pline" s131 s133 s139 s137 s131 "")
  	(command "pline" s141 s143 s149 s147 s141 "")
  	(command "pline" s151 s153 s159 s157 s151 "")
  	(command "pline" s161 s163 s169 s167 s161 "")
  	(command "pline" s171 s173 s179 s177 s171 "")
  	(command "pline" s181 s183 s189 s187 s181 "")
  	(command "pline" s191 s193 s199 s197 s191 "")
  	(command "pline" s201 s203 s209 s207 s201 "")
  	
  	(command "layer" "n" "Marker" "c" "red" "Marker" "")
  	(command "layer" "s" "Marker" "")
  	(command "pline" s11a s11 s11b "")
  	(command "pline" s13a s13 s13b "")
  	(command "pline" s19a s19 s19b "")
  	(command "pline" s17a s17 s17b "")
  	(command "pline" s21a s21 s21b "")
  	(command "pline" s23a s23 s23b "")
  	(command "pline" s29a s29 s29b "")
  	(command "pline" s27a s27 s27b "")
  	(command "pline" s31a s31 s31b "")
  	(command "pline" s33a s33 s33b "")
  	(command "pline" s39a s39 s39b "")
  	(command "pline" s37a s37 s37b "")
  	(command "pline" s41a s41 s41b "")
  	(command "pline" s43a s43 s43b "")
  	(command "pline" s49a s49 s49b "")
  	(command "pline" s47a s47 s47b "")
  	(command "pline" s51a s51 s51b "")
  	(command "pline" s53a s53 s53b "")
  	(command "pline" s59a s59 s59b "")
  	(command "pline" s57a s57 s57b "")
 	(command "pline" s61a s61 s61b "")
  	(command "pline" s63a s63 s63b "")
  	(command "pline" s69a s69 s69b "")
  	(command "pline" s67a s67 s67b "")
  	(command "pline" s71a s71 s71b "")
  	(command "pline" s73a s73 s73b "")
  	(command "pline" s79a s79 s79b "")
  	(command "pline" s77a s77 s77b "")
 	(command "pline" s81a s81 s81b "")
  	(command "pline" s83a s83 s83b "")
  	(command "pline" s89a s89 s89b "")
  	(command "pline" s87a s87 s87b "")
  	(command "pline" s91a s91 s91b "")
  	(command "pline" s93a s93 s93b "")
  	(command "pline" s99a s99 s99b "")
  	(command "pline" s97a s97 s97b "")
  	(command "pline" s101a s101 s101b "")
  	(command "pline" s103a s103 s103b "")
  	(command "pline" s109a s109 s109b "")
  	(command "pline" s107a s107 s107b "")
  	(command "pline" s111a s111 s111b "")
  	(command "pline" s113a s113 s113b "")
  	(command "pline" s119a s119 s119b "")
  	(command "pline" s117a s117 s117b "")
  	(command "pline" s121a s121 s121b "")
  	(command "pline" s123a s123 s123b "")
  	(command "pline" s129a s129 s129b "")
  	(command "pline" s127a s127 s127b "")
  	(command "pline" s131a s131 s131b "")
  	(command "pline" s133a s133 s133b "")
  	(command "pline" s139a s139 s139b "")
  	(command "pline" s137a s137 s137b "")
  	(command "pline" s141a s141 s141b "")
  	(command "pline" s143a s143 s143b "")
  	(command "pline" s149a s149 s149b "")
  	(command "pline" s147a s147 s147b "")
  	(command "pline" s151a s151 s151b "")
  	(command "pline" s153a s153 s153b "")
  	(command "pline" s159a s159 s159b "")
  	(command "pline" s157a s157 s157b "")
  	(command "pline" s161a s161 s161b "")
  	(command "pline" s163a s163 s163b "")
  	(command "pline" s169a s169 s169b "")
  	(command "pline" s167a s167 s167b "")
  	(command "pline" s171a s171 s171b "")
  	(command "pline" s173a s173 s173b "")
  	(command "pline" s179a s179 s179b "")
  	(command "pline" s177a s177 s177b "")
  	(command "pline" s181a s181 s181b "")
  	(command "pline" s183a s183 s183b "")
  	(command "pline" s189a s189 s189b "")
  	(command "pline" s187a s187 s187b "")
  	(command "pline" s191a s191 s191b "")
  	(command "pline" s193a s193 s193b "")
  	(command "pline" s199a s199 s199b "")
  	(command "pline" s197a s197 s197b "")
  	(command "pline" s201a s201 s201b "")
  	(command "pline" s203a s203 s203b "")
  	(command "pline" s209a s209 s209b "")
  	(command "pline" s207a s207 s207b "")
 
  	(command "pline" qmt1 s1qmt1a "")
  	(command "pline" s1qmt1b s1qmt1c "")
  	(command "pline" qmfs s1qmfsa "")
  	(command "pline" s1qmfsb s1qmfsc "")
  	(command "pline" qmbtm s1qmbtma "")
  	(command "pline" s1qmbtmb s1qmbtmc "")
  	(command "pline" qmns s1qmnsa "")
  	(command "pline" s1qmnsb s1qmnsc "")
  	(command "pline" qmt2 s1qmt2a "")
  	(command "pline" s1qmt2b s1qmt2c "")

  	(command "pline" s2qmt1 s2qmt1a "")
  	(command "pline" s2qmt1b s2qmt1c "")
  	(command "pline" s1qmfsc s2qmfsa "")
  	(command "pline" s2qmfsb s2qmfsc "")
  	(command "pline" s1qmbtmc s2qmbtma "")
  	(command "pline" s2qmbtmb s2qmbtmc "")
  	(command "pline" s1qmnsc s2qmnsa "")
  	(command "pline" s2qmnsb s2qmnsc "")
  	(command "pline" s2qmt2 s2qmt2a "")
  	(command "pline" s2qmt2b s2qmt2c "")

  	(command "pline" s3qmt1 s3qmt1a "")
  	(command "pline" s3qmt1b s3qmt1c "")
  	(command "pline" s2qmfsc s3qmfsa "")
  	(command "pline" s3qmfsb s3qmfsc "")
  	(command "pline" s2qmbtmc s3qmbtma "")
  	(command "pline" s3qmbtmb s3qmbtmc "")
  	(command "pline" s2qmnsc s3qmnsa "")
  	(command "pline" s3qmnsb s3qmnsc "")
  	(command "pline" s3qmt2 s3qmt2a "")
  	(command "pline" s3qmt2b s3qmt2c "")

  	(command "pline" s4qmt1 s4qmt1a "")
	(command "pline" s4qmt1b s4qmt1c "")
	(command "pline" s3qmfsc s4qmfsa "")
	(command "pline" s4qmfsb s4qmfsc "")
	(command "pline" s3qmbtmc s4qmbtma "")
	(command "pline" s4qmbtmb s4qmbtmc "")
	(command "pline" s3qmnsc s4qmnsa "")
	(command "pline" s4qmnsb s4qmnsc "")
	(command "pline" s4qmt2 s4qmt2a "")
	(command "pline" s4qmt2b s4qmt2c "")
  
	(command "pline" s5qmt1 s5qmt1a "")
	(command "pline" s5qmt1b s5qmt1c "")
	(command "pline" s4qmfsc s5qmfsa "")
	(command "pline" s5qmfsb s5qmfsc "")
	(command "pline" s4qmbtmc s5qmbtma "")
	(command "pline" s5qmbtmb s5qmbtmc "")
	(command "pline" s4qmnsc s5qmnsa "")
	(command "pline" s5qmnsb s5qmnsc "")
	(command "pline" s5qmt2 s5qmt2a "")
	(command "pline" s5qmt2b s5qmt2c "")
  
	(command "pline" s6qmt1 s6qmt1a "")
	(command "pline" s6qmt1b s6qmt1c "")
	(command "pline" s5qmfsc s6qmfsa "")
	(command "pline" s6qmfsb s6qmfsc "")
	(command "pline" s5qmbtmc s6qmbtma "")
	(command "pline" s6qmbtmb s6qmbtmc "")
	(command "pline" s5qmnsc s6qmnsa "")
	(command "pline" s6qmnsb s6qmnsc "")
	(command "pline" s6qmt2 s6qmt2a "")
	(command "pline" s6qmt2b s6qmt2c "")
  
	(command "pline" s7qmt1 s7qmt1a "")
	(command "pline" s7qmt1b s7qmt1c "")
	(command "pline" s6qmfsc s7qmfsa "")
	(command "pline" s7qmfsb s7qmfsc "")
	(command "pline" s6qmbtmc s7qmbtma "")
	(command "pline" s7qmbtmb s7qmbtmc "")
	(command "pline" s6qmnsc s7qmnsa "")
	(command "pline" s7qmnsb s7qmnsc "")
	(command "pline" s7qmt2 s7qmt2a "")
	(command "pline" s7qmt2b s7qmt2c "")
  
	(command "pline" s8qmt10 s8qmt1a "")
	(command "pline" s8qmt1b s8qmt1c "")
	(command "pline" s7qmfsc s8qmfsa "")
	(command "pline" s8qmfsb s8qmfsc "")
	(command "pline" s7qmbtmc s8qmbtma "")
	(command "pline" s8qmbtmb s8qmbtmc "")
	(command "pline" s7qmnsc s8qmnsa "")
	(command "pline" s8qmnsb s8qmnsc "")
	(command "pline" s8qmt2 s8qmt2a "")
	(command "pline" s8qmt2b s8qmt2c "")
  
	(command "pline" s9qmt1 s9qmt1a "")
	(command "pline" s9qmt1b s9qmt1c "")
	(command "pline" s8qmfsc s9qmfsa "")
	(command "pline" s9qmfsb s9qmfsc "")
	(command "pline" s8qmbtmc s9qmbtma "")
	(command "pline" s9qmbtmb s9qmbtmc "")
	(command "pline" s8qmnsc s9qmnsa "")
	(command "pline" s9qmnsb s9qmnsc "")
	(command "pline" s9qmt2 s9qmt2a "")
	(command "pline" s9qmt2b s9qmt2c "")
  
	(command "pline" s10qmt1 s10qmt1a "")
	(command "pline" s10qmt1b s10qmt1c "")
	(command "pline" s9qmfsc s10qmfsa "")
	(command "pline" s10qmfsb s10qmfsc "")
	(command "pline" s9qmbtmc s10qmbtma "")
	(command "pline" s10qmbtmb s10qmbtmc "")
	(command "pline" s9qmnsc s10qmnsa "")
	(command "pline" s10qmnsb s10qmnsc "")
	(command "pline" s10qmt2 s10qmt2a "")
	(command "pline" s10qmt2b s10qmt2c "")
  
	(command "pline" s11qmt1 s11qmt1a "")
	(command "pline" s11qmt1b s11qmt1c "")
	(command "pline" s10qmfc s11qmfsa "")
	(command "pline" s11qmfsb s11qmfsc "")
	(command "pline" s10qmbtmc s11qmbtma "")
	(command "pline" s11qmbtmb s11qmbtmc "")
	(command "pline" s10qmnsc s11qmnsa "")
	(command "pline" s11qmnsb s11qmnsc "")
	(command "pline" s11qmt2 s11qmt2a "")
	(command "pline" s11qmt2b s11qmt2c "")
  
	(command "pline" s12qmt1 s12qmt1a "")
	(command "pline" s12qmt1b s12qmt1c "")
	(command "pline" s11qmfsc s12qmfsa "")
	(command "pline" s12qmfsb s12qmfsc "")
	(command "pline" s11qmbtmc s12qmbtma "")
	(command "pline" s12qmbtmb s12qmbtmc "")
	(command "pline" s11qmnsc s12qmnsa "")
	(command "pline" s12qmnsb s12qmnsc "")
	(command "pline" s12qmt2 s12qmt2a "")
	(command "pline" s12qmt2b s12qmt2c "")
  
	(command "pline" s13qmt1 s13qmt1a "")
	(command "pline" s13qmt1b s13qmt1c "")
	(command "pline" s12qmfsc s13qmfsa "")
	(command "pline" s13qmfsb s13qmfsc "")
	(command "pline" s12qmbtmc s13qmbtma "")
	(command "pline" s13qmbtmb s13qmbtmc "")
	(command "pline" s12qmnsc s13qmnsa "")
	(command "pline" s13qmnsb s13qmnsc "")
	(command "pline" s13qmt2 s13qmt2a "")
	(command "pline" s13qmt2b s13qmt2c "")
  
	(command "pline" s14qmt1 s14qmt1a "")
	(command "pline" s14qmt1b s14qmt1c "")
	(command "pline" s13qmfsc s14qmfsa "")
	(command "pline" s14qmfsb s14qmfsc "")
	(command "pline" s13qmbtmc s14qmbtma "")
	(command "pline" s14qmbtmb s14qmbtmc "")
	(command "pline" s13qmnsc s14qmnsa "")
	(command "pline" s14qmnsb s14qmnsc "")
	(command "pline" s14qmt2 s14qmt2a "")
	(command "pline" s14qmt2b s14qmt2c "")
  
	(command "pline" s15qmt1 s15qmt1a "")
	(command "pline" s15qmt1b s15qmt1c "")
	(command "pline" s14qmfsc s15qmfsa "")
	(command "pline" s15qmfsb s15qmfsc "")
	(command "pline" s14qmbtmc s15qmbtma "")
	(command "pline" s15qmbtmb s15qmbtmc "")
	(command "pline" s14qmnsc s15qmnsa "")
	(command "pline" s15qmnsb s15qmnsc "")
	(command "pline" s15qmt2 s15qmt2a "")
	(command "pline" s15qmt2b s15qmt2c "")
  
	(command "pline" s16qmt1 s16qmt1a "")
	(command "pline" s16qmt1b s16qmt1c "")
	(command "pline" s15qmfsc s16qmfsa "")
	(command "pline" s16qmfsb s16qmfsc "")
	(command "pline" s15qmbtmc s16qmbtma "")
	(command "pline" s16qmbtmb s16qmbtmc "")
	(command "pline" s15qmnsc s16qmnsa "")
	(command "pline" s16qmnsb s16qmnsc "")
	(command "pline" s16qmt2 s16qmt2a "")
	(command "pline" s16qmt2b s16qmt2c "")
  
	(command "pline" s17qmt1 s17qmt1a "")
	(command "pline" s17qmt1b s17qmt1c "")
	(command "pline" s16qmfsc s17qmfsa "")
	(command "pline" s17qmfsb s17qmfsc "")
	(command "pline" s16qmbtmc s17qmbtma "")
	(command "pline" s17qmbtmb s17qmbtmc "")
	(command "pline" s16qmnsc s17qmnsa "")
	(command "pline" s17qmnsb s17qmnsc "")
	(command "pline" s17qmt2 s17qmt2a "")
	(command "pline" s17qmt2b s17qmt2c "")
  
	(command "pline" s18qmt1 s18qmt1a "")
	(command "pline" s18qmt1b s18qmt1c "")
	(command "pline" s17qmfsc s18qmfsa "")
	(command "pline" s18qmfsb s18qmfsc "")
	(command "pline" s17qmbtmc s18qmbtma "")
	(command "pline" s18qmbtmb s18qmbtmc "")
	(command "pline" s17qmnsc s18qmnsa "")
	(command "pline" s18qmnsb s18qmnsc "")
	(command "pline" s18qmt2 s18qmt2a "")
	(command "pline" s18qmt2b s18qmt2c "")
  
	(command "pline" s19qmt1 s19qmt1a "")
	(command "pline" s19qmt1b s19qmt1c "")
	(command "pline" s18qmfsc s19qmfsa "")
	(command "pline" s19qmfsb s19qmfsc "")
	(command "pline" s18qmbtmc s19qmbtma "")
	(command "pline" s19qmbtmb s19qmbtmc "")
	(command "pline" s18qmnsc s19qmnsa "")
	(command "pline" s19qmnsb s19qmnsc "")
	(command "pline" s19qmt2 s19qmt2a "")
	(command "pline" s19qmt2b s19qmt2c "")
  
	(command "pline" s20qmt1 s20qmt1a "")
	(command "pline" s20qmt1b s20qmt1c "")
	(command "pline" s19qmfsc s20qmfsa "")
	(command "pline" s20qmfsb s20qmfsc "")
	(command "pline" s19qmbtmc s20qmbtma "")
	(command "pline" s20qmbtmb s20qmbtmc "")
	(command "pline" s19qmnsc s20qmnsa "")
	(command "pline" s20qmnsb s20qmnsc "")
	(command "pline" s20qmt2 s20qmt2a "")
	(command "pline" s20qmt2b s20qmt2c "")

 
  (command "zoom" "e")
  (display_variables) ; Add this line to display variables in the drawing
  (princ)

) ;defun
