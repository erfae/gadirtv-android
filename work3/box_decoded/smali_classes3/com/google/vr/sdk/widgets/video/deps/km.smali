.class public final Lcom/google/vr/sdk/widgets/video/deps/km;
.super Ljava/lang/Object;
.source "DefaultHlsExtractorFactory.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/kp;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cr;Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/l;Ljava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/pp;Ljava/util/Map;)Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/cr;",
            "Landroid/net/Uri;",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/cb;",
            "Lcom/google/vr/sdk/widgets/video/deps/pp;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/util/Pair<",
            "Lcom/google/vr/sdk/widgets/video/deps/cr;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, ""

    .line 6
    :cond_0
    iget-object p7, p3, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    const-string v0, "text/vtt"

    invoke-virtual {v0, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p7, :cond_d

    const-string p7, ".webvtt"

    .line 7
    invoke-virtual {p2, p7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p7

    if-nez p7, :cond_d

    const-string p7, ".vtt"

    .line 8
    invoke-virtual {p2, p7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p7

    if-eqz p7, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string p7, ".aac"

    .line 10
    invoke-virtual {p2, p7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p7

    if-eqz p7, :cond_2

    .line 12
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fc;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/fc;-><init>()V

    goto/16 :goto_6

    :cond_2
    const-string p7, ".ac3"

    .line 13
    invoke-virtual {p2, p7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p7

    if-nez p7, :cond_c

    const-string p7, ".ec3"

    .line 14
    invoke-virtual {p2, p7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p7

    if-eqz p7, :cond_3

    goto/16 :goto_3

    :cond_3
    const-string p7, ".mp3"

    .line 17
    invoke-virtual {p2, p7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p7

    if-eqz p7, :cond_4

    .line 19
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/dt;

    const-wide/16 p2, 0x0

    invoke-direct {p1, v1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/dt;-><init>(IJ)V

    goto/16 :goto_6

    :cond_4
    if-eqz p1, :cond_5

    goto/16 :goto_5

    :cond_5
    const-string p1, ".mp4"

    .line 22
    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p7

    if-nez p7, :cond_a

    .line 23
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p7

    add-int/lit8 p7, p7, -0x4

    const-string v0, ".m4"

    invoke-virtual {p2, v0, p7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p7

    if-nez p7, :cond_a

    .line 24
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p7

    add-int/lit8 p7, p7, -0x5

    invoke-virtual {p2, p1, p7}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/16 p1, 0x10

    if-eqz p4, :cond_7

    const/16 p1, 0x30

    goto :goto_0

    :cond_7
    const/4 p2, 0x0

    const-string p4, "application/cea-608"

    .line 31
    invoke-static {p2, p4, v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object p2

    .line 32
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    .line 33
    :goto_0
    iget-object p2, p3, Lcom/google/vr/sdk/widgets/video/deps/l;->d:Ljava/lang/String;

    .line 34
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_9

    .line 35
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/pb;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p5, "audio/mp4a-latm"

    invoke-virtual {p5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8

    or-int/lit8 p1, p1, 0x2

    .line 37
    :cond_8
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/pb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "video/avc"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    or-int/lit8 p1, p1, 0x4

    .line 39
    :cond_9
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/gb;

    new-instance p3, Lcom/google/vr/sdk/widgets/video/deps/ff;

    invoke-direct {p3, p1, p4}, Lcom/google/vr/sdk/widgets/video/deps/ff;-><init>(ILjava/util/List;)V

    const/4 p1, 0x2

    invoke-direct {p2, p1, p6, p3}, Lcom/google/vr/sdk/widgets/video/deps/gb;-><init>(ILcom/google/vr/sdk/widgets/video/deps/pp;Lcom/google/vr/sdk/widgets/video/deps/gd$c;)V

    move-object p1, p2

    goto :goto_5

    .line 25
    :cond_a
    :goto_1
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/eb;

    const/4 v3, 0x0

    const/4 v5, 0x0

    if-eqz p4, :cond_b

    goto :goto_2

    .line 26
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p4

    :goto_2
    move-object v7, p4

    move-object v2, p1

    move-object v4, p6

    move-object v6, p5

    invoke-direct/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/eb;-><init>(ILcom/google/vr/sdk/widgets/video/deps/pp;Lcom/google/vr/sdk/widgets/video/deps/ei;Lcom/google/vr/sdk/widgets/video/deps/cb;Ljava/util/List;)V

    goto :goto_5

    .line 16
    :cond_c
    :goto_3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ez;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/ez;-><init>()V

    goto :goto_6

    .line 9
    :cond_d
    :goto_4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/la;

    iget-object p2, p3, Lcom/google/vr/sdk/widgets/video/deps/l;->z:Ljava/lang/String;

    invoke-direct {p1, p2, p6}, Lcom/google/vr/sdk/widgets/video/deps/la;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/pp;)V

    :goto_5
    const/4 v0, 0x0

    .line 40
    :goto_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method
