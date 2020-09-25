<h1> <a class="anchor" id="cm-biomass-potential" href="#cm-biomass-potential"><i class="fa fa-link"></i></a> CM Biomassepotential </h1><h2> <a class="anchor" id="table-of-contents" href="#table-of-contents"><i class="fa fa-link"></i></a> Inhaltsverzeichnis </h2><ul><li> <a href="#in-a-glance">In einem Blick</a> </li><li> <a href="#introduction">Einführung</a> </li><li> <a href="#inputs-and-outputs">Eingänge und Ausgänge</a> </li><li> <a href="#method">Methode</a> </li><li> <a href="#github-repository-of-this-calculation-module">GitHub-Repository dieses Berechnungsmoduls</a> </li><li> <a href="#sample-run">Probelauf</a> </li><li> <a href="#how-to-cite">Wie zu zitieren</a> </li><li> <a href="#authors-and-reviewers">Autoren und Rezensenten</a> </li><li> <a href="#license">Lizenz</a> </li><li> <a href="#acknowledgement">Wissen</a> </li></ul><h2> <a class="anchor" id="in-a-glance" href="#in-a-glance"><i class="fa fa-link"></i></a> In einem Blick </h2><p> Dieses Modul berechnet das Energiepotential aus verschiedenen Biomassequellen (Wald- und landwirtschaftliche Rückstände) innerhalb einer NUTS3-Region. </p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> </p> <h2> <a class="anchor" id="introduction" href="#introduction"><i class="fa fa-link"></i></a> Einführung </h2><p> Dieses Modul bewertet die potenzielle Biomasseenergie, die aus einer Biomassequelle erzeugt werden kann. Ziel dieses CM ist es, die elektrische und thermische Energie zu bewerten, die aus dem Biomassepotential von NUTS3-Regionen genutzt werden kann. Das Modul berücksichtigt unterschiedliche Typologien von Biomasse, die zur Energieerzeugung genutzt werden können. Das CM verwendet den Standarddatensatz für die gesamte EU, der sich auf NUTS3-Ebene befindet. </p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> </p> <h2> <a class="anchor" id="inputs-and-outputs" href="#inputs-and-outputs"><i class="fa fa-link"></i></a> Eingänge und Ausgänge </h2><p> Die Eingabeparameter und Ebenen sowie die Ausgabeebenen und -parameter sind wie folgt. </p><p> <strong>Eingabeebenen und Parameter sind:</strong> </p><ul><li> Vektorschicht mit der Masse der verfügbaren biologischen Rückstände pro Biomassetypologie; </li><li> Prozentsatz fester Abfälle, die effektiv gesammelt werden können (Standardwert: 90%) </li><li> Effizienz bei der Umwandlung fester Abfälle in Wärmeenergie (Standardwert: 50%) </li><li> Effizienz bei der Umwandlung fester Abfälle in elektrische Energie (Standardwert: 20%) </li><li> Prozentsatz der landwirtschaftlichen Rückstände, die effektiv gesammelt werden können (Standardwert: 60%) </li><li> Effizienz bei der Umwandlung landwirtschaftlicher Rückstände in Wärmeenergie (Standardwert: 50%) </li><li> Effizienz bei der Umwandlung landwirtschaftlicher Rückstände in elektrische Energie (Standardwert: 20%) </li><li> Prozentsatz der Abwässer, die effektiv gesammelt werden können (Standardwert: 50%) </li><li> Effizienz bei der Umwandlung von tierischen Abwässern in Wärmeenergie (Standardwert: 50%) </li><li> Effizienz bei der Umwandlung von tierischen Abwässern in elektrische Energie (Standardwert: 20%) </li><li> Prozentsatz der Waldreste, die effektiv gesammelt werden können (Standardwert: 50%) </li><li> Effizienz bei der Umwandlung von Waldresten in Wärmeenergie (Standardwert: 50%) </li><li> Effizienz bei der Umwandlung von Waldresten in elektrische Energie (Standardwert: 20%) </li></ul><p> <strong>Ausgabeebenen und Parameter sind:</strong> </p><ul><li> das gesamte Wärmeenergiepotential der Biomasse </li><li> das gesamte elektrische Energiepotential der Biomasse </li><li> Grafik mit der elektrischen / thermischen Energie pro Biomassetyp. </li></ul><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> </p> <h2> <a class="anchor" id="method" href="#method"><i class="fa fa-link"></i></a> Methode </h2><p> Das Modul berechnet für jede verfügbare Biomasse-Ressource den Prozentsatz der Gesamtmenge an Biomasse, die effektiv und realistisch gesammelt werden kann. Diese Werte werden vom Benutzer als Eingabe bereitgestellt. Bei der Bereitstellung dieser Werte sollte der Benutzer Parameter wie die Bodenbedingungen in der Forstwirtschaft (z. B. Neigung, Geländeunebenheit) und die Mechanisierung des Prozesses (z. B. Verwendung von Kabelkran, Erntemaschine und Spediteur usw.) berücksichtigen, um eine realistische Schätzung zu erhalten. Basierend auf der bereitgestellten Transformationseffizienz wird die Energie berechnet, die aus jeder Biomasse-Ressource gewonnen werden kann. Schließlich werden das gesamte Wärmeenergiepotential der Biomasse und das elektrische Energiepotential der gesamten Biomasse erhalten. </p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> </p> <h2> <a class="anchor" id="github-repository-of-this-calculation-module" href="#github-repository-of-this-calculation-module"><i class="fa fa-link"></i></a> GitHub-Repository dieses Berechnungsmoduls </h2><p> <a href="https://github.com/HotMaps/biomass_potential">Hier erhalten</a> Sie die neueste Entwicklung für dieses Berechnungsmodul. </p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> </p> <h2> <a class="anchor" id="sample-run" href="#sample-run"><i class="fa fa-link"></i></a> Probelauf </h2><p> Dieses Berechnungsmodul kann auf NUTS 0-3-Ebenen ausgeführt werden. Die folgende Abbildung zeigt die erhaltenen Wärme- und elektrischen Potentiale für jede Biomasse-Ressource basierend auf den Standardeingabeparametern. </p><p> [[/en/CM-Biomass-potential/cm_biomass_potential.png]] </p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> </p> <h2> <a class="anchor" id="how-to-cite" href="#how-to-cite"><i class="fa fa-link"></i></a> Wie zu zitieren </h2><p> Pietro Zambelli, im Hotmaps-Wiki, CM - Biomassepotential (September 2020) </p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> </p> <h2> <a class="anchor" id="authors-and-reviewers" href="#authors-and-reviewers"><i class="fa fa-link"></i></a> Autoren und Rezensenten </h2><p> Diese Seite wurde von Pietro Zambelli ( <strong><a href="http://www.eurac.edu">EURAC</a></strong> ) geschrieben. </p><p> ☑ Diese Seite wurde von Mostafa Fallahnejad ( <strong><a href="https://eeg.tuwien.ac.at/">EEG - TU Wien</a></strong> ) überprüft. </p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> </p> <h2> <a class="anchor" id="license" href="#license"><i class="fa fa-link"></i></a> Lizenz </h2><p> Copyright © 2016-2020: Pietro Zambelli </p><p> Creative Commons Namensnennung 4.0 Internationale Lizenz </p><p> Diese Arbeit unterliegt den Bestimmungen einer Creative Commons CC BY 4.0 International License. </p><p> SPDX-Lizenz-ID: CC-BY-4.0 </p><p> Lizenztext: https://spdx.org/licenses/CC-BY-4.0.html </p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> </p> <h2> <a class="anchor" id="acknowledgement" href="#acknowledgement"><i class="fa fa-link"></i></a> Wissen </h2><p> Wir möchten dem Horizon 2020 Hotmaps-Projekt (Finanzhilfevereinbarung Nr. 723677) unsere tiefste Anerkennung aussprechen, das die Mittel für die Durchführung der vorliegenden Untersuchung bereitgestellt hat. </p><p> <a href="#table-of-contents"><strong><code>To Top</code></strong></a> </p>
<!--- THIS IS A SUPER UNIQUE IDENTIFIER -->

This page was automatically translated. View in another language:

[English](../en/CM-Biomass-potential) (original)  

<sup>\*</sup> machine translated