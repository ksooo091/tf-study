provider "google" {
    credentials = file("cre.json")
    project     = ""
    region      = "asia-northeast3"
}
