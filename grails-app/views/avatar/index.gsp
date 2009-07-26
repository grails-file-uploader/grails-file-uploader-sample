<html>
    <head>
        <title>Grails File-Uploader Avatar Demo</title>
		<meta name="layout" content="main" />
    </head>
    <body>
        <h1 style="margin-left:20px;">Grails File-Uploader Plugin Avatar Demo</h1>
        <p style="margin-left:20px;width:80%">
			<fileuploader:form 	upload="avatar" 
								successAction="index"
								successController="avatar"
								errorAction="index"
								errorController="avatar"/>
        </p>
		<br /><br />
		<h3 style="margin-left:20px;">Uploaded files</h3>
        <p style="margin-left:20px;width:80%">
			<g:each var="f" in="${files}">
				<table>
					<tr>
						<td><b>Name</b></td>
						<td>${f.name}</td>
					</tr>
					<tr>
						<td><b>Path</b></td>
						<td>${f.path}</td>
					</tr>
					<tr>
						<td><b>Size</b></td>
						<td><fileuploader:prettysize size="${f.size}" /> (${f.size})</td>
					</tr>
					<tr>
						<td><b>Extension</b></td>
						<td>${f.extension}</td>
					</tr>
					<tr>
						<td><b>Downloaded</b></td>
						<td>${f.downloads}</td>
					</tr>
					<tr>
						<td><b>Date uploaded</b></td>
						<td><g:formatDate format="MM/dd/yyyy HH:mm" date="${f.dateUploaded}" /></td>
					</tr>
					<tr>
						<td></td>
						<td>
							<fileuploader:download 	id="${f.id}"
													errorAction="index"
													errorController="avatar">Click here to download</fileuploader:download></td>
					</tr>
					<tr>
						<td></td>
						<td>
							<g:link controller="avatar" action="delete" id="${f.id}">Click here to delete</g:link></td>
					</tr>										
				</table>
			</g:each>
		</p>
    </body>
</html>