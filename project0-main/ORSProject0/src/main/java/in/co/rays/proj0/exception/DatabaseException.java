package in.co.rays.proj0.exception;

/**
 * DatabaseException is propogated by DAO classes when an unhandled Database
 * exception occurred
 * 
 * @author Tanvi Singh
 */

public class DatabaseException extends Exception {

	private static final long serialVersionUID = 1L;

	/**
     * @param msg
     * Error message
     */
    public DatabaseException(String msg) {
        super(msg);
    }

}