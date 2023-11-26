terraform {
    required_version = ">= 0.15"
    required_providers {
    random = {
        source  = "hashicorp/random"
        version = "~> 3.0"
    }
    local = {
        source  = "hashicorp/local"
        version = "~> 2.0"
    }
    archive = {
        source  = "hashicorp/archive"
        version = "~> 2.0"
    }
}
}

variable "words" {
    description = "A word pool to use for Mad Libs"
    type = object({
        nouns      = list(string),
        adjectives = list(string),
        verbs      = list(string),
        adverbs    = list(string),
        numbers    = list(number),
    })
    
    validation {
        condition     = length(var.words["nouns"]) >= 6
        error_message = "At least 20 nouns must be supplied."
    }
}

resource "random_shuffle" "random_nouns" {
    input = var.words["nouns"]
}

resource "random_shuffle" "random_adjectives" {
    input = var.words["adjectives"]
}

resource "random_shuffle" "random_verbs" {
    input = var.words["verbs"]
}

resource "random_shuffle" "random_adverbs" {
    input = var.words["adverbs"]
}

resource "random_shuffle" "random_numbers" {
    input = var.words["numbers"]
}

output "mad_libs" {
    value = templatefile("${path.module}/templates/alice.txt",
    {
        nouns      = random_shuffle.random_nouns.result
        adjectives = random_shuffle.random_adjectives.result
        verbs      = random_shuffle.random_verbs.result
        adverbs    = random_shuffle.random_adverbs.result
        numbers    = random_shuffle.random_numbers.result
    })
}
