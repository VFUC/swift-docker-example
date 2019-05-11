import Foundation

print("Checking..")

let url = URL(string: "https://wttr.in?format=3")!
URLSession.shared.dataTask(with: url, completionHandler: { data, response, error in
	guard let data = data, error == nil else {
		print("Couldn't get the weather at the moment, sorry!")
		exit(0)
	}
	let weather = String(decoding: data, as: UTF8.self)
	print("Current weather for \(weather)")
	exit(0)
}).resume()

RunLoop.main.run()
