.class public final Lokhttp3/logging/internal/Utf8Kt;
.super Ljava/lang/Object;
.source "utf8.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "isProbablyUtf8",
        "",
        "Lokio/Buffer;",
        "okhttp-logging-interceptor"
    }
    k = 0x2
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method public static final isProbablyUtf8(Lokio/Buffer;)Z
    .registers 9
    .param p0    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$isProbablyUtf8"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :try_start_6
    new-instance v7, Lokio/Buffer;

    invoke-direct {v7}, Lokio/Buffer;-><init>()V

    .line 2
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x40

    invoke-static {v1, v2, v3, v4}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide v5

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, v7

    .line 3
    invoke-virtual/range {v1 .. v6}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    const/16 p0, 0x10

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, p0, :cond_3c

    .line 4
    invoke-virtual {v7}, Lokio/Buffer;->exhausted()Z

    move-result v2

    if-eqz v2, :cond_28

    goto :goto_3c

    .line 5
    :cond_28
    invoke-virtual {v7}, Lokio/Buffer;->readUtf8CodePoint()I

    move-result v2

    .line 6
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v2
    :try_end_36
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_36} :catch_3e

    if-nez v2, :cond_39

    return v0

    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_3c
    :goto_3c
    const/4 p0, 0x1

    return p0

    :catch_3e
    return v0
.end method
