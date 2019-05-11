import Foundation
import Alamofire

print("Checking..")

AF.request("https://wttr.in?format=3").responseString { response in
	switch response.result {
	case .success(let weather):
		print("Current weather for \(weather)")
		exit(0)
	default:
		print("Couldn't get the weather at the moment, sorry!")
		exit(0)
	}
}

RunLoop.main.run()
