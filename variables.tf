# oci parameters

variable "compartment_ocid" {
  description = "The OCID of the compartment where all resources to be created"
  type        = string
}
variable "ad_number" {
  description = "The availability domain number of the instance.If none is provided, it will start with AD-1 and continue in round-robin."
  type        = number
  default     = null
}
variable "instance_count" {
  description = "Number of identical instances to launch from a single module."
  type        = number
  default     = 1
}

variable "instance_display_name" {
  description = "A user-friendly name for the instance"
  type        = string
  default     = ""
}

variable "instance_state" {
  type        = string
  description = "The target state for the instance. Could be set to RUNNING or STOPPED."
  default     = "RUNNING"

  validation {
    condition     = contains(["RUNNING", "STOPPED"], var.instance_state)
    error_message = "Accepted values are RUNNING or STOPPED."
  }
}
variable "shape" {
  description = "The shape of an instance."
  type        = string
  default     = "VM.Standard2.1"
}

