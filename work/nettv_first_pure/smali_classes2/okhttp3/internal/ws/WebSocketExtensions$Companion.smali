.class public final Lokhttp3/internal/ws/WebSocketExtensions$Companion;
.super Ljava/lang/Object;
.source "WebSocketExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/WebSocketExtensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\t"
    }
    d2 = {
        "Lokhttp3/internal/ws/WebSocketExtensions$Companion;",
        "",
        "()V",
        "HEADER_WEB_SOCKET_EXTENSION",
        "",
        "parse",
        "Lokhttp3/internal/ws/WebSocketExtensions;",
        "responseHeaders",
        "Lokhttp3/Headers;",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lokhttp3/internal/ws/WebSocketExtensions$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final parse(Lokhttp3/Headers;)Lokhttp3/internal/ws/WebSocketExtensions;
    .locals 20
    .param p1    # Lokhttp3/Headers;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "responseHeaders"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p1 .. p1}, Lokhttp3/Headers;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v4, v1, :cond_12

    .line 2
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    const-string v12, "Sec-WebSocket-Extensions"

    invoke-static {v5, v12}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    invoke-virtual {v0, v4}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    const/16 v18, 0x1

    const/4 v15, 0x0

    .line 4
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v15, v12, :cond_11

    const/16 v13, 0x2c

    const/16 v16, 0x0

    const/16 v17, 0x4

    const/16 v19, 0x0

    move-object v12, v5

    move v14, v15

    move v2, v15

    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v17, v19

    .line 5
    invoke-static/range {v12 .. v17}, Lokhttp3/internal/Util;->delimiterOffset$default(Ljava/lang/String;CIIILjava/lang/Object;)I

    move-result v12

    const/16 v13, 0x3b

    .line 6
    invoke-static {v5, v13, v2, v12}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v14

    .line 7
    invoke-static {v5, v2, v14}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v15, v14, 0x1

    const-string v14, "permessage-deflate"

    .line 8
    invoke-static {v2, v14}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v6, :cond_2

    :cond_1
    :goto_2
    const/4 v11, 0x1

    :cond_2
    :goto_3
    if-ge v15, v12, :cond_f

    .line 9
    invoke-static {v5, v13, v15, v12}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v2

    const/16 v6, 0x3d

    .line 10
    invoke-static {v5, v6, v15, v2}, Lokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;CII)I

    move-result v6

    .line 11
    invoke-static {v5, v15, v6}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v14

    if-ge v6, v2, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 12
    invoke-static {v5, v6, v2}, Lokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lkotlin/text/StringsKt;->removeSurrounding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_3
    const/4 v6, 0x0

    :goto_4
    add-int/lit8 v15, v2, 0x1

    const-string v2, "client_max_window_bits"

    .line 13
    invoke-static {v14, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v7, :cond_4

    const/4 v11, 0x1

    :cond_4
    if-eqz v6, :cond_5

    .line 14
    invoke-static {v6}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    move-object v7, v2

    goto :goto_5

    :cond_5
    const/4 v7, 0x0

    :goto_5
    if-nez v7, :cond_2

    goto :goto_2

    :cond_6
    const-string v2, "client_no_context_takeover"

    .line 15
    invoke-static {v14, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v8, :cond_7

    const/4 v11, 0x1

    :cond_7
    if-eqz v6, :cond_8

    const/4 v11, 0x1

    :cond_8
    const/4 v8, 0x1

    goto :goto_3

    :cond_9
    const-string v2, "server_max_window_bits"

    .line 16
    invoke-static {v14, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    if-eqz v9, :cond_a

    const/4 v11, 0x1

    :cond_a
    if-eqz v6, :cond_b

    .line 17
    invoke-static {v6}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    move-object v9, v2

    goto :goto_6

    :cond_b
    const/4 v9, 0x0

    :goto_6
    if-nez v9, :cond_2

    goto :goto_2

    :cond_c
    const-string v2, "server_no_context_takeover"

    .line 18
    invoke-static {v14, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v10, :cond_d

    const/4 v11, 0x1

    :cond_d
    if-eqz v6, :cond_e

    const/4 v11, 0x1

    :cond_e
    const/4 v10, 0x1

    goto :goto_3

    :cond_f
    const/4 v6, 0x1

    goto/16 :goto_1

    :cond_10
    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_11
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 19
    :cond_12
    new-instance v0, Lokhttp3/internal/ws/WebSocketExtensions;

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lokhttp3/internal/ws/WebSocketExtensions;-><init>(ZLjava/lang/Integer;ZLjava/lang/Integer;ZZ)V

    return-object v0
.end method
