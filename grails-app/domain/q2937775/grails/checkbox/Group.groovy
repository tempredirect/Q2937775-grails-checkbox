package q2937775.grails.checkbox

class Group {

  String title
  String description
  Boolean isHidden = true

  static belongTo = Person

  static constraints = {
  }
  static mapping = {
          table "groups"
  }
}
