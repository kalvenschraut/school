/**
 * Created by schra447 on 4/5/16.
 */
public class structureEmptyException extends RuntimeException {
    public structureEmptyException(){super();}
    public structureEmptyException(String message){super(message);}
    public structureEmptyException(String message, Throwable cause) { super(message, cause); }
    public structureEmptyException(Throwable cause) { super(cause); }
}
