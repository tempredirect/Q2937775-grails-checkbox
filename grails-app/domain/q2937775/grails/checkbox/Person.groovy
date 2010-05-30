package q2937775.grails.checkbox

class Person {
  String title

  List<Group> groups = new ArrayList()
  static hasMany = [groups: Group]
  
  static constraints = {
  }
}
