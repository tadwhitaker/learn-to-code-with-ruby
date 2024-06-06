import codeql.ruby.AST

from IfExpr ifexpr
where
not exists(ifexpr.getThen())
select ifexpr, "This 'if' expression is redundant."