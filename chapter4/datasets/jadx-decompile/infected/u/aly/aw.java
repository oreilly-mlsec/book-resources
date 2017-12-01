package u.aly;

/* compiled from: ErrorSource */
public enum aw implements cn {
    LEGIT(1),
    ALIEN(2);
    
    private final int c;

    private aw(int i) {
        this.c = i;
    }

    public int a() {
        return this.c;
    }

    public static aw a(int i) {
        switch (i) {
            case 1:
                return LEGIT;
            case 2:
                return ALIEN;
            default:
                return null;
        }
    }
}
