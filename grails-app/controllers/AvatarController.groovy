import com.lucastex.grails.fileuploader.UFile

class AvatarController {

    def index = {
		[files: UFile.list()]
	}
}
