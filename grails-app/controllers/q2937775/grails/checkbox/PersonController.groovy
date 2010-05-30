package q2937775.grails.checkbox

class PersonController {

  def index = {
    redirect action:'form'
  }

  def form = {
    def person = new Person()
    person.groups.add( new Group() )
    return ["person": person]
  }

  def handleForm = {
    def person = new Person( params )
    println(" person = ${person}  person.groups[0] = ${person.groups[0].isHidden}")

    render( view:'form', model:["person":person] )
  }

}
