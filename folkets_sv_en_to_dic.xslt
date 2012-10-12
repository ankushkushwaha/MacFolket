<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<!-- <xsl:output method="xml" encoding="utf-8" indent="yes || no"/> -->
	<xsl:output method="xml" encoding="utf-8"/>

	<xsl:template match="/">

		<d:dictionary xmlns="http://www.w3.org/1999/xhtml" xmlns:d="http://www.apple.com/DTDs/DictionaryService-1.0.rng">

			<!-- HEADER -->
			<d:entry id="dictionary_application" d:title="Dictionary application">
				<d:index d:value="Dictionary application"/>
				<h1>Dictionary application </h1>
				<p>
					An application to look up dictionary on Mac OS X.<br/>
				</p>
				<span class="column">
					The Dictionary application first appeared in Tiger.
				</span>
				<span class="picture">
					It's application icon looks like below.<br/>
					<img src="Images/_internal_dictionary.png" alt="Dictionary.app Icon"/>
				</span>
			</d:entry>
<xsl:text>
</xsl:text>
			<!-- END OF HEADER -->


			<xsl:for-each select="dictionary/word">

				<d:entry>

					<xsl:attribute name="id">id_<xsl:number value="position()"/></xsl:attribute>
					<xsl:attribute name="d:title"><xsl:value-of select="@value"/></xsl:attribute>

<xsl:text>
	</xsl:text>
					<d:index d:value="{@value}"></d:index>

					<xsl:for-each select="paradigm/inflection">

<xsl:text>
	</xsl:text>
						<d:index d:value="{@value}"></d:index>

					</xsl:for-each>
<xsl:text>
	</xsl:text>
					<h1><xsl:value-of select="@value"/></h1>
		<ol>
			<xsl:for-each select="translation">
				<li>
					<xsl:value-of select="@value"/>
				</li>

			</xsl:for-each>
		</ol>


				</d:entry>
<xsl:text>
</xsl:text>
			</xsl:for-each>



			<!-- FOOTER -->
			<d:entry id="front_back_matter" d:title="Front/Back Matter">
				<h1><b>My Dictionary</b></h1>
				<h2>Front/Back Matter</h2>
				<div>
					This is a front matter page of the sample dictionary.<br/><br/>
				</div>
				<div>
					<b>To see</b> this page,
					<ol>
						<li>Open "Go" menu.</li>
						<li>Choose "Front/Back Matter" menu item. 
							If it has sub-menu items, choose one of them.</li>
					</ol>
				</div>
				<div>
					<b>To prepare</b> the menu item, do the followings.
					<ol>
						<li>Prepare this page source as an entry.</li>
						<li>Add "DCSDictionaryFrontMatterReferenceID" key and its value to the plist of the dictionary.
							The value should be the string of this page entry id. </li>
					</ol>
				</div>
				<br/>
			</d:entry>
<xsl:text>
</xsl:text>
			<!-- END OF FOOTER -->

		</d:dictionary>

	</xsl:template>

</xsl:stylesheet>

<!-- 

<word value="slott" lang="sv" class="nn">
	<translation value="manor house" />
	<translation value="castle" />
	<translation value="palace" />
	<phonetic value="slåt:" soundFile="slott.swf" />
	<paradigm>
		<inflection value="slottet" />
		<inflection value="slott" />
		<inflection value="slotten" />
	</paradigm>
	<synonym value="palats" level="4.3" />
	<see value="slott||slott..1||slott..nn.1" type="saldo" />
	<compound value="slotts|byggnad">
		<translation value="palace building" />
	</compound>
	<definition value="pampigt bostadshus för kungliga eller adliga personer" />
</word>


<d:entry id="make_1" d:title="make">
	<d:index d:value="make"/>
	<d:index d:value="makes"/>
	<d:index d:value="made" d:title="made (make)"/>
	<d:index d:value="making" d:priority="2"/>
	<d:index d:value="make it" d:anchor="xpointer(//*[@id='make_it'])"/>
	<div d:priority="2"><h1>make</h1></div>
	<div>
		<ol>
			<li>
				Form by putting parts together or combining substances; construct; create; produce 
				<span d:priority="2"> : <i>Mother made her a beautiful dress</i>
				</span>
				.
			</li>
			<li>
				Cause to be or become
				<span d:priority="2"> : <i>The news made me happy</i>
				</span>
				.
			</li>
		</ol>
	</div>
	<div d:priority="2">
		<h3>PHRASES</h3>
		<div id="make_it"><b>make it</b> : succeed in something; survive.</div>
		<h4><a href="x-dictionary:r:make_up_ones_mind"><b>make up one's mind</b></a></h4>
	</div>
</d:entry>

-->