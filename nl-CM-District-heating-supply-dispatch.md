<h2> Inhoudsopgave </h2><ul><li> <a href="#introduction">Invoering</a> </li><li> <a href="#inputs-and-outputs">Ingangen en uitgangen</a> </li><li> <a href="#method">Methode</a> </li><li> <a href="#sample-run">Voorbeeldrun</a> <ul><li> <a href="#test-run-1-default-input-values">Testrun 1: standaard invoerwaarden</a> </li><li> <a href="#test-run-2-modified-input-values">Testrun 2: gewijzigde invoerwaarden</a> </li></ul></li><li> <a href="#references">Referenties</a> </li><li> <a href="#how-to-cite">Hoe te citeren</a> </li><li> <a href="#authors-and-reviewers">Auteurs en recensenten</a> </li><li> <a href="#license">Licentie</a> </li><li> <a href="#acknowledgement">Erkenning</a> </li></ul><h2> Invoering </h2><p> De module voor stadsverwarming is een verzendmodel dat op elk uur van het jaar een kostenoptimale oplossing probeert te vinden voor het dekken van de warmtevraag. </p><p><img alt="concept.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/dh_supply/concept.png"/></p><blockquote><p> De hier beschreven methode moet worden opgevat als een eerste concept en kan afwijken van de daadwerkelijke implementatie (modelcomplexiteit, inputs en outputs, enz. Moeten vanuit dit oogpunt worden gezien). </p></blockquote><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Ingangen en uitgangen </h2><h3> Hoofd ingangen </h3><ol><li> Warmtevraag van het net (geselecteerde regio) </li><li> Geïnstalleerde capaciteiten van warmtegeneratoren / opslag </li><li> Technische (efficiënties) en financiële parameters (opex, capex, levensduur) van warmtegeneratoren / opslagplaatsen </li><li> Profielen (tijdreeksen van de warmtevraag, zonnestraling, temperatuur, elektriciteitsprijzen, enz ..) </li><li> ... </li></ol><h3> Hoofduitgangen </h3><ul><li> Kosten voor warmteontwikkeling </li><li> Investeringen, exploitatie en brandstofkosten </li><li> Warmtegeneratiemix per warmtegenerator </li><li> CO2 uitstoot </li><li> Volledige laaduren, </li><li> enzovoort.. </li></ul><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Methode </h2><p> De module is geïmplementeerd als een lineair programma en kan enerzijds worden gebruikt als een puur verzendmodel en anderzijds voor investeringsplanning om een belastingsprofiel te dekken. De objectieve functie probeert het minimum te vinden van het verschil met de kosten voor het leveren van warmte en inkomsten uit elektriciteitsproductie. </p><h3> Vergelijkingsfragmenten van het lineaire programma: </h3><p><img alt="lp_fragment.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/dh_supply/lp_fragment.png"/></p><h4> De totale kosten <code>c <sub>total</sub></code> opbrengst uit de som van: </h4><h5> investeringskosten <code>IC</code> (geïnstalleerde capaciteiten vermenigvuldigd met de annuïteiten van de specifieke investeringskosten) </h5><p><img alt="ic.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/dh_supply/ic.png"/></p><h5> onderschrijvingskosten <code>CC</code> : </h5><p><img alt="cc.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/dh_supply/cc.png"/></p><h5> de variabele kosten <code>OPEX</code> : </h5><p><img alt="opex.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/dh_supply/opex.png"/></p><h5> platformkosten van WKK en afvalverbrandingsinstallaties (ruwe schatting): </h5><p><img alt="ramp.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/dh_supply/ramp.png"/></p><h5> veronderstelde kosten voor de piekbelasting in de winter (ruwe schatting): </h5><p><img alt="peak.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/dh_supply/peak.png"/></p><h4> De totale opbrengsten <code>rev <sub>total</sub></code> rendement van: </h4><h5> de verkoop van elektriciteit (bijvoorbeeld van WKK-installaties en afvalverbrandingsinstallaties): </h5><p><img alt="rev.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/dh_supply/rev.png"/></p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h4> Legende </h4><p><img alt="legend.png" src="https://github.com/HotMaps/hotmaps_wiki/blob/master/Images/dh_supply/legend.png"/></p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Voorbeeldrun </h2><p> <code>NOT IMPLEMENTED&gt;</code> </p> <p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h3> Testrun 1: standaard invoerwaarden </h3><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h3> Testrun 2: gewijzigde invoerwaarden </h3><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><h2> Referenties </h2><h2> Hoe te citeren </h2><h2> Auteurs en recensenten </h2><p> Deze pagina is geschreven door Jeton Hasani *. </p><ul><li> [] Deze pagina is beoordeeld door Lukas Kranzl *. </li></ul><p> * <a href="https://eeg.tuwien.ac.at/">Energy Economics Group - TU Wien</a> Institute of Energy Systems and Electrical Drives Gusshausstrasse 27-29 / 370 1040 Wien </p><h2> Licentie </h2><p> Copyright © 2016-2018: Jeton Hasani Creative Commons Naamsvermelding 4.0 Internationale licentie Dit werk is in licentie gegeven onder een Creative Commons CC BY 4.0 International License. SPDX-licentie-ID: CC-BY-4.0 Licentietekst: https://spdx.org/licenses/CC-BY-4.0.html </p><h2> Erkenning </h2><p> We willen onze diepe waardering overbrengen aan het Horizon 2020 <a href="https://www.hotmaps-project.eu">Hotmaps-project</a> (subsidieovereenkomst nummer 723677), dat de financiering heeft verstrekt voor het uitvoeren van dit onderzoek. </p><p><ins> <code><strong><a href="#table-of-contents">To Top</a></strong></code> </ins> </p><p> <code><a href="https://github.com/HotMaps/hotmaps_wiki/wiki/CM_DH_supply/_edit">Review this page</a></code> </p>

