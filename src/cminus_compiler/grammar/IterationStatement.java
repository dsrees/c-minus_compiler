package cminus_compiler.grammar;

/** 
 *
 * @authors Daniel Rees, Nathan Kallman
 * @version 1.0
 * File: IterationStatement.java
 * Created: Feb 2015	
 *
 * Description:
 */
public class IterationStatement extends Statement {
    
    private Expression expression;
    private Statement statement;
    
    public IterationStatement() {
        this(null, null);
    }

    public IterationStatement(Expression expression, Statement statement) {
        this.expression = expression;
        this.statement = statement;
    }
    
    public Expression getExpression() {
        return expression;
    }

    public Statement getStatement() {
        return statement;
    }

    public void setExpression(Expression expression) {
        this.expression = expression;
    }

    public void setStatement(Statement statement) {
        this.statement = statement;
    }
    
    @Override
    public String printTree(int indent) {
        StringBuilder builder = new StringBuilder();
        builder.append(indent(indent));
        
        builder.append("while");
        builder.append(expression.printTree(indent+1));
        builder.append(statement.printTree(indent+1));
        
        return builder.toString();
    }
}
