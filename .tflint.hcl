plugin "terraform" {
  enabled = true
  preset  = "recommended"
}

# shared/variables.tf is linked into every stack; not every stack uses both.
rule "terraform_unused_declarations" {
  enabled = false
}
