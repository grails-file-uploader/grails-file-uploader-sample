import com.lucastex.grails.fileuploader.UFile

class DocsController {

    def index = { 
		[files: UFile.list()]
	}
}
