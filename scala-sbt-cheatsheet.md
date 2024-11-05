### Create a new project
```bash
sbt new scala/scalatest-example.g8
```
### Dependencies
Specifying multiple dependencies one by one in build.sbt:
```bash
name         := "hello-world"
scalaVersion := "2.11.8"
libraryDependencies += "org.apache.commons" % "commons-lang3" % "3.4"
libraryDependencies += "org.apache.commons" % "commons-io" % "1.3.2"
```
Alternatively, you can also specify them as a `Seq`
```bash
name         := "hello-world"
scalaVersion := "2.11.8"
libraryDependencies ++= {
  Seq(
    "org.apache.commons" % "commons-lang3" % "3.4",
    "org.apache.commons" % "commons-io" % "1.3.2"
  )
}
```
### Commands
```bash
sbt run                                      # runs your program
sbt sbtVersion                               # displays sbt version
sbt console                                  # opens REPL console
sbt compile                                  # compiles project
sbt clean                                    # clean
sbt "test-only org.yourcompany.YourTestSpec" # runs a single test
sbt test                                     # runs every tests
sbt ";clean ;compile; run"                   # combines multiple commands in a single invocation
```
### Create a JAR
```bash
sbt package
```
A fat JAR with all dependencies. In `project/plugins.sbt` add
```
addSbtPlugin("com.eed3si9n" % "sbt-assembly" % "0.15.0")
```
Run
```bash
sbt assembly
```
