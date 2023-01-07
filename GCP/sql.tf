resource "google_sql_database_instance" "tf_sql" {
  name = ""
  database_version = "MySQL_8_0"
  region = "asia-northeast3"
  root_password = ""

    settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = "db-f1-micro"
  }

}