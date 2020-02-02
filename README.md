# BoltTaskgen

A tool for generating Bolt Task skeletons from Bolt Task metadata.


## Usage

Run `bolt-taskgen` and use the `--task` parameter to sepecify a metadata
file to generate the skeleton from:

```
bolt-taskgen --task path/to/your/module/tasks/some_task.json
```

A Ruby task skeleton will be printed to STDOUT. Complete the task by providing
an implementation for the `def main` method.


## How it Works

Under the covers, the tool uses the Ruby [`parser` gem][parser] to re-write
its own source code: re-naming some modules, stripping out the task generation
logic, and then re-writing the OptionParser specification to match the
`parameters` defined in the Bolt task metadata.

It's all too clever by half and is mostly an academic exercise in AST
manipulation. Most folks should just use `pdk new task`.

[parser]: https://rubygems.org/gems/parser
