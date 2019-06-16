[#-- Assign --]
[#assign text1= content.title/]
[#assign text2= content.title2/]

[#assign currentNode = cmsfn.asJCRNode(content)/]
[#assign image1 = cmsfn.getNode(atom_img)/]
[#assign image1_link = imgfn.getImageVariationLinkFromBinary(image1,'original')/]
[#-- Render --]
<div>
	<h1>
		${text1!"please insert text1"}
	</h1>	
	<h1>
		${text2!"please insert text2"}
	</h1>	
	<div>
		<img src="${image1_link!""}" alt="no image">
	</div>
</div>