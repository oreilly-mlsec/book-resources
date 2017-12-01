package cmn;

import java.util.LinkedHashMap;
import java.util.Map.Entry;

final class i extends LinkedHashMap {
    i() {
    }

    protected final boolean removeEldestEntry(Entry entry) {
        return size() > 100;
    }
}
