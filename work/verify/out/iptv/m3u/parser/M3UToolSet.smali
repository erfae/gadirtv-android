.class public Liptv/m3u/parser/M3UToolSet;
.super Ljava/lang/Object;
.source "M3UToolSet.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Ljava/lang/String;)Liptv/m3u/parser/M3UFile;
    .registers 4

    .line 1
    new-instance v0, Liptv/m3u/parser/M3UFile;

    invoke-direct {v0}, Liptv/m3u/parser/M3UFile;-><init>()V

    .line 2
    new-instance v1, Liptv/m3u/parser/M3UToolSet$1;

    invoke-direct {v1, v0}, Liptv/m3u/parser/M3UToolSet$1;-><init>(Liptv/m3u/parser/M3UFile;)V

    .line 3
    invoke-static {}, Liptv/m3u/parser/M3UParser;->getInstance()Liptv/m3u/parser/M3UParser;

    move-result-object v2

    invoke-virtual {v2, p0, v1}, Liptv/m3u/parser/M3UParser;->parse(Ljava/lang/String;Liptv/m3u/parser/M3UHandler;)V

    return-object v0
.end method
