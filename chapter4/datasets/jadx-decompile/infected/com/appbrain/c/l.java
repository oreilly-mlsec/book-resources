package com.appbrain.c;

import java.io.IOException;

public final class l extends IOException {
    public l(String str) {
        super(str);
    }

    static l a() {
        return new l("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
    }

    static l b() {
        return new l("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    static l c() {
        return new l("CodedInputStream encountered a malformed varint.");
    }

    static l d() {
        return new l("Protocol message contained an invalid tag (zero).");
    }

    static l e() {
        return new l("Protocol message end-group tag did not match expected tag.");
    }

    static l f() {
        return new l("Protocol message tag had invalid wire type.");
    }

    static l g() {
        return new l("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    static l h() {
        return new l("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }
}
