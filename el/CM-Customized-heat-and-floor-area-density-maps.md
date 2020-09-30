<h1><a class="anchor" id="cm-customized-heat-and-gross-floor-area-density-maps" href="#cm-customized-heat-and-gross-floor-area-density-maps"><i class="fa fa-link"></i></a>CM Προσαρμοσμένοι χάρτες πυκνότητας θερμότητας και μικτής επιφάνειας δαπέδου</h1><h2><a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Πίνακας περιεχομένων</h2><ul><li> <a href="#in-a-glance">Με μια ματιά</a></li><li> <a href="#introduction">Εισαγωγή</a></li><li> <a href="#inputs-and-outputs">Είσοδοι και έξοδοι</a></li><li> <a href="#method">Μέθοδος</a></li><li> <a href="#github-repository-of-this-calculation-module">Αποθήκη GitHub αυτής της λειτουργικής μονάδας υπολογισμού</a></li><li> <a href="#how-to-cite">Πώς να παραθέσω</a></li><li> <a href="#authors-and-reviewers">Συγγραφείς και κριτικοί</a></li><li> <a href="#license">Αδεια</a></li><li> <a href="#acknowledgement">Αναγνώριση</a></li></ul><h2><a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> Με μια ματιά</h2><p> Αυτή η ενότητα δημιουργεί αρχεία raster τόσο για πυκνότητα θερμότητας όσο και χάρτης πυκνότητας μικτής επιφάνειας δαπέδου με τη μορφή που απαιτείται από την εργαλειοθήκη Hotmaps. Τα δεδομένα εισαγωγής παρέχονται με τη μορφή αρχείου CSV που περιέχει πληροφορίες σχετικά με την τοποθεσία, την ακαθάριστη επιφάνεια δαπέδου και τη ζήτηση θερμότητας για κάθε μεμονωμένο κτίριο που πρέπει να ληφθεί υπόψη.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Εισαγωγή</h2><p> Αυτή η ενότητα δημιουργεί χάρτη πυκνότητας θερμότητας και ακαθάριστης επιφάνειας δαπέδου με τη μορφή αρχείων ράστερ. Η είσοδος στη λειτουργική μονάδα είναι ένα αρχείο CSV με συγκεκριμένες κεφαλίδες στηλών. Πρέπει να περιέχει τα ακόλουθα δεδομένα: τη συντεταγμένη Χ και Υ του κέντρου των κτιρίων στο EPSG: σύστημα αναφοράς συντεταγμένων 3035, την ακαθάριστη επιφάνεια δαπέδου και την ετήσια ζήτηση θερμότητας των κτιρίων Τα δημιουργημένα αρχεία raster ακολουθούν την απαιτούμενη προβολή και ανάλυση από την εργαλειοθήκη Hotmaps και, ως εκ τούτου, μπορούν εύκολα να μεταφορτωθούν στους λογαριασμούς χρηστών.</p><p> Αυτή η ενότητα είναι διαθέσιμη μόνο ως αυτόνομη μονάδα. Δεν είναι ενσωματωμένο στην ηλεκτρονική έκδοση της εργαλειοθήκης Hotmaps. Οι χρήστες αυτού του CM θα πρέπει να είναι εξοικειωμένοι με τον προγραμματισμό python και να έχουν εγκαταστήσει τις απαιτούμενες βιβλιοθήκες (π.χ. Numpy, Pandas, GeoPandas και GDAL).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Είσοδοι και έξοδοι</h2><p> <strong>Είσοδοι</strong></p><p> Η ενότητα δέχεται ένα αρχείο CSV ως είσοδο. Οι ακόλουθες κεφαλίδες αναμένονται σε περίπτωση οποιουδήποτε από τους τύπους αρχείων εισαγωγής (θα πρέπει να διατίθενται στην κεφαλίδα του αρχείου CSV):</p><ul><li> <strong>hotmaps_ID</strong> : παρέχετε ένα μοναδικό, ακέραιο αναγνωριστικό για κάθε δυνατότητα (πολύγωνο)</li><li> <strong>Τύπος</strong> : <strong>Τύπος</strong> κτιρίου: ορίζεται σε 1 για τον τομέα των υπηρεσιών. άλλες τιμές θεωρούνται κατοικημένες (προαιρετικά: μπορούν να αφεθούν κενές)</li><li> <strong>Έτος_ Κατασκευή</strong> : Έτος κατασκευής (προαιρετικό: μπορεί να μείνει κενό)</li><li> <strong>Διεύθυνση</strong> : Διεύθυνση του κτιρίου (προαιρετικό: μπορεί να μείνει άδειο)</li><li> <strong>GFA</strong> : Μικτή επιφάνεια δαπέδου σε <strong><em>m <sup>2</sup></em></strong></li><li> <strong>Footprint</strong> : αποτύπωμα του κτιρίου σε <strong><em>m <sup>2</sup></em></strong> (απαιτείται εάν δεν παρέχονται τιμές για GFA)</li><li> <strong>NrFloor</strong> : αριθμός ορόφων (απαιτείται εάν δεν παρέχονται τιμές για GFA)</li><li> <strong>spec_demand</strong> : Ειδική ζήτηση θερμότητας για κάθε χαρακτηριστικό (πολύγωνο) σε <strong><em>kWh</em></strong></li><li> <strong>ζήτηση</strong> : <strong>Ζήτηση</strong> θερμότητας για κάθε χαρακτηριστικό (πολύγωνο) σε <strong><em>kWh</em></strong></li><li> <strong>X_3035</strong> : Η συντεταγμένη X του κέντρου της δυνατότητας (πολύγωνο) στην προβολή EPSG 3035 (Υποχρεωτικό για το αρχείο CSV: μπορεί να παραμείνει κενό)</li><li> <strong>Y_3035</strong> : Η συντεταγμένη Y του κέντρου της δυνατότητας (πολύγωνο) στην προβολή EPSG 3035 (Υποχρεωτικό για το αρχείο CSV: μπορεί να παραμείνει κενό)</li></ul><p> <strong>Σημαντική σημείωση</strong> : <code>The headers should be written as stated above. Otherwise, the code will break and returns an error.</code></p><p> <strong>Έξοδοι</strong></p><p> Ως έξοδος, δημιουργούνται δύο αρχεία raster:</p><ul><li> Ένας χάρτης μεικτής πυκνότητας εμβαδού δαπέδου με τιμές pixel σε <strong><em>m <sup>2</sup> ανά εκτάριο</em></strong></li><li> Ένας χάρτης πυκνότητας ζήτησης θερμότητας με τιμές pixel σε <strong><em>MWh ανά εκτάριο</em></strong></li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Μέθοδος</h2><p> Για να απεικονίσετε ένα δικό σας αρχείο raster στην εργαλειοθήκη Hotmaps, θα πρέπει να τηρεί τους κανόνες που ορίζονται από την εργαλειοθήκη. Γενικά, ένας ράστερ πρέπει:</p><ol><li> έχετε το CRS του <strong>ETRS89-εκτεταμένο / LAEA Europe - EPSG: 3035</strong> ;</li><li> Η συντεταγμένη της προέλευσης του ράστερ (πάνω αριστερή γωνία του ράστερ) πρέπει να είναι πολλαπλάσια 100, π.χ. (4334900, 3019700).</li><li> Η ανάλυση του χάρτη ράστερ πρέπει να είναι 100x100m.</li><li> Ο ράστερ πρέπει να αναφέρεται σε μια τοποθεσία στην Ευρώπη.</li></ol><p> Με βάση τα παραπάνω κριτήρια και συντεταγμένες που δίνονται στο αρχείο εισαγωγής CSV, κάθε συντεταγμένη εισόδου κατανέμεται σε ένα συγκεκριμένο pixel. Οι καταχωρήσεις που κατανέμονται σε ένα μόνο εικονοστοιχείο συγκεντρώνονται. Το εικονοστοιχείο κάτω αριστερά και άνω δεξιά καθορίζουν την έκταση του εικονοστοιχείου. Η ανάλυση του χάρτη είναι 100x100m. Κατά συνέπεια, δημιουργείται ένας χάρτης πυκνότητας θερμότητας και ένας χάρτης ακαθάριστης επιφάνειας δαπέδου.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> Αποθήκη GitHub αυτής της λειτουργικής μονάδας υπολογισμού</h2><p> <strong><a href="https://github.com/HotMaps/customized_h_fa_dm">Εδώ</a></strong> θα βρείτε την ανάπτυξη αιχμής για αυτήν την ενότητα υπολογισμού.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Πώς να παραθέσω</h2><p> Mostafa Fallahnejad, στο Hotmaps-Wiki, CM Προσαρμοσμένοι χάρτες πυκνότητας θερμότητας και ακαθάριστης επιφάνειας δαπέδου (Σεπτέμβριος 2020)</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Συγγραφείς και κριτικοί</h2><p> Αυτή η σελίδα γράφτηκε από τον Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ).</p><p> ☑ Αυτή η σελίδα αξιολογήθηκε από τον Marcul Hummel ( <strong><a href="https://e-think.ac.at">e-think</a></strong> ).</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Αδεια</h2><p> Πνευματικά δικαιώματα © 2016-2020: Mostafa Fallahnejad</p><p> Creative Commons Attribution 4.0 Διεθνής άδεια</p><p> Αυτό το έργο έχει άδεια βάσει της Creative Commons CC BY 4.0 International License.</p><p> SPDX-License-Identifier: CC-BY-4.0</p><p> License-Text: https://spdx.org/licenses/CC-BY-4.0.html</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p><h2><a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Αναγνώριση</h2><p> Θα θέλαμε να εκφράσουμε τη βαθύτατη εκτίμησή μας στο <a href="https://www.hotmaps-project.eu">Πρόγραμμα Hotmaps</a> «Ορίζοντας 2020 <a href="https://www.hotmaps-project.eu">»</a> (Συμφωνία επιχορήγησης αριθμός 723677), το οποίο παρείχε τη χρηματοδότηση για τη διεξαγωγή της παρούσας έρευνας.</p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a></p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Customized-heat-and-floor-area-density-maps) (original) [Bulgarian](../bg/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Czech](../cs/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Danish](../da/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [German](../de/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup>  [Spanish](../es/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Estonian](../et/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Finnish](../fi/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [French](../fr/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Irish](../ga/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Croatian](../hr/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Hungarian](../hu/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Italian](../it/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Lithuanian](../lt/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Latvian](../lv/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Maltese](../mt/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Dutch](../nl/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Polish](../pl/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Portuguese (Portugal, Brazil)](../pt/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Romanian](../ro/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Slovak](../sk/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Slovenian](../sl/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> [Swedish](../sv/CM-Customized-heat-and-floor-area-density-maps)<sup>\*</sup> 

<sup>\*</sup> machine translated