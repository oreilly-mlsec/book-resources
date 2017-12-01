package u.aly;

/* compiled from: Gender */
public enum ay implements cn {
    MALE(0),
    FEMALE(1),
    UNKNOWN(2);
    
    private final int d;

    private ay(int i) {
        this.d = i;
    }

    public int a() {
        return this.d;
    }

    public static ay a(int i) {
        switch (i) {
            case 0:
                return MALE;
            case 1:
                return FEMALE;
            case 2:
                return UNKNOWN;
            default:
                return null;
        }
    }
}