This page was automatically translated. View in another language:

[English](en-CM-District-heating-supply-dispatch) (original) [Bulgarian](bg-CM-District-heating-supply-dispatch)<sup>\*</sup> [Croatian](hr-CM-District-heating-supply-dispatch)<sup>\*</sup> [Czech](cs-CM-District-heating-supply-dispatch)<sup>\*</sup> [Danish](da-CM-District-heating-supply-dispatch)<sup>\*</sup>  [Estonian](et-CM-District-heating-supply-dispatch)<sup>\*</sup> [Finnish](fi-CM-District-heating-supply-dispatch)<sup>\*</sup> [French](fr-CM-District-heating-supply-dispatch)<sup>\*</sup> [German](de-CM-District-heating-supply-dispatch)<sup>\*</sup> [Greek](el-CM-District-heating-supply-dispatch)<sup>\*</sup> [Hungarian](hu-CM-District-heating-supply-dispatch)<sup>\*</sup> [Irish](ga-CM-District-heating-supply-dispatch)<sup>\*</sup> [Italian](it-CM-District-heating-supply-dispatch)<sup>\*</sup> [Latvian](lv-CM-District-heating-supply-dispatch)<sup>\*</sup> [Lithuanian](lt-CM-District-heating-supply-dispatch)<sup>\*</sup> [Maltese](mt-CM-District-heating-supply-dispatch)<sup>\*</sup> [Polish](pl-CM-District-heating-supply-dispatch)<sup>\*</sup> [Portuguese (Portugal, Brazil)](pt-CM-District-heating-supply-dispatch)<sup>\*</sup> [Romanian](ro-CM-District-heating-supply-dispatch)<sup>\*</sup> [Slovak](sk-CM-District-heating-supply-dispatch)<sup>\*</sup> [Slovenian](sl-CM-District-heating-supply-dispatch)<sup>\*</sup> [Spanish](es-CM-District-heating-supply-dispatch)<sup>\*</sup> [Swedish](sv-CM-District-heating-supply-dispatch)<sup>\*</sup>
<sup>\*</sup>: machine translated