**Scala SBT (Simple Build Tool) Cheat Sheet**

## **Basic Commands**
- `sbt new scala/hello-world.g8` - Create a new Scala project.
- `sbt compile` - Compile the project.
- `sbt run` - Run the project.
- `sbt test` - Run tests.
- `sbt clean` - Clean compiled files.
- `sbt package` - Package the project into a JAR.
- `sbt publishLocal` - Publish to the local Ivy repository.
- `sbt console` - Start a Scala REPL with project dependencies.
- `sbt reload` - Reload the build definition.
- `sbt update` - Update dependencies.
- `sbt dependencyTree` - Show project dependencies.

## **Common SBT Tasks**
- `sbt <task>` - Run any defined task.
- `sbt -v <task>` - Run a task in verbose mode.
- `sbt --error <task>` - Suppress logs except errors.
- `sbt -mem 2048` - Set memory allocation for SBT.

## **Working with Dependencies**
- Add dependencies in `build.sbt`:
  ```scala
  libraryDependencies += "org.typelevel" %% "cats-core" % "2.9.0"
  ```
- Use `%%` for Scala version compatibility.
- `sbt evicted` - Show evicted dependencies.

## **Multi-Project Builds**
- Define projects in `build.sbt`:
  ```scala
  lazy val core = (project in file("core"))
  lazy val app = (project in file("app")).dependsOn(core)
  ```

## **Custom Tasks**
- Define tasks in `build.sbt`:
  ```scala
  lazy val hello = taskKey[Unit]("Prints Hello")
  hello := println("Hello, SBT!")
  ```
- Run with `sbt hello`

## **Configuration Files**
- `build.sbt` - Main build definition.
- `project/plugins.sbt` - Define SBT plugins.
- `project/build.properties` - Specify SBT version.

## **Publishing Artifacts**
- Add publishing settings in `build.sbt`:
  ```scala
  publishMavenStyle := true
  publishTo := Some(Resolver.file("file", new File("/path/to/repo")))
  ```
- `sbt publish` - Publish to the configured repository.

## **Performance Optimization**
- Enable parallel execution:
  ```scala
  parallelExecution in Test := false
  ```
- Use a global SBT directory:
  ```sh
  export SBT_OPTS="-Dsbt.global.base=/path/to/global"
  ```
- Run SBT in batch mode for CI/CD: `sbt --batch compile`

## **Troubleshooting**
- `sbt clean update compile` - Fix dependency issues.
- `sbt -debug` - Run in debug mode.
- Check `project/build.properties` for correct SBT version.

