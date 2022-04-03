package in.co.rays.proj0.exception;

/**
 * RecordNotFoundException thrown when a record not found occurred
 * 
 * @author Tanvi Singh
 * 
 */

public class RecordNotFoundException extends Exception {
	
	private static final long serialVersionUID = 1L;

    /**
     * @param msg
     * Error message
     */
    public RecordNotFoundException(String msg) {
        super(msg);

    }
}
