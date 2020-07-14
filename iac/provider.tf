provider "google" {
 credentials = file("../../credentials.json")
 project     = "inlaid-lane-270316"
 region      = var.zone
}