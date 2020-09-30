<h1><a class="anchor" id="concept-for-using-hotmaps-for-district-cooling" href="#concept-for-using-hotmaps-for-district-cooling"><i class="fa fa-link"></i></a>Έννοια για τη χρήση Hotmaps για τηλεψύξη</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Πίνακας περιεχομένων</h2><ul><li> <a href="#in-a-glance">Με μια ματιά</a></li><li> <a href="#introduction">Εισαγωγή</a></li><li> <a href="#method">Μέθοδος</a><ul><li> <a href="#method_use-of-the-default-cooling-density-map-from-the-hotmaps-database">Χρήση του προεπιλεγμένου χάρτη πυκνότητας ψύξης από τη βάση δεδομένων Hotmaps</a></li><li> <a href="#method_use-of-the-cm-scale-heat-and-cool-density-maps-to-adapt-the-default-map">Χρήση των χαρτών CM - Scale heat and cool density για την προσαρμογή του προεπιλεγμένου χάρτη</a></li><li> <a href="#method_create-an-individual-bottom-up-cooling-demand-density-map-using-hotmaps-data-and-modules">Δημιουργήστε έναν μεμονωμένο χάρτη πυκνότητας ζήτησης ψύξης από κάτω προς τα πάνω χρησιμοποιώντας δεδομένα και ενότητες Hotmaps</a></li><li> <a href="#method_use-of-the-cm-district-heating-potential-areas-user-defined-thresholds-to-identify-potential-district-cooling-areas">Χρήση του CM - Περιοχές δυναμικής τηλεθέρμανσης: καθορισμένα από το χρήστη κατώτατα όρια για τον προσδιορισμό πιθανών περιοχών ψύξης περιοχής</a></li></ul></li><li> <a href="#references">βιβλιογραφικές αναφορές</a></li><li> <a href="#how-to-cite">Πώς να παραθέσω</a></li><li> <a href="#authors-and-reviewers">Συγγραφείς και κριτικοί</a></li><li> <a href="#license">Αδεια</a></li><li> <a href="#acknowledgement">Αναγνώριση</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> Με μια ματιά</h2><p> Αυτή η σελίδα στοχεύει να δείξει πώς να εφαρμόσετε την εργαλειοθήκη Hotmaps για την εκτέλεση προγραμματισμού ψύξης. Η πιλοτική περιοχή του Δήμου Aalborg θεωρείται ως υπόθεση μελέτης, καθώς αυτή η πόλη εργάζεται για τον προγραμματισμό της ψύξης της περιοχής. Η πιθανή εφαρμογή της βάσης δεδομένων Hotmaps και της εργαλειοθήκης αποδεικνύεται δείχνοντας τη χρήση διαφορετικών συνόλων δεδομένων και μονάδων υπολογισμού για τη διερεύνηση της ζήτησης ψύξης και της δυνατότητας τηλεψύξης στην πόλη.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Εισαγωγή</h2><p> Η βάση δεδομένων Hotmaps και η εργαλειοθήκη μπορούν να χρησιμοποιηθούν για προγραμματισμό ψύξης με τον ακόλουθο τρόπο:</p><ul><li> Χρησιμοποιήστε τον προεπιλεγμένο χάρτη πυκνότητας ζήτησης ψύξης για ανάλυση των δυνατοτήτων ψύξης περιοχής</li><li> Χρησιμοποιήστε τους χάρτες CM - κλίμακας θερμότητας και πυκνότητας ψύξης για να αυξήσετε / μειώσετε τη ζήτηση ψύξης στο προεπιλεγμένο επίπεδο, ώστε να ταιριάζει με άλλες εκτιμήσεις</li><li> Χρησιμοποιήστε τα δικά σας δεδομένα σχετικά με το απόθεμα κτιρίων στην περιοχή ανάλυσης μαζί με δεδομένα σχετικά με τη συγκεκριμένη ζήτηση ψύξης ανά τύπο κτιρίου από τη βάση δεδομένων Hotmaps και τη μονάδα υπολογισμού CM - Προσαρμοσμένοι χάρτες ακαθάριστης επιφάνειας δαπέδου και πυκνότητας ζήτησης θερμότητας για τη δημιουργία ζήτησης ψύξης από τη βάση χάρτης πυκνότητας για περαιτέρω χρήση</li><li> Χρησιμοποιήστε το CM - Δυνητικές Περιοχές Θέρμανσης Περιοχής: κατώφλια καθορισμένα από τον χρήστη για να προσδιορίσετε περιοχές που ενδέχεται να είναι ενδιαφέρουσες για ψύξη περιοχής</li></ul><p> Αυτά τα διαφορετικά βήματα εξηγούνται λεπτομερώς στις ακόλουθες ενότητες. Επιπλέον, αυτά απεικονίζονται στο παράδειγμα του δήμου Aalborg.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Μέθοδος</h2><h3><a class="anchor" id="use-of-the-default-cooling-density-map-from-the-hotmaps-database" href="#use-of-the-default-cooling-density-map-from-the-hotmaps-database"><i class="fa fa-link"></i></a> Χρήση του προεπιλεγμένου χάρτη πυκνότητας ψύξης από τη βάση δεδομένων Hotmaps</h3><p> Η βάση δεδομένων Hotmaps παρέχει έναν χάρτη πυκνότητας ζήτησης ψύξης για ολόκληρες χώρες της ΕΕ28 στο επίπεδο των 100 x 100 m. Αυτό το raster επίπεδο περιέχεται στην ηλεκτρονική <a href="https://www.hotmaps.eu">εργαλειοθήκη Hotmaps</a> καθώς και στο αποθετήριο δεδομένων στο gitlab. Στη συνέχεια εξηγείται πώς να προετοιμάσετε το χάρτη για χρήση σε CM - Περιοχές θέρμανσης τηλεθέρμανσης: καθορισμένα από τον χρήστη κατώτατα όρια.</p><h4><a class="anchor" id="create-an-account-for-the-hotmaps-toolbox." href="#create-an-account-for-the-hotmaps-toolbox."><i class="fa fa-link"></i></a> Δημιουργήστε έναν λογαριασμό για την εργαλειοθήκη Hotmaps.</h4><p> Μπορείτε να βρείτε μια περιγραφή της διαδικασίας για να το κάνετε στον παρακάτω <a href="/en/Introduction-to-user-interface">σύνδεσμο</a> .</p><h4><a class="anchor" id="download-a-selection-of-the-default-cooling-density-map-from-the-hotmaps-database" href="#download-a-selection-of-the-default-cooling-density-map-from-the-hotmaps-database"><i class="fa fa-link"></i></a> Κατεβάστε μια επιλογή του προεπιλεγμένου χάρτη πυκνότητας ψύξης από τη βάση δεδομένων Hotmaps</h4><p> Για να κατεβάσετε τον χάρτη πυκνότητας ψύξης (ή μια επιλογή του χάρτη) ως αρχείο raster και να το αποθηκεύσετε στον υπολογιστή σας, ακολουθήστε τα παρακάτω βήματα:</p><ul><li> Κάντε ζουμ στην τοποθεσία που θέλετε να αναλύσετε (π.χ. Aalborg).</li><li> Κάντε κλικ στο πλαίσιο οριοθέτησης που περιέχει την περιοχή ενδιαφέροντος (βεβαιωθείτε ότι παραμένετε στην κλίμακα «LAU2») ή επιλέξτε μια προσαρμοσμένη περιοχή σχεδιάζοντας τα όρια τοποθεσίας (βεβαιωθείτε ότι παραμένετε στην κλίμακα «Εκτάριο»). Σε αυτήν την περίπτωση, σχεδιάστε τα όρια γύρω από την περιοχή ενδιαφέροντος χρησιμοποιώντας το εργαλείο σχεδίασης:<img height="20" src="https://wiki.hotmaps.hevs.ch/en/District-Cooling/square_selection_icon.jpg" width="20"/> μπορείτε να επιλέξετε ανάμεσα σε ορθογώνιο, κυκλικό σχήμα ή ένα πολύγωνο. Στη συνέχεια, κάντε κλικ στο σχεδιαζόμενο πλαίσιο οριοθέτησης για να επιλέξετε την περιοχή.</li><li> Επιλέξτε την κατηγορία «Σύνολο πυκνότητας ψύξης» στον αριστερό πίνακα κάτω από το «Επίπεδα».</li><li> Κατεβάστε τον χάρτη πυκνότητας ψύξης ως αρχείο raster και αποθηκεύστε τον στον υπολογιστή σας για την τρέχουσα επιλεγμένη περιοχή κάνοντας κλικ στο σύμβολο «Λήψη επιλογής επιπέδου»<img height="20" src="https://wiki.hotmaps.hevs.ch/en/District-Cooling/logo_download_selection_1.jpg" width="20"/> κάτω από το επίπεδο «Σύνολο πυκνότητας ψύξης».</li></ul><h4><a class="anchor" id="upload-the-selected-cooling-demand-density-map-to-your-private-account" href="#upload-the-selected-cooling-demand-density-map-to-your-private-account"><i class="fa fa-link"></i></a> Ανεβάστε τον επιλεγμένο χάρτη πυκνότητας ζήτησης ψύξης στον ιδιωτικό σας λογαριασμό</h4><p> Για να ανεβάσετε τα δεδομένα ζήτησης ψύξης στην εργαλειοθήκη Hotmaps, ακολουθήστε τα παρακάτω βήματα:</p><ul><li> Αποεπιλέξτε όλα τα επίπεδα στο αριστερό πλαίσιο.</li><li> Συνδεθείτε στον λογαριασμό χρήστη και, στη συνέχεια, κάντε κλικ στο κουμπί «λογαριασμός».</li><li> Κάντε κλικ στο «Επιλογή αρχείων» στην κάτω δεξιά γωνία του παραθύρου του λογαριασμού και προχωρήστε στο φάκελο αποθήκευσης για να ανεβάσετε τα αρχεία σας.</li><li> Επιλέξτε το αρχείο raster για το &quot;Σύνολο ψυκτικής πυκνότητας&quot; που έχετε κατεβάσει παραπάνω (π.χ. &quot;cool_tot_curr_density.tif&quot;). Επιλέξτε τον τύπο αρχείου raster &quot;(Building) Σύνολο πυκνότητας θερμότητας&quot;, παρά τον τύπο στρώματος, στην πραγματικότητα, είναι &quot;Σύνολο πυκνότητας ψύξης&quot;. Με αυτόν τον τρόπο η πυκνότητα ψύξης μπορεί να χρησιμοποιηθεί στις ενότητες υπολογισμού για την εξέταση και αξιολόγηση των δυνατοτήτων ψύξης περιοχής.</li><li> Το μεταφορτωμένο επίπεδο θα εμφανιστεί στο επάνω μέρος του αριστερού πλαισίου επιπέδου και μπορεί να χρησιμοποιηθεί ως ενσωματωμένα επίπεδα.</li></ul><p> Τώρα μπορείτε να χρησιμοποιήσετε τον προσαρμοσμένο χάρτη πυκνότητας ζήτησης ψύξης από κάτω προς τα πάνω για τον προγραμματισμό της τηλεψύξης χρησιμοποιώντας το <a href="/en/CM-District-heating-potential-areas-user-defined-thresholds">CM - Περιοχές δυναμικής τηλεθέρμανσης: καθορισμένα από το χρήστη όρια</a> όπως περιγράφεται στο <a href="/en/District-Cooling#method_use-of-the-cm-district-heating-potential-areas-user-defined-thresholds-to-identify-potential-district-cooling-areas">τέταρτο βήμα</a> .</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h3><a class="anchor" id="use-of-the-cm---scale-heat-and-cool-density-maps-to-adapt-the-default-map" href="#use-of-the-cm---scale-heat-and-cool-density-maps-to-adapt-the-default-map"><i class="fa fa-link"></i></a> Χρήση των χαρτών CM - Scale heat and cool density για την προσαρμογή του προεπιλεγμένου χάρτη</h3><p> Αυτή η ενότητα κλιμακώνει το προεπιλεγμένο επίπεδο με έναν δεδομένο παράγοντα. Ο στόχος είναι να παρέχεται η δυνατότητα δημιουργίας στρώματος πυκνότητας ζήτησης θερμότητας ή κρύου με οποιαδήποτε συνολική τιμή. Π.χ. αν θέλετε να αυξήσετε τη ζήτηση ψύξης κατά 20%.</p><p> Για να κλιμακώσετε και να κατεβάσετε ένα επίπεδο χάρτη πυκνότητας ψύξης που θα χρησιμοποιηθεί για το CM - Περιοχές δυναμικής τηλεθέρμανσης: καθορισμένα από το χρήστη κατώτατα όρια, ακολουθήστε τα παρακάτω βήματα:</p><ul><li> Κάντε ζουμ στην τοποθεσία που θέλετε να αναλύσετε (π.χ. Aalborg).</li><li> Κάντε κλικ στο πλαίσιο οριοθέτησης που περιέχει την περιοχή ενδιαφέροντος. Βεβαιωθείτε ότι παραμένετε στην κλίμακα «LAU2».</li><li> Ή επιλέξτε μια προσαρμοσμένη περιοχή σχεδιάζοντας τα όρια της τοποθεσίας. Βεβαιωθείτε ότι παραμένετε στην κλίμακα «Εκτάριο».</li><li> Σχεδιάστε τα όρια γύρω από την περιοχή ενδιαφέροντος χρησιμοποιώντας το εργαλείο σχεδίασης<img height="20" src="https://wiki.hotmaps.hevs.ch/en/District-Cooling/square_selection_icon.jpg" width="20"/> . Μπορείτε να επιλέξετε μεταξύ ορθογώνιου, κυκλικού σχήματος ή πολυγραμμής.</li><li> Κάντε κλικ στο σχεδιαζόμενο πλαίσιο οριοθέτησης για να επιλέξετε την περιοχή.</li><li> Στο αριστερό πλαίσιο της εργαλειοθήκης στην περιοχή &quot;Επίπεδα&quot;, επιλέξτε την καρτέλα &quot;Υπολογιστικές μονάδες&quot;</li><li> Επιλέξτε τους χάρτες CM - Scale heat and cool density.</li><li> Ορίστε τις παραμέτρους εισόδου σύμφωνα με τις ανάγκες σας: Π.χ. &quot;1.2&quot; για να αυξήσετε τη ζήτηση ψύξης κατά 20%.</li><li> Πληκτρολογήστε ένα όνομα για τον υπολογισμό που πρόκειται να εκτελέσετε (μπορείτε να χρησιμοποιήσετε έναν τυχαίο τίτλο).</li><li> Εκτελέστε το CM κάνοντας κλικ στο κουμπί &quot;RUN CM&quot;.</li><li> Ο υπολογισμός αποδίδει ένα νέο «στρώμα πυκνότητας ψύξης» με 20% υψηλότερη ζήτηση ψύξης, αυτό μπορεί να βρεθεί στην ενότητα στρωμάτων αριστερά στο κάτω μέρος όλων των διαθέσιμων στρωμάτων.</li><li> Κατεβάστε το προκύπτον επίπεδο (και μετονομάστε το εάν είναι απαραίτητο).</li><li> Ανεβάστε τα κλιμακούμενα δεδομένα ζήτησης ψύξης στην εργαλειοθήκη Hotmaps, όπως περιγράφεται <a href="#method_use-of-the-default-cooling-density-map-from-the-hotmaps-database_upload-the-selected-cooling-demand-density-map-to-your-private-account">παραπάνω</a> .</li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h3><a class="anchor" id="create-an-individual-bottom-up-cooling-demand-density-map-using-hotmaps-data-and-modules" href="#create-an-individual-bottom-up-cooling-demand-density-map-using-hotmaps-data-and-modules"><i class="fa fa-link"></i></a> Δημιουργήστε έναν μεμονωμένο χάρτη πυκνότητας ζήτησης ψύξης από κάτω προς τα πάνω χρησιμοποιώντας δεδομένα και ενότητες Hotmaps</h3><p> Για να αναπτύξετε έναν προσαρμοσμένο χάρτη πυκνότητας ψύξης από κάτω προς τα πάνω με βάση τα τοπικά δεδομένα, ακολουθήστε τα παρακάτω βήματα:</p><ul><li> Λάβετε τοπικά δεδομένα σχετικά με το απόθεμα κτιρίων (συμπεριλαμβανομένων θέσης / συντεταγμένων, περιοχή κτιρίου, τύπος κτιρίου, έτος κατασκευής ή περίοδος).</li><li> Κατεβάστε τα δεδομένα του Hotmaps Building Stock σχετικά με την τελική ζήτηση ενέργειας για θέρμανση χώρου (SH), ψύξη χώρου (SC) και ζεστό νερό οικιακής χρήσης (DHW) για κάθε EU28 από <a href="https://gitlab.com/hotmaps/building-stock">εδώ</a></li><li> Βρείτε τη χώρα με την οποία εργάζεστε ή χρησιμοποιήστε τον μέσο όρο EU28 στα δεδομένα του Hotmaps Building Stock.</li><li> Ταξινομήστε τα τοπικά δεδομένα αποθεμάτων κτιρίων στους υποτομείς και την ηλικιακή κατηγορία κτιρίων των δεδομένων Hotmaps Building Stock.</li><li> Συνδέστε την τελική ενεργειακή ζήτηση ψύξης για κάθε υποτομέα και την ηλικιακή τάξη κτιρίου με τα τοπικά δεδομένα αποθεμάτων κτιρίου για κάθε κτίριο και υπολογίστε την τελική ενεργειακή ζήτηση ψύξης.</li><li> Μετατρέψτε το υπολογιστικό φύλλο σας σε .csv ή .xls για να δημιουργήσετε ένα shapefile .shp βάσει του συντονισμού κάθε κτιρίου και της τελικής ενεργειακής ζήτησης για ψύξη.</li><li> Δημιουργήστε έναν χάρτη πυκνότητας από κάτω προς τα πάνω .tif χρησιμοποιώντας τους χάρτες Hotmaps CM Customized θερμότητας και ακαθάριστης επιφάνειας δαπέδου. Η περιγραφή βρίσκεται στη σελίδα Wiki <a href="/en/CM-Customized-heat-and-floor-area-density-maps">CM - Προσαρμοσμένοι χάρτες πυκνότητας θερμότητας και ακαθάριστης επιφάνειας δαπέδου</a> , ο οποίος περιέχει επίσης τον <a href="https://github.com/HotMaps/customized_h_fa_dm">σύνδεσμο προς τον κωδικό</a> .</li><li> Ανεβάστε το ανεπτυγμένο επίπεδο όπως θα κάνατε για μια επιλογή του προεπιλεγμένου επιπέδου όπως περιγράφεται στην προηγούμενη ενότητα] (/ en / District-cooling_Upload-the-cooling-demand-density-map-to-your-private-account).</li></ul><p> Τώρα μπορείτε να χρησιμοποιήσετε τον προσαρμοσμένο χάρτη πυκνότητας ζήτησης ψύξης από κάτω προς τα πάνω για τον προγραμματισμό της τηλεψύξης χρησιμοποιώντας το <a href="/en/CM-District-heating-potential-areas-user-defined-thresholds">CM - Περιοχές δυναμικής τηλεθέρμανσης: καθορισμένα από το χρήστη όρια</a> όπως περιγράφεται στο <a href="/en/District-Cooling#method_use-of-the-cm-district-heating-potential-areas-user-defined-thresholds-to-identify-potential-district-cooling-areas">τέταρτο βήμα</a> .</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h3><a class="anchor" id="use-of-the-cm-–-district-heating-potential-areas--user-defined-thresholds-to-identify-potential-district-cooling-areas" href="#use-of-the-cm-–-district-heating-potential-areas--user-defined-thresholds-to-identify-potential-district-cooling-areas"><i class="fa fa-link"></i></a> Χρήση του CM - Περιοχές δυναμικής τηλεθέρμανσης: καθορισμένα από το χρήστη κατώτατα όρια για τον προσδιορισμό πιθανών περιοχών ψύξης περιοχής</h3><p> Η ενότητα υπολογισμού <a href="/en/CM-District-heating-potential-areas-user-defined-thresholds">CM - Περιοχές δυναμικής τηλεθέρμανσης: καθορισμένα από το χρήστη κατώτατα όρια</a> δημιουργεί ένα shapefile πιθανών περιοχών ψύξης περιοχής με βάση τα ακόλουθα δεδομένα εισόδου: έναν χάρτη πυκνότητας ψύξης με ανάλυση 1 εκταρίου (ha), ένα όριο ζήτησης ψύξης για τη ζήτηση ψύξης σε κάθε κελί του χάρτη πυκνότητας ψύξης και ένα όριο ζήτησης ψύξης για ομάδες συνδεδεμένων κυψελών με ζήτηση ψύξης πάνω από το προηγούμενο όριο (= συνεκτική περιοχή).</p><p> Για να υπολογίσετε και να συγκρίνετε διαφορετικά σενάρια πιθανών περιοχών ψύξης περιοχής με βάση τις δύο τιμές κατωφλίου που χρησιμοποιούνται στη μονάδα, εκτελέστε τα ακόλουθα βήματα:</p><ul><li> Κάντε ζουμ στην τοποθεσία που θέλετε να εξετάσετε (π.χ. Aalborg).</li><li> Σχεδιάστε και επιλέξτε ένα πλαίσιο οριοθέτησης που περιέχει την περιοχή ενδιαφέροντος.</li><li> ΣΗΜΕΙΩΣΗ Βεβαιωθείτε ότι βρίσκεστε στην κλίμακα «Εκτάριο» για να μπορείτε να χρησιμοποιήσετε τα επίπεδα που έχετε ανεβάσει.</li><li> Σχεδιάστε τα όρια γύρω από την περιοχή ενδιαφέροντος χρησιμοποιώντας το εργαλείο σχεδίασης<img height="20" src="https://wiki.hotmaps.hevs.ch/en/District-Cooling/square_selection_icon.jpg" width="20"/> (ορθογώνιο, κυκλικό σχήμα ή πολύγωνο).</li><li> Κάντε κλικ στο σχεδιαζόμενο πλαίσιο οριοθέτησης για να επιλέξετε την περιοχή.</li><li> Στο αριστερό πλαίσιο της εργαλειοθήκης στην περιοχή &quot;Επίπεδα&quot;, επιλέξτε την καρτέλα &quot;Υπολογιστικές μονάδες&quot;</li><li> Επιλέξτε το &quot;CM - Περιοχές δυναμικής τηλεθέρμανσης: καθορισμένα από το χρήστη όρια&quot;.</li><li> Ορίστε τις παραμέτρους εισαγωγής σύμφωνα με τις τιμές επιλογής για να εξετάσετε και να αποκτήσετε πρόσβαση στις δυνατότητες ψύξης περιοχής. Το όριο πυκνότητας θα πρέπει να είναι χαμηλότερο για την τηλεθέρμανση σε σύγκριση με την τηλεθέρμανση, δεδομένης της φύσης της τηλεψύξης. Οι παράμετροι θα μπορούσαν να οριστούν για παράδειγμα στη διεύθυνση:<ul><li> Ελάχ. ζήτηση θερμότητας σε εκτάριο («Ελάχιστη ζήτηση ψύξης σε εκτάριο»): κυμαίνεται μεταξύ 75 και 15 MWh / ha / έτος.</li><li> Ελάχ. ζήτηση θερμότητας σε περιοχή DH (&quot;Ελάχιστη ζήτηση ψύξης σε περιοχή DC&quot;): σε εύρος από 10 έως 1 GWh / έτος.</li></ul></li><li> Στην ΕΠΙΛΟΓΗ ΤΥΠΟΥ ΕΙΣΟΔΟΣ επιλέξτε το επίπεδο πυκνότητας ζήτησης ψύξης που έχετε ανεβάσει και θέλετε να αναλύσετε.</li><li> Πληκτρολογήστε ένα όνομα για τον υπολογισμό που πρόκειται να εκτελέσετε (μπορείτε να χρησιμοποιήσετε έναν τυχαίο τίτλο).</li><li> Εκτελέστε το CM κάνοντας κλικ στο κουμπί &quot;RUN CM&quot;.</li><li> Όταν ο υπολογισμός είναι έτοιμος, μπορείτε να βρείτε τους υπολογισμένους δείκτες στην ενότητα αποτελεσμάτων στο δεξί πλαίσιο της εργαλειοθήκης. Αποδίδει 3 αποτελέσματα:<ul><li> Συνολική ζήτηση θερμότητας (κρύο) σε GWh εντός της επιλεγμένης ζώνης</li><li> Συνολικό δυναμικό τηλεθέρμανσης (ψύξη) σε GWh εντός της επιλεγμένης ζώνης</li><li> Πιθανό μερίδιο της τηλεθέρμανσης (ψύξη) από τη συνολική ζήτηση στην επιλεγμένη ζώνη</li></ul></li><li> Ο υπολογισμός αποδίδει επίσης 3 νέα επίπεδα:<ul><li> Περιοχές DC - ένας ράστερ, που δείχνει τις πιθανές περιοχές DC,</li><li> Χάρτης πυκνότητας ψύξης σε πιθανές περιοχές DC - ένα raster, ένα απόσπασμα του χάρτη πυκνότητας εισόδου με βάση τις πιθανές περιοχές DC</li><li> Περιοχές DC και οι δυνατότητές τους - ένα shapefile, πολύγωνα των πιθανών περιοχών DC.</li></ul></li><li> Αυτά μπορούν να βρεθούν στην ενότητα επιπέδων στον αριστερό πίνακα (πρέπει να κλείσετε τις ενότητες υπολογισμού με το «X» και να μετακινηθείτε στο «Επίπεδα») στο κάτω μέρος όλων των διαθέσιμων επιπέδων. Τραβήξτε ένα στιγμιότυπο οθόνης αυτών των επιπέδων και τοποθετήστε το εδώ.</li></ul><img src="/en/District-Cooling/DCooling_2-min.png"/> Σχήμα 1: Προσδιορισμένη περιοχή δυναμικού ψύξης περιοχής στο κέντρο της πόλης του Δήμου Aalborg<p> <strong>ΣΗΜΑΝΤΙΚΗ ΣΗΜΕΙΩΣΗ</strong></p><p> Για να δείτε αυτά τα επίπεδα εξόδου, ίσως χρειαστεί να αποεπιλέξετε τα άλλα επίπεδα. Σε περίπτωση που δεν τα βλέπετε ακόμα, δοκιμάστε να κάνετε σμίκρυνση, καθώς μερικές φορές υπάρχει ένα σφάλμα οπτικοποίησης. Μπορείτε επίσης να τα κατεβάσετε και να τα επαναφορτώσετε χρησιμοποιώντας τον προσωπικό σας λογαριασμό (πρέπει να συνδεθείτε πριν), επιλύει πάντα το πρόβλημα. Ή μπορείτε να τα φορτώσετε στο πρόγραμμα GIS της επιλογής σας.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="references" href="#references"><i class="fa fa-link"></i></a> βιβλιογραφικές αναφορές</h2><p> Pezzutto et. <a href="https://www.hotmaps-project.eu/wp-content/uploads/2018/03/D2.3-Hotmaps_for-upload_revised-final_.pdf">κ.λπ.</a> , 2019: <a href="https://www.hotmaps-project.eu/wp-content/uploads/2018/03/D2.3-Hotmaps_for-upload_revised-final_.pdf">Αναφορά D2.3 WP2 - Ανοιχτό σύνολο δεδομένων για την ΕΕ28</a></p><p> Pezzutto, Croce, Zambotti, 2019. <a href="https://gitlab.com/hotmaps/building-stock">Ανάλυση κτιριακών αποθεμάτων »- αναπτύχθηκε σύμφωνα με το D.2.3 WP2</a></p><p> Mostafa Fallahnejad, 2020. <a href="https://github.com/HotMaps/customized_h_fa_dm">Ανεξάρτητος CM: Προσαρμοσμένοι χάρτες πυκνότητας θερμότητας και μικτής επιφάνειας δαπέδου</a></p><p> Mostafa Fallahnejad, στο Hotmaps-Wiki, χάρτες θερμότητας και μικτής πυκνότητας επιφάνειας δαπέδου (Απρίλιος 2019).</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Πώς να παραθέσω</h2><p> Anders M. Odgaard, στο Hotmaps-Wiki, Concept για τη χρήση Hotmaps για τηλεψύξη (Σεπτέμβριος 2020)</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Συγγραφείς και κριτικοί</h2><p> Αυτή η σελίδα γράφτηκε από τον Anders M. Odgaard <strong><a href="https://planenergi.dk/">Planenergie</a></strong> .</p><p> ☑ Αυτή η σελίδα αξιολογήθηκε από τον Marcus Hummel <strong><a href="https://e-think.ac.at">e-think</a></strong> .</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Αδεια</h2><p> Πνευματικά δικαιώματα © 2016-2020: Anders M. Odgaard</p><p> Creative Commons Attribution 4.0 Διεθνής άδεια</p><p> Αυτό το έργο έχει άδεια βάσει της Creative Commons CC BY 4.0 International License.</p><p> SPDX-License-Identifier: CC-BY-4.0</p><p> License-Text: https://spdx.org/licenses/CC-BY-4.0.html</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Αναγνώριση</h2><p> Θα θέλαμε να εκφράσουμε τη βαθύτατη εκτίμησή μας στο <a href="https://www.hotmaps-project.eu">Πρόγραμμα Hotmaps</a> «Ορίζοντας 2020 <a href="https://www.hotmaps-project.eu">»</a> (Συμφωνία επιχορήγησης αριθμός 723677), το οποίο παρείχε τη χρηματοδότηση για τη διεξαγωγή της παρούσας έρευνας.</p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code></ins></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/District-Cooling) (original) [Bulgarian](../bg/District-Cooling)<sup>\*</sup> [Czech](../cs/District-Cooling)<sup>\*</sup> [Danish](../da/District-Cooling)<sup>\*</sup> [German](../de/District-Cooling)<sup>\*</sup>  [Spanish](../es/District-Cooling)<sup>\*</sup> [Estonian](../et/District-Cooling)<sup>\*</sup> [Finnish](../fi/District-Cooling)<sup>\*</sup> [French](../fr/District-Cooling)<sup>\*</sup> [Irish](../ga/District-Cooling)<sup>\*</sup> [Croatian](../hr/District-Cooling)<sup>\*</sup> [Hungarian](../hu/District-Cooling)<sup>\*</sup> [Italian](../it/District-Cooling)<sup>\*</sup> [Lithuanian](../lt/District-Cooling)<sup>\*</sup> [Latvian](../lv/District-Cooling)<sup>\*</sup> [Maltese](../mt/District-Cooling)<sup>\*</sup> [Dutch](../nl/District-Cooling)<sup>\*</sup> [Polish](../pl/District-Cooling)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/District-Cooling)<sup>\*</sup> [Romanian](../ro/District-Cooling)<sup>\*</sup> [Slovak](../sk/District-Cooling)<sup>\*</sup> [Slovenian](../sl/District-Cooling)<sup>\*</sup> [Swedish](../sv/District-Cooling)<sup>\*</sup> 

<sup>\*</sup> machine translated