.class public final Lcom/google/ads/interactivemedia/v3/internal/vd;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/aat;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xml/sax/helpers/DefaultHandler;",
        "Lcom/google/ads/interactivemedia/v3/internal/aat<",
        "Lcom/google/ads/interactivemedia/v3/internal/vb;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field private final d:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\d+)(?:/(\\d+))?"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/vd;->a:Ljava/util/regex/Pattern;

    const-string v0, "CC([1-4])=.*"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/vd;->b:Ljava/util/regex/Pattern;

    const-string v0, "([1-9]|[1-5][0-9]|6[0-3])=.*"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/vd;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 4
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 5
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/vd;->d:Lorg/xmlpull/v1/XmlPullParserFactory;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    .line 6
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static a(Lorg/xmlpull/v1/XmlPullParser;F)F
    .locals 2

    const/4 v0, 0x0

    const-string v1, "frameRate"

    .line 392
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/vd;->a:Ljava/util/regex/Pattern;

    .line 393
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 394
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 395
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x2

    .line 396
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 397
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p1, p1

    .line 398
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    goto :goto_0

    :cond_0
    int-to-float p1, p1

    :cond_1
    :goto_0
    return p1
.end method

.method private static a(II)I
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return p1

    :cond_0
    if-ne p1, v0, :cond_1

    return p0

    :cond_1
    if-ne p0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 10
    :goto_0
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    return p0
.end method

.method protected static final a(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "supplementary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    goto/16 :goto_1

    :sswitch_1
    const-string v1, "emergency"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_2
    const-string v1, "commentary"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "caption"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v1, "sign"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x8

    goto :goto_1

    :sswitch_5
    const-string v1, "main"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_1

    :sswitch_6
    const-string v1, "dub"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_7
    const-string v1, "alternate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :sswitch_8
    const-string v1, "enhanced-audio-intelligibility"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0xa

    goto :goto_1

    :sswitch_9
    const-string v1, "description"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x9

    goto :goto_1

    :sswitch_a
    const-string v1, "subtitle"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x7

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 p0, 0x800

    return p0

    :pswitch_1
    const/16 p0, 0x200

    return p0

    :pswitch_2
    const/16 p0, 0x100

    return p0

    :pswitch_3
    const/16 p0, 0x80

    return p0

    :pswitch_4
    const/16 p0, 0x40

    return p0

    :pswitch_5
    const/16 p0, 0x20

    return p0

    :pswitch_6
    const/16 p0, 0x10

    return p0

    :pswitch_7
    return v3

    :pswitch_8
    return v4

    :pswitch_9
    return v2

    :pswitch_a
    return v5

    :sswitch_data_0
    .sparse-switch
        -0x7ad0b3e8 -> :sswitch_a
        -0x66ca7c04 -> :sswitch_9
        -0x5e3a5c50 -> :sswitch_8
        -0x53ecbf86 -> :sswitch_7
        0x185f1 -> :sswitch_6
        0x3305b9 -> :sswitch_5
        0x35ddbd -> :sswitch_4
        0x20ef99e6 -> :sswitch_3
        0x3597fba9 -> :sswitch_2
        0x6118c591 -> :sswitch_1
        0x6e96bb0f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static final a(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/ve;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 411
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 412
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/ve;

    .line 413
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/ve;->a:Ljava/lang/String;

    const-string v3, "http://dashif.org/guidelines/trickmode"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit16 v1, v1, 0x4000

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method protected static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    .line 400
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return p2

    .line 401
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static final a(Ljava/util/List;JJIJ)J
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/vp;",
            ">;JJIJ)J"
        }
    .end annotation

    if-ltz p5, :cond_0

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    sub-long/2addr p6, p1

    .line 7
    invoke-static {p6, p7, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(JJ)J

    move-result-wide p5

    long-to-int p5, p5

    :goto_0
    const/4 p6, 0x0

    :goto_1
    if-ge p6, p5, :cond_1

    .line 0
    new-instance p7, Lcom/google/ads/interactivemedia/v3/internal/vp;

    .line 8
    invoke-direct {p7, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/vp;-><init>(JJ)V

    .line 9
    invoke-interface {p0, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long/2addr p1, p3

    add-int/lit8 p6, p6, 0x1

    goto :goto_1

    :cond_1
    return-wide p1
.end method

.method protected static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    .line 390
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    .line 391
    :cond_0
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->f(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method protected static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/ve;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "schemeIdUri"

    const-string v1, ""

    .line 384
    invoke-static {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    const/4 v2, 0x0

    .line 385
    invoke-static {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "id"

    .line 386
    invoke-static {p0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 387
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 388
    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/ve;

    .line 389
    invoke-direct {p0, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ve;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method protected static final a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/vt;)Lcom/google/ads/interactivemedia/v3/internal/vt;
    .locals 1

    const/4 v0, 0x0

    .line 478
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 479
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/vt;->a(Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/vt;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method protected static a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 472
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    return-object p0
.end method

.method protected static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J
    .locals 1

    const/4 v0, 0x0

    .line 402
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-wide p2

    .line 403
    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method protected static final b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/vi;
    .locals 7

    const/4 v0, 0x0

    .line 404
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 405
    invoke-interface {p0, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 p1, -0x1

    if-eqz p0, :cond_0

    const-string v0, "-"

    .line 406
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 407
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 408
    array-length v3, p0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 p1, 0x1

    .line 409
    aget-object p0, p0, p1

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    sub-long/2addr p0, v0

    const-wide/16 v3, 0x1

    add-long/2addr p0, v3

    move-wide v5, p0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :cond_1
    move-wide v5, p1

    :goto_0
    move-wide v3, v0

    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/vi;

    move-object v1, p0

    .line 410
    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/vi;-><init>(Ljava/lang/String;JJ)V

    return-object p0
.end method

.method protected static b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    .line 473
    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 474
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 475
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 476
    :cond_1
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 477
    :goto_0
    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0
.end method

.method public static b(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 11
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 12
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 13
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected static final c(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "schemeIdUri"

    const/4 v1, 0x0

    .line 337
    invoke-static {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "urn:mpeg:dash:23003:3:audio_channel_configuration:2011"

    .line 338
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "value"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eqz v2, :cond_0

    .line 339
    invoke-static {p0, v3, v6}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    goto :goto_3

    :cond_0
    const-string v2, "tag:dolby.com,2014:dash:audio_channel_configuration:2011"

    .line 340
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "urn:dolby:dash:audio_channel_configuration:2011"

    .line 341
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    :cond_1
    invoke-interface {p0, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    const/4 v4, -0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "fa01"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_2

    :sswitch_1
    const-string v1, "f801"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_2

    :sswitch_2
    const-string v1, "a000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :sswitch_3
    const-string v1, "4000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, -0x1

    :goto_2
    if-eqz v0, :cond_7

    if-eq v0, v5, :cond_8

    if-eq v0, v4, :cond_6

    if-eq v0, v2, :cond_5

    goto :goto_0

    :cond_5
    const/16 v4, 0x8

    goto :goto_3

    :cond_6
    const/4 v4, 0x6

    goto :goto_3

    :cond_7
    const/4 v4, 0x1

    .line 343
    :cond_8
    :goto_3
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "AudioChannelConfiguration"

    .line 344
    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v4

    :sswitch_data_0
    .sparse-switch
        0x185d7c -> :sswitch_3
        0x2cd22f -> :sswitch_2
        0x2f3613 -> :sswitch_1
        0x2fcffc -> :sswitch_0
    .end sparse-switch
.end method

.method protected static final c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BaseURL"

    .line 345
    invoke-static {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation

    const/4 v0, 0x0

    .line 382
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-wide p0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide p0

    .line 383
    :cond_0
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->g(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method protected static final d(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/internal/hj;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "schemeIdUri"

    .line 346
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 347
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x1d2c5beb

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_2

    const v4, 0x2d06c692

    if-eq v3, v4, :cond_1

    const v4, 0x6c0c9d2a

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "urn:mpeg:dash:mp4protection:2011"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const-string v3, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    const-string v3, "urn:uuid:9a04f079-9840-4286-ab92-e65be0885f95"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_6

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_4

    goto :goto_4

    .line 348
    :cond_4
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/bk;->c:Ljava/util/UUID;

    goto :goto_2

    .line 349
    :cond_5
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/bk;->d:Ljava/util/UUID;

    :goto_2
    move-object v3, v0

    goto :goto_5

    :cond_6
    const-string v1, "value"

    .line 350
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 352
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "00000000-0000-0000-0000-000000000000"

    .line 353
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string v4, "\\s+"

    .line 354
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 355
    array-length v4, v3

    new-array v4, v4, [Ljava/util/UUID;

    const/4 v5, 0x0

    .line 356
    :goto_3
    array-length v6, v3

    if-ge v5, v6, :cond_7

    .line 357
    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 358
    :cond_7
    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/bk;->b:Ljava/util/UUID;

    invoke-static {v3, v4, v0}, Lcom/google/ads/interactivemedia/v3/internal/la;->a(Ljava/util/UUID;[Ljava/util/UUID;[B)[B

    move-result-object v3

    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/bk;->b:Ljava/util/UUID;

    move-object v5, v0

    move-object v8, v3

    move-object v3, v1

    move-object v1, v4

    move-object v4, v8

    goto :goto_6

    :cond_8
    move-object v4, v0

    move-object v5, v4

    move-object v3, v1

    move-object v1, v5

    goto :goto_6

    :cond_9
    :goto_4
    move-object v1, v0

    move-object v3, v1

    :goto_5
    move-object v4, v3

    move-object v5, v4

    .line 359
    :cond_a
    :goto_6
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v6, "ms:laurl"

    .line 360
    invoke-static {p0, v6}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v5, "licenseUrl"

    .line 361
    invoke-interface {p0, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_b
    const/4 v6, 0x4

    if-nez v4, :cond_d

    .line 362
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->d(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 363
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-ne v7, v6, :cond_d

    .line 371
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 372
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/la;->a([B)Ljava/util/UUID;

    move-result-object v4

    if-nez v4, :cond_c

    const-string v1, "MpdParser"

    const-string v6, "Skipping malformed cenc:pssh data"

    .line 373
    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    move-object v4, v0

    goto :goto_7

    :cond_c
    move-object v8, v4

    move-object v4, v1

    move-object v1, v8

    goto :goto_7

    :cond_d
    if-nez v4, :cond_e

    .line 364
    sget-object v7, Lcom/google/ads/interactivemedia/v3/internal/bk;->d:Ljava/util/UUID;

    .line 365
    invoke-virtual {v7, v1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    const-string v7, "mspr:pro"

    .line 366
    invoke-static {p0, v7}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 367
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    if-ne v7, v6, :cond_e

    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/bk;->d:Ljava/util/UUID;

    .line 369
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 370
    invoke-static {v4, v6}, Lcom/google/ads/interactivemedia/v3/internal/la;->a(Ljava/util/UUID;[B)[B

    move-result-object v4

    goto :goto_7

    .line 368
    :cond_e
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_7
    const-string v6, "ContentProtection"

    .line 374
    invoke-static {p0, v6}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    if-eqz v1, :cond_f

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/hj;

    const-string p0, "video/mp4"

    .line 375
    invoke-direct {v0, v1, v5, p0, v4}, Lcom/google/ads/interactivemedia/v3/internal/hj;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 376
    :cond_f
    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method protected static final e(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 2

    const/4 v0, 0x0

    const-string v1, "contentType"

    .line 377
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 378
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "audio"

    .line 379
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "video"

    .line 380
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string v0, "text"

    .line 381
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    :goto_0
    return v1

    :cond_3
    const/4 p0, 0x3

    return p0
.end method


# virtual methods
.method protected final a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/ads/interactivemedia/v3/internal/vi;
    .locals 2

    const-string v0, "sourceURL"

    const-string v1, "range"

    .line 399
    invoke-static {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/vi;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/ads/interactivemedia/v3/internal/vn;J)Lcom/google/ads/interactivemedia/v3/internal/vn;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    const-wide/16 v0, 0x1

    if-eqz v7, :cond_0

    iget-wide v2, v7, Lcom/google/ads/interactivemedia/v3/internal/vn;->h:J

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    const-string v4, "timescale"

    .line 426
    invoke-static {v6, v4, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    if-eqz v7, :cond_1

    iget-wide v2, v7, Lcom/google/ads/interactivemedia/v3/internal/vn;->i:J

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    const-string v4, "presentationTimeOffset"

    .line 427
    invoke-static {v6, v4, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    if-eqz v7, :cond_2

    iget-wide v2, v7, Lcom/google/ads/interactivemedia/v3/internal/vn;->b:J

    goto :goto_2

    :cond_2
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-string v4, "duration"

    .line 428
    invoke-static {v6, v4, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    if-eqz v7, :cond_3

    iget-wide v0, v7, Lcom/google/ads/interactivemedia/v3/internal/vn;->a:J

    :cond_3
    const-string v2, "startNumber"

    .line 429
    invoke-static {v6, v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v15

    const/4 v0, 0x0

    move-object v12, v0

    move-object/from16 v17, v12

    .line 430
    :cond_4
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    .line 431
    invoke-static {v6, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 432
    invoke-virtual/range {p0 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/ads/interactivemedia/v3/internal/vi;

    move-result-object v1

    move-object/from16 v17, v1

    goto :goto_3

    :cond_5
    const-string v1, "SegmentTimeline"

    .line 433
    invoke-static {v6, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v8

    move-wide/from16 v4, p3

    .line 434
    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_3

    :cond_6
    const-string v1, "SegmentURL"

    .line 435
    invoke-static {v6, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v12, :cond_7

    new-instance v12, Ljava/util/ArrayList;

    .line 436
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    :cond_7
    const-string v1, "media"

    const-string v2, "mediaRange"

    .line 437
    invoke-static {v6, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/vi;

    move-result-object v1

    .line 438
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 439
    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_3
    const-string v1, "SegmentList"

    .line 440
    invoke-static {v6, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v7, :cond_c

    if-eqz v17, :cond_9

    goto :goto_4

    .line 441
    :cond_9
    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/vn;->g:Lcom/google/ads/interactivemedia/v3/internal/vi;

    move-object/from16 v17, v1

    :goto_4
    if-eqz v0, :cond_a

    goto :goto_5

    :cond_a
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/vn;->c:Ljava/util/List;

    :goto_5
    if-eqz v12, :cond_b

    goto :goto_6

    :cond_b
    iget-object v12, v7, Lcom/google/ads/interactivemedia/v3/internal/vn;->d:Ljava/util/List;

    :cond_c
    :goto_6
    move-object v1, v12

    move-object/from16 v6, v17

    .line 440
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/vn;

    move-object v5, v2

    move-wide v7, v8

    move-wide v9, v10

    move-wide v11, v15

    move-object v15, v0

    move-object/from16 v16, v1

    .line 441
    invoke-direct/range {v5 .. v16}, Lcom/google/ads/interactivemedia/v3/internal/vn;-><init>(Lcom/google/ads/interactivemedia/v3/internal/vi;JJJJLjava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method protected final a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/ads/interactivemedia/v3/internal/vo;Ljava/util/List;J)Lcom/google/ads/interactivemedia/v3/internal/vo;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/google/ads/interactivemedia/v3/internal/vo;",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/ve;",
            ">;J)",
            "Lcom/google/ads/interactivemedia/v3/internal/vo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    const-wide/16 v0, 0x1

    if-eqz v7, :cond_0

    iget-wide v2, v7, Lcom/google/ads/interactivemedia/v3/internal/vo;->h:J

    goto :goto_0

    :cond_0
    move-wide v2, v0

    :goto_0
    const-string v4, "timescale"

    .line 442
    invoke-static {v6, v4, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    if-eqz v7, :cond_1

    iget-wide v2, v7, Lcom/google/ads/interactivemedia/v3/internal/vo;->i:J

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_1
    const-string v4, "presentationTimeOffset"

    .line 443
    invoke-static {v6, v4, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v10

    if-eqz v7, :cond_2

    iget-wide v2, v7, Lcom/google/ads/interactivemedia/v3/internal/vo;->b:J

    goto :goto_2

    :cond_2
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_2
    const-string v4, "duration"

    .line 444
    invoke-static {v6, v4, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v15

    if-eqz v7, :cond_3

    iget-wide v0, v7, Lcom/google/ads/interactivemedia/v3/internal/vo;->a:J

    :cond_3
    const-string v2, "startNumber"

    .line 445
    invoke-static {v6, v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v12

    const/4 v0, 0x0

    .line 446
    :goto_3
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    move-object/from16 v1, p3

    .line 447
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/ve;

    .line 448
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/ve;->a:Ljava/lang/String;

    const-string v4, "http://dashif.org/guidelines/last-segment-number"

    .line 449
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 450
    iget-object v0, v2, Lcom/google/ads/interactivemedia/v3/internal/ve;->b:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const-wide/16 v0, -0x1

    :goto_4
    move-wide/from16 v17, v0

    const/4 v0, 0x0

    if-eqz v7, :cond_6

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/vo;->e:Lcom/google/ads/interactivemedia/v3/internal/vt;

    goto :goto_5

    :cond_6
    move-object v1, v0

    :goto_5
    const-string v2, "media"

    .line 451
    invoke-static {v6, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/vt;)Lcom/google/ads/interactivemedia/v3/internal/vt;

    move-result-object v19

    if-eqz v7, :cond_7

    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/vo;->d:Lcom/google/ads/interactivemedia/v3/internal/vt;

    goto :goto_6

    :cond_7
    move-object v1, v0

    :goto_6
    const-string v2, "initialization"

    .line 452
    invoke-static {v6, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/vt;)Lcom/google/ads/interactivemedia/v3/internal/vt;

    move-result-object v20

    move-object v14, v0

    .line 453
    :cond_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    .line 454
    invoke-static {v6, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 455
    invoke-virtual/range {p0 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/ads/interactivemedia/v3/internal/vi;

    move-result-object v1

    move-object v14, v1

    goto :goto_7

    :cond_9
    const-string v1, "SegmentTimeline"

    .line 456
    invoke-static {v6, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v8

    move-wide/from16 v4, p4

    .line 457
    invoke-virtual/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;

    move-result-object v0

    goto :goto_7

    .line 458
    :cond_a
    invoke-static/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_7
    const-string v1, "SegmentTemplate"

    .line 459
    invoke-static {v6, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz v7, :cond_d

    if-eqz v14, :cond_b

    goto :goto_8

    .line 460
    :cond_b
    iget-object v14, v7, Lcom/google/ads/interactivemedia/v3/internal/vo;->g:Lcom/google/ads/interactivemedia/v3/internal/vi;

    :goto_8
    if-eqz v0, :cond_c

    goto :goto_9

    :cond_c
    iget-object v0, v7, Lcom/google/ads/interactivemedia/v3/internal/vo;->c:Ljava/util/List;

    :cond_d
    :goto_9
    move-object v6, v14

    .line 459
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/vo;

    move-object v5, v1

    move-wide v7, v8

    move-wide v9, v10

    move-wide v11, v12

    move-wide/from16 v13, v17

    move-object/from16 v17, v0

    move-object/from16 v18, v20

    .line 460
    invoke-direct/range {v5 .. v19}, Lcom/google/ads/interactivemedia/v3/internal/vo;-><init>(Lcom/google/ads/interactivemedia/v3/internal/vi;JJJJJLjava/util/List;Lcom/google/ads/interactivemedia/v3/internal/vt;Lcom/google/ads/interactivemedia/v3/internal/vt;)V

    return-object v1
.end method

.method protected final a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/ads/interactivemedia/v3/internal/vq;)Lcom/google/ads/interactivemedia/v3/internal/vq;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-wide/16 v2, 0x1

    if-eqz v1, :cond_0

    iget-wide v4, v1, Lcom/google/ads/interactivemedia/v3/internal/vq;->h:J

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :goto_0
    const-string v6, "timescale"

    .line 414
    invoke-static {v0, v6, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v9

    const-wide/16 v4, 0x0

    if-eqz v1, :cond_1

    iget-wide v6, v1, Lcom/google/ads/interactivemedia/v3/internal/vq;->i:J

    goto :goto_1

    :cond_1
    move-wide v6, v4

    :goto_1
    const-string v8, "presentationTimeOffset"

    .line 415
    invoke-static {v0, v8, v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v11

    if-eqz v1, :cond_2

    iget-wide v6, v1, Lcom/google/ads/interactivemedia/v3/internal/vq;->a:J

    goto :goto_2

    :cond_2
    move-wide v6, v4

    :goto_2
    if-eqz v1, :cond_3

    iget-wide v4, v1, Lcom/google/ads/interactivemedia/v3/internal/vq;->b:J

    :cond_3
    const/4 v8, 0x0

    const-string v13, "indexRange"

    .line 416
    invoke-interface {v0, v8, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    const-string v4, "-"

    .line 417
    invoke-virtual {v13, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 418
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v7, 0x1

    .line 419
    aget-object v4, v4, v7

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    sub-long/2addr v13, v5

    add-long/2addr v13, v2

    move-wide v15, v13

    move-wide v13, v5

    goto :goto_3

    :cond_4
    move-wide v15, v4

    move-wide v13, v6

    :goto_3
    if-eqz v1, :cond_5

    iget-object v8, v1, Lcom/google/ads/interactivemedia/v3/internal/vq;->g:Lcom/google/ads/interactivemedia/v3/internal/vi;

    .line 420
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v1, "Initialization"

    .line 421
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 422
    invoke-virtual/range {p0 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/ads/interactivemedia/v3/internal/vi;

    move-result-object v1

    move-object v8, v1

    goto :goto_4

    .line 423
    :cond_6
    invoke-static/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_4
    const-string v1, "SegmentBase"

    .line 424
    invoke-static {v0, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/vq;

    move-object v7, v0

    .line 425
    invoke-direct/range {v7 .. v16}, Lcom/google/ads/interactivemedia/v3/internal/vq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/vi;JJJJ)V

    return-object v0
.end method

.method public final bridge synthetic a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/ads/interactivemedia/v3/internal/vb;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lorg/xmlpull/v1/XmlPullParser;JJ)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "JJ)",
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/vp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v9, Ljava/util/ArrayList;

    .line 461
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x0

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v1, 0x0

    move-wide v2, v1

    move-wide v4, v11

    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 462
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v7, "S"

    .line 463
    invoke-static {v0, v7}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "t"

    .line 464
    invoke-static {v0, v7, v11, v12}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v13

    if-eqz v1, :cond_1

    move-object v1, v9

    move-wide v7, v13

    .line 465
    invoke-static/range {v1 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Ljava/util/List;JJIJ)J

    move-result-wide v2

    :cond_1
    cmp-long v1, v13, v11

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move-wide v13, v2

    :goto_0
    const-string v1, "d"

    .line 466
    invoke-static {v0, v1, v11, v12}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "r"

    .line 467
    invoke-static {v0, v3, v10}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    move-wide v4, v1

    move v6, v3

    move-wide v2, v13

    const/4 v1, 0x1

    goto :goto_1

    .line 468
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_1
    const-string v7, "SegmentTimeline"

    .line 469
    invoke-static {v0, v7}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v1, :cond_4

    const-wide/16 v17, 0x3e8

    move-wide/from16 v13, p4

    move-wide/from16 v15, p2

    .line 470
    invoke-static/range {v13 .. v18}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(JJJ)J

    move-result-wide v7

    move-object v0, v9

    move-wide v1, v2

    move-wide v3, v4

    move v5, v6

    move-wide v6, v7

    .line 471
    invoke-static/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Ljava/util/List;JJIJ)J

    :cond_4
    return-object v9
.end method

.method public final b(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/ads/interactivemedia/v3/internal/vb;
    .locals 122
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    const-string v8, "ProgramInformation"

    const-string v9, "MPD"

    const-string v10, "SupplementalProperty"

    const-string v11, "EssentialProperty"

    const-string v12, "id"

    const-string v13, "BaseURL"

    :try_start_0
    iget-object v1, v7, Lcom/google/ads/interactivemedia/v3/internal/vd;->d:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 15
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    const/4 v15, 0x0

    move-object/from16 v1, p2

    .line 16
    invoke-interface {v14, v1, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 17
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_78

    .line 18
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_78

    .line 20
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "availabilityStartTime"

    .line 21
    invoke-static {v14, v2}, Lcom/google/ads/interactivemedia/v3/internal/vd;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v17

    const-string v2, "mediaPresentationDuration"

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 22
    invoke-static {v14, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v19

    const-string v2, "minBufferTime"

    .line 23
    invoke-static {v14, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v21

    const-string v2, "dynamic"

    const-string v6, "type"

    .line 24
    invoke-interface {v14, v15, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v6, :cond_0

    :try_start_1
    const-string v2, "minimumUpdatePeriod"

    .line 26
    invoke-static {v14, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v23

    move-wide/from16 v24, v23

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v8, v7

    goto/16 :goto_48

    :cond_0
    move-wide/from16 v24, v3

    :goto_0
    if-eqz v6, :cond_1

    const-string v2, "timeShiftBufferDepth"

    .line 27
    invoke-static {v14, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v26

    goto :goto_1

    :cond_1
    move-wide/from16 v26, v3

    :goto_1
    if-eqz v6, :cond_2

    const-string v2, "suggestedPresentationDelay"

    .line 28
    invoke-static {v14, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v28
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_2
    move-wide/from16 v28, v3

    :goto_2
    :try_start_2
    const-string v2, "publishTime"

    .line 29
    invoke-static {v14, v2}, Lcom/google/ads/interactivemedia/v3/internal/vd;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v30

    new-instance v2, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v15, 0x1

    if-eq v15, v6, :cond_3

    const-wide/16 v32, 0x0

    goto :goto_3

    :cond_3
    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    :goto_3
    const/16 v23, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-wide/from16 v120, v32

    move/from16 v33, v6

    move-wide/from16 v5, v120

    .line 31
    :goto_4
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 32
    invoke-static {v14, v13}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v39
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4

    if-eqz v39, :cond_5

    if-nez v34, :cond_4

    .line 33
    :try_start_3
    invoke-static {v14, v1}, Lcom/google/ads/interactivemedia/v3/internal/vd;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v39, v1

    move-object v1, v2

    move-object/from16 v49, v8

    move-object/from16 v50, v9

    move-object/from16 v76, v10

    move-object/from16 v40, v11

    move-object/from16 v98, v13

    move-object v9, v14

    move/from16 v52, v33

    const/16 v34, 0x1

    :goto_5
    const-wide/16 v41, 0x0

    const/16 v70, 0x1

    move-object v8, v7

    move-object v14, v12

    const/4 v12, 0x0

    goto/16 :goto_45

    :cond_4
    move-object/from16 v39, v1

    move-object v1, v2

    move-object/from16 v49, v8

    move-object/from16 v50, v9

    move-object/from16 v76, v10

    move-object/from16 v40, v11

    move-object/from16 v98, v13

    move-object v9, v14

    move/from16 v52, v33

    const-wide/16 v41, 0x0

    const/16 v70, 0x1

    move-wide/from16 v32, v5

    move-object v8, v7

    move-object v14, v12

    const/4 v12, 0x0

    goto/16 :goto_44

    .line 34
    :cond_5
    :try_start_4
    invoke-static {v14, v8}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v39
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_4

    const-string v15, "lang"

    if-eqz v39, :cond_a

    :try_start_5
    const-string v3, "moreInformationURL"

    const/4 v4, 0x0

    .line 35
    invoke-static {v14, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    .line 36
    invoke-static {v14, v15, v4}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v15, 0x0

    .line 37
    :goto_6
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-object/from16 v39, v1

    const-string v1, "Title"

    .line 38
    invoke-static {v14, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 39
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    move-object v15, v1

    goto :goto_7

    :cond_6
    const-string v1, "Source"

    .line 40
    invoke-static {v14, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 41
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_7

    :cond_7
    const-string v1, "Copyright"

    .line 42
    invoke-static {v14, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 43
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_7

    .line 44
    :cond_8
    invoke-static {v14}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 45
    :goto_7
    invoke-static {v14, v8}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/vh;

    move-object/from16 v43, v1

    move-object/from16 v44, v15

    move-object/from16 v45, v3

    move-object/from16 v46, v4

    .line 46
    invoke-direct/range {v43 .. v48}, Lcom/google/ads/interactivemedia/v3/internal/vh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0

    move-object/from16 v35, v1

    goto :goto_8

    :cond_9
    move-object/from16 v1, v39

    goto :goto_6

    :cond_a
    move-object/from16 v39, v1

    :try_start_6
    const-string v1, "UTCTiming"

    .line 47
    invoke-static {v14, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_4

    const-string v4, "value"

    const-string v3, "schemeIdUri"

    if-eqz v1, :cond_b

    const/4 v1, 0x0

    .line 48
    :try_start_7
    invoke-interface {v14, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 49
    invoke-interface {v14, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/vu;

    .line 50
    invoke-direct {v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/vu;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0

    move-object/from16 v36, v1

    goto :goto_8

    :cond_b
    :try_start_8
    const-string v1, "Location"

    .line 51
    invoke-static {v14, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_4

    if-eqz v1, :cond_c

    .line 52
    :try_start_9
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_0

    move-object/from16 v37, v1

    :goto_8
    move-object v1, v2

    move-object/from16 v49, v8

    move-object/from16 v50, v9

    move-object/from16 v76, v10

    move-object/from16 v40, v11

    move-object/from16 v98, v13

    move-object v9, v14

    move/from16 v52, v33

    goto/16 :goto_5

    :cond_c
    :try_start_a
    const-string v1, "Period"

    .line 53
    invoke-static {v14, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    if-nez v38, :cond_72

    const/4 v1, 0x0

    .line 54
    invoke-interface {v14, v1, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    const-string v1, "start"

    .line 55
    invoke-static {v14, v1, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v45

    const-string v1, "duration"

    move-object/from16 v43, v3

    move-object/from16 v47, v4

    move-object/from16 v49, v8

    move-object/from16 v50, v9

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 56
    invoke-static {v14, v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v8

    new-instance v1, Ljava/util/ArrayList;

    .line 57
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-wide/from16 p1, v5

    new-instance v5, Ljava/util/ArrayList;

    .line 58
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v6, v39

    const/16 v48, 0x0

    const/16 v51, 0x0

    .line 59
    :goto_9
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 60
    invoke-static {v14, v13}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v52
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_4

    if-eqz v52, :cond_e

    if-nez v51, :cond_d

    .line 61
    :try_start_b
    invoke-static {v14, v6}, Lcom/google/ads/interactivemedia/v3/internal/vd;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_0

    move-object/from16 v68, v2

    move-object/from16 v76, v10

    move-object/from16 v40, v11

    move-object/from16 v98, v13

    move-object/from16 v79, v15

    move/from16 v52, v33

    move-object/from16 v10, v43

    move-object/from16 v13, v47

    const-wide/16 v41, 0x0

    const/16 v51, 0x1

    const/16 v70, 0x1

    move-wide/from16 v32, p1

    move-object v11, v5

    move-wide v15, v8

    move-object v9, v14

    move-object v8, v7

    move-object v14, v12

    const/4 v12, 0x0

    move-object v7, v1

    goto/16 :goto_42

    :cond_d
    move-object/from16 v68, v2

    move-object/from16 v76, v10

    move-object/from16 v40, v11

    move-object/from16 v98, v13

    move-object/from16 v79, v15

    move/from16 v52, v33

    move-object/from16 v10, v43

    move-object/from16 v13, v47

    const-wide/16 v41, 0x0

    const/16 v70, 0x1

    move-wide/from16 v32, p1

    move-object v11, v5

    move-object/from16 v47, v6

    move-wide v15, v8

    move-object v9, v14

    move-object v8, v7

    move-object v14, v12

    const/4 v12, 0x0

    move-object v7, v1

    goto/16 :goto_41

    :cond_e
    :try_start_c
    const-string v3, "AdaptationSet"

    .line 62
    invoke-static {v14, v3}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_4

    const-string v4, "SegmentTemplate"

    move-object/from16 v54, v5

    const-string v5, "SegmentList"

    move-object/from16 v55, v6

    const-string v6, "SegmentBase"

    if-eqz v3, :cond_62

    const/4 v3, -0x1

    .line 63
    :try_start_d
    invoke-static {v14, v12, v3}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v57

    .line 64
    invoke-static {v14}, Lcom/google/ads/interactivemedia/v3/internal/vd;->e(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v56

    const-string v3, "mimeType"

    move-object/from16 v59, v1

    const/4 v1, 0x0

    .line 65
    invoke-interface {v14, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v60, v2

    const-string v2, "codecs"

    .line 66
    invoke-interface {v14, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "width"

    move-object/from16 v61, v4

    const/4 v4, -0x1

    .line 67
    invoke-static {v14, v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    move-wide/from16 v63, v8

    const-string v8, "height"

    .line 68
    invoke-static {v14, v8, v4}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v8

    const/high16 v9, -0x40800000    # -1.0f

    .line 69
    invoke-static {v14, v9}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v9

    move-object/from16 v62, v5

    const-string v5, "audioSamplingRate"

    .line 70
    invoke-static {v14, v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    const/4 v4, 0x0

    .line 71
    invoke-interface {v14, v4, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v65

    const-string v7, "label"

    .line 72
    invoke-interface {v14, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/util/ArrayList;

    .line 73
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v66, v7

    new-instance v7, Ljava/util/ArrayList;

    .line 74
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v67, v7

    new-instance v7, Ljava/util/ArrayList;

    .line 75
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v68, v6

    new-instance v6, Ljava/util/ArrayList;

    .line 76
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move/from16 v69, v5

    new-instance v5, Ljava/util/ArrayList;

    .line 77
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move/from16 v70, v9

    new-instance v9, Ljava/util/ArrayList;

    .line 78
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move/from16 v71, v8

    new-instance v8, Ljava/util/ArrayList;

    .line 79
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move/from16 v73, v1

    move-object/from16 v76, v2

    move-object/from16 v72, v8

    move-object/from16 v75, v48

    move-object/from16 v2, v55

    move/from16 v8, v56

    move-object/from16 v1, v65

    const/16 v56, -0x1

    const/16 v65, 0x0

    const/16 v74, 0x0

    .line 80
    :goto_a
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 81
    invoke-static {v14, v13}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v77

    if-eqz v77, :cond_10

    if-nez v74, :cond_f

    .line 82
    invoke-static {v14, v2}, Lcom/google/ads/interactivemedia/v3/internal/vd;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v42, v3

    move-object/from16 v104, v4

    move-object/from16 v86, v6

    move-object/from16 v40, v11

    move-object/from16 v84, v12

    move-object/from16 v98, v13

    move-object/from16 v79, v15

    move/from16 v52, v33

    move-object/from16 v103, v43

    move-object/from16 v105, v47

    move-object/from16 v107, v54

    move-object/from16 v47, v55

    move-object/from16 v102, v59

    move-object/from16 v12, v61

    move-object/from16 v11, v62

    move-object/from16 v3, v66

    move/from16 v53, v69

    move/from16 v69, v70

    move/from16 v59, v73

    const/16 v41, -0x1

    const/16 v70, 0x1

    const/16 v74, 0x1

    move-wide/from16 v32, p1

    move-object/from16 v73, v2

    move-object/from16 v54, v5

    move v15, v8

    move-object/from16 p1, v9

    move-object/from16 v2, v67

    :goto_b
    move-object/from16 v8, v68

    move-object/from16 v9, p0

    move-object/from16 v68, v60

    move-object/from16 v60, v76

    :goto_c
    move-object/from16 v76, v10

    move-object/from16 v120, v14

    move-object v14, v7

    move-object/from16 v7, v120

    goto/16 :goto_31

    :cond_f
    move-object/from16 v42, v3

    move-object/from16 v104, v4

    move-object/from16 v86, v6

    move-object/from16 v40, v11

    move-object/from16 v84, v12

    move-object/from16 v98, v13

    move-object/from16 v79, v15

    move/from16 v52, v33

    move-object/from16 v103, v43

    move-object/from16 v105, v47

    move-object/from16 v107, v54

    move-object/from16 v47, v55

    move-object/from16 v102, v59

    move-object/from16 v12, v61

    move-object/from16 v11, v62

    move/from16 v53, v69

    move/from16 v69, v70

    move/from16 v59, v73

    const/16 v41, -0x1

    const/16 v70, 0x1

    move-wide/from16 v32, p1

    move-object/from16 v73, v2

    move-object/from16 v54, v5

    move v15, v8

    move-object/from16 p1, v9

    move-object/from16 v2, v67

    :goto_d
    move-object/from16 v8, v68

    move-object/from16 v9, p0

    move-object/from16 v68, v60

    move-object/from16 v60, v76

    move-object/from16 v76, v10

    move-object v10, v1

    move-object/from16 v120, v14

    move-object v14, v7

    move-object/from16 v7, v120

    goto/16 :goto_30

    :cond_10
    move-object/from16 v77, v2

    const-string v2, "ContentProtection"

    .line 83
    invoke-static {v14, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 84
    invoke-static {v14}, Lcom/google/ads/interactivemedia/v3/internal/vd;->d(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v2

    move-object/from16 v78, v13

    .line 85
    iget-object v13, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v13, :cond_11

    .line 86
    iget-object v13, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v65, v13

    check-cast v65, Ljava/lang/String;

    .line 87
    :cond_11
    iget-object v13, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v13, :cond_12

    .line 88
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/hj;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_12
    :goto_e
    move-object/from16 v42, v3

    move-object/from16 v104, v4

    move-object/from16 v86, v6

    move-object/from16 v40, v11

    move-object/from16 v84, v12

    move-object/from16 v79, v15

    move/from16 v52, v33

    move-object/from16 v103, v43

    move-object/from16 v105, v47

    move-object/from16 v107, v54

    move-object/from16 v47, v55

    move-object/from16 v102, v59

    move-object/from16 v12, v61

    move-object/from16 v11, v62

    move-object/from16 v3, v66

    move-object/from16 v2, v67

    move/from16 v53, v69

    move/from16 v69, v70

    move/from16 v59, v73

    move-object/from16 v73, v77

    move-object/from16 v98, v78

    const/16 v41, -0x1

    const/16 v70, 0x1

    move-wide/from16 v32, p1

    move-object/from16 v54, v5

    move v15, v8

    move-object/from16 p1, v9

    goto/16 :goto_b

    :cond_13
    move-object/from16 v78, v13

    const-string v2, "ContentComponent"

    .line 89
    invoke-static {v14, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x0

    .line 90
    invoke-interface {v14, v2, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v1, :cond_14

    move-object v1, v13

    goto :goto_f

    :cond_14
    if-nez v13, :cond_15

    goto :goto_f

    .line 91
    :cond_15
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    .line 92
    :goto_f
    invoke-static {v14}, Lcom/google/ads/interactivemedia/v3/internal/vd;->e(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    invoke-static {v8, v2}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(II)I

    move-result v2

    move-object/from16 v42, v3

    move-object/from16 v104, v4

    move-object/from16 v86, v6

    move-object/from16 v40, v11

    move-object/from16 v84, v12

    move-object/from16 v79, v15

    move/from16 v52, v33

    move-object/from16 v103, v43

    move-object/from16 v105, v47

    move-object/from16 v107, v54

    move-object/from16 v47, v55

    move-object/from16 v102, v59

    move-object/from16 v12, v61

    move-object/from16 v11, v62

    move-object/from16 v3, v66

    move-object/from16 v8, v68

    move/from16 v53, v69

    move/from16 v69, v70

    move/from16 v59, v73

    move-object/from16 v73, v77

    move-object/from16 v98, v78

    const/16 v41, -0x1

    const/16 v70, 0x1

    move-wide/from16 v32, p1

    move v15, v2

    move-object/from16 v54, v5

    move-object/from16 p1, v9

    move-object/from16 v68, v60

    move-object/from16 v2, v67

    move-object/from16 v60, v76

    move-object/from16 v9, p0

    goto/16 :goto_c

    :cond_16
    const-string v2, "Role"

    .line 93
    invoke-static {v14, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v2, "Role"

    .line 94
    invoke-static {v14, v2}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/ve;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_10
    move-object/from16 v42, v3

    move-object/from16 v104, v4

    move-object/from16 v86, v6

    move-object/from16 v40, v11

    move-object/from16 v84, v12

    move-object/from16 v79, v15

    move/from16 v52, v33

    move-object/from16 v103, v43

    move-object/from16 v105, v47

    move-object/from16 v107, v54

    move-object/from16 v47, v55

    move-object/from16 v102, v59

    move-object/from16 v12, v61

    move-object/from16 v11, v62

    move-object/from16 v2, v67

    move/from16 v53, v69

    move/from16 v69, v70

    move/from16 v59, v73

    move-object/from16 v73, v77

    move-object/from16 v98, v78

    const/16 v41, -0x1

    const/16 v70, 0x1

    move-wide/from16 v32, p1

    move-object/from16 v54, v5

    move v15, v8

    move-object/from16 p1, v9

    goto/16 :goto_d

    :cond_17
    const-string v2, "AudioChannelConfiguration"

    .line 95
    invoke-static {v14, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 96
    invoke-static {v14}, Lcom/google/ads/interactivemedia/v3/internal/vd;->c(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    move/from16 v56, v2

    goto/16 :goto_e

    :cond_18
    const-string v2, "Accessibility"

    .line 97
    invoke-static {v14, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "Accessibility"

    .line 98
    invoke-static {v14, v2}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/ve;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 99
    :cond_19
    invoke-static {v14, v11}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 100
    invoke-static {v14, v11}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/ve;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 101
    :cond_1a
    invoke-static {v14, v10}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 102
    invoke-static {v14, v10}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/ve;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1b
    const-string v2, "Representation"

    .line 103
    invoke-static {v14, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_d} :catch_2

    const-string v13, "InbandEventStream"

    if-eqz v2, :cond_4e

    move-object/from16 v79, v15

    const/4 v2, 0x0

    .line 104
    :try_start_e
    invoke-interface {v14, v2, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v2, "bandwidth"

    move-object/from16 v80, v4

    const/4 v4, -0x1

    .line 105
    invoke-static {v14, v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    const-string v4, "mimeType"

    .line 106
    invoke-static {v14, v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v81, v1

    const-string v1, "codecs"

    move/from16 v82, v2

    move-object/from16 v2, v76

    .line 107
    invoke-static {v14, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v76, v1

    const-string v1, "width"

    move-object/from16 v83, v2

    move/from16 v2, v73

    .line 108
    invoke-static {v14, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    move/from16 v73, v1

    const-string v1, "height"

    move-object/from16 v84, v12

    move/from16 v12, v71

    .line 109
    invoke-static {v14, v1, v12}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    move/from16 v71, v12

    move/from16 v12, v70

    move/from16 v70, v8

    .line 110
    invoke-static {v14, v12}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;F)F

    move-result v8

    move/from16 v85, v1

    const-string v1, "audioSamplingRate"

    move-object/from16 v86, v6

    move/from16 v6, v69

    .line 111
    invoke-static {v14, v1, v6}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v1

    move/from16 v69, v12

    new-instance v12, Ljava/util/ArrayList;

    .line 112
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move/from16 v87, v8

    new-instance v8, Ljava/util/ArrayList;

    .line 113
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v88, v15

    new-instance v15, Ljava/util/ArrayList;

    .line 114
    invoke-direct {v15, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v94, v7

    new-instance v7, Ljava/util/ArrayList;

    .line 115
    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v93, v7

    move/from16 v91, v56

    move-object/from16 v92, v75

    move-object/from16 v7, v77

    const/16 v89, 0x0

    const/16 v90, 0x0

    .line 116
    :goto_11
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-object/from16 v95, v10

    move-object/from16 v10, v78

    .line 117
    invoke-static {v14, v10}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v78

    if-eqz v78, :cond_1d

    if-nez v90, :cond_1c

    .line 118
    invoke-static {v14, v7}, Lcom/google/ads/interactivemedia/v3/internal/vd;->c(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move/from16 v101, v1

    move-object/from16 v42, v3

    move/from16 v53, v6

    move-object/from16 v96, v7

    move-object/from16 v98, v10

    move/from16 v52, v33

    move-object/from16 v103, v43

    move-object/from16 v105, v47

    move-object/from16 v107, v54

    move-object/from16 v47, v55

    move-object/from16 v102, v59

    move-object/from16 v106, v61

    move-object/from16 v108, v62

    move-object/from16 v109, v68

    move/from16 v99, v73

    move-object/from16 v73, v77

    move-object/from16 v104, v80

    move/from16 v7, v82

    move/from16 v100, v85

    move-object/from16 v1, v89

    move/from16 v3, v91

    move-object/from16 v6, v95

    const/16 v41, -0x1

    const/16 v90, 0x1

    :goto_12
    move-wide/from16 v32, p1

    move/from16 v59, v2

    move-object/from16 v43, v4

    move-object/from16 v54, v5

    move-object/from16 p1, v9

    move-object v5, v11

    move-object/from16 v68, v60

    move-wide/from16 v10, v63

    move-object/from16 v60, v83

    move-object/from16 v2, v93

    :goto_13
    const/4 v9, 0x2

    goto/16 :goto_17

    :cond_1c
    move/from16 v101, v1

    move-object/from16 v42, v3

    move/from16 v53, v6

    move-object/from16 v96, v7

    move-object/from16 v98, v10

    move/from16 v52, v33

    move-object/from16 v103, v43

    move-object/from16 v105, v47

    move-object/from16 v107, v54

    move-object/from16 v47, v55

    move-object/from16 v102, v59

    move-object/from16 v106, v61

    move-object/from16 v108, v62

    move-object/from16 v109, v68

    move/from16 v99, v73

    move-object/from16 v73, v77

    move-object/from16 v104, v80

    move/from16 v7, v82

    move/from16 v100, v85

    move-object/from16 v6, v95

    const/16 v41, -0x1

    move-wide/from16 v32, p1

    move/from16 v59, v2

    move-object/from16 v43, v4

    move-object/from16 v54, v5

    move-object/from16 p1, v9

    move-object v5, v11

    move-object/from16 v68, v60

    move-wide/from16 v10, v63

    move-object/from16 v60, v83

    move-object/from16 v2, v93

    const/4 v9, 0x2

    goto/16 :goto_16

    :cond_1d
    move/from16 v78, v1

    const-string v1, "AudioChannelConfiguration"

    .line 119
    invoke-static {v14, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 120
    invoke-static {v14}, Lcom/google/ads/interactivemedia/v3/internal/vd;->c(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v91

    move-object/from16 v42, v3

    move/from16 v53, v6

    move-object/from16 v96, v7

    :goto_14
    move-object/from16 v98, v10

    move/from16 v52, v33

    move-object/from16 v103, v43

    move-object/from16 v105, v47

    move-object/from16 v107, v54

    move-object/from16 v47, v55

    move-object/from16 v102, v59

    move-object/from16 v106, v61

    move-object/from16 v108, v62

    move-object/from16 v109, v68

    move/from16 v99, v73

    move-object/from16 v73, v77

    move/from16 v101, v78

    move-object/from16 v104, v80

    move/from16 v7, v82

    move/from16 v100, v85

    move-object/from16 v1, v89

    move/from16 v3, v91

    move-object/from16 v6, v95

    const/16 v41, -0x1

    goto/16 :goto_12

    :cond_1e
    move-object/from16 v1, v68

    .line 121
    invoke-static {v14, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v68

    if-eqz v68, :cond_1f

    move-object/from16 v68, v1

    .line 122
    move-object/from16 v1, v92

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/vq;
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_2

    move-object/from16 v96, v7

    move-object/from16 v7, p0

    :try_start_f
    invoke-virtual {v7, v14, v1}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/ads/interactivemedia/v3/internal/vq;)Lcom/google/ads/interactivemedia/v3/internal/vq;

    move-result-object v92
    :try_end_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_f} :catch_0

    move-object/from16 v42, v3

    move/from16 v53, v6

    goto :goto_14

    :cond_1f
    move-object/from16 v68, v1

    move-object/from16 v96, v7

    move-object/from16 v7, p0

    move-object/from16 v1, v62

    .line 123
    :try_start_10
    invoke-static {v14, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v62
    :try_end_10
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_2

    if-eqz v62, :cond_20

    move-object/from16 v62, v1

    .line 124
    :try_start_11
    move-object/from16 v1, v92

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/vn;

    move-object/from16 v98, v10

    move-object/from16 v97, v11

    move-wide/from16 v10, v63

    invoke-virtual {v7, v14, v1, v10, v11}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/ads/interactivemedia/v3/internal/vn;J)Lcom/google/ads/interactivemedia/v3/internal/vn;

    move-result-object v92
    :try_end_11
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_11 .. :try_end_11} :catch_0

    move-object/from16 v42, v3

    move/from16 v53, v6

    move/from16 v52, v33

    move-object/from16 v103, v43

    move-object/from16 v105, v47

    move-object/from16 v107, v54

    move-object/from16 v47, v55

    move-object/from16 v102, v59

    move-object/from16 v106, v61

    move-object/from16 v108, v62

    move-object/from16 v109, v68

    move/from16 v99, v73

    move-object/from16 v73, v77

    move/from16 v101, v78

    move-object/from16 v104, v80

    move/from16 v7, v82

    move/from16 v100, v85

    move-object/from16 v1, v89

    move/from16 v3, v91

    move-object/from16 v6, v95

    const/16 v41, -0x1

    move-wide/from16 v32, p1

    move/from16 v59, v2

    move-object/from16 v43, v4

    move-object/from16 v54, v5

    move-object/from16 p1, v9

    move-object/from16 v68, v60

    move-object/from16 v60, v83

    move-object/from16 v2, v93

    move-object/from16 v5, v97

    goto/16 :goto_13

    :cond_20
    move-object/from16 v62, v1

    move-object/from16 v98, v10

    move-object/from16 v97, v11

    move-wide/from16 v10, v63

    move-object/from16 v1, v61

    .line 125
    :try_start_12
    invoke-static {v14, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v61

    if-eqz v61, :cond_22

    .line 126
    move-object/from16 v61, v92

    check-cast v61, Lcom/google/ads/interactivemedia/v3/internal/vo;

    move-object/from16 v63, v62

    move-object/from16 v64, v68

    move/from16 v99, v73

    move/from16 v101, v78

    move-object/from16 v7, v81

    move/from16 v100, v85

    move-object/from16 v62, v1

    move-object/from16 v120, v59

    move/from16 v59, v2

    move-object/from16 v2, v120

    move-object/from16 v1, p0

    move-object/from16 v102, v2

    move-object/from16 v81, v7

    move-object/from16 v68, v60

    move-object/from16 v73, v77

    move/from16 v7, v82

    move-object/from16 v60, v83

    move-object v2, v14

    move-object/from16 v42, v3

    move-object/from16 v103, v43

    const/16 v41, -0x1

    move-object/from16 v3, v61

    move-object/from16 v43, v4

    move-object/from16 v105, v47

    move-object/from16 v106, v62

    move-object/from16 v104, v80

    move-object v4, v9

    move/from16 v53, v6

    move/from16 v52, v33

    move-object/from16 v107, v54

    move-object/from16 v47, v55

    move-object/from16 v108, v63

    move-object/from16 v109, v64

    move-wide/from16 v32, p1

    move-object/from16 v54, v5

    move-object/from16 p1, v9

    const/4 v9, 0x2

    move-wide v5, v10

    .line 127
    invoke-virtual/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/ads/interactivemedia/v3/internal/vo;Ljava/util/List;J)Lcom/google/ads/interactivemedia/v3/internal/vo;

    move-result-object v92

    :cond_21
    :goto_15
    move-object/from16 v1, v89

    move/from16 v3, v91

    move-object/from16 v2, v93

    move-object/from16 v6, v95

    move-object/from16 v5, v97

    goto/16 :goto_17

    :cond_22
    move-object/from16 v106, v1

    move-object/from16 v42, v3

    move/from16 v53, v6

    move/from16 v52, v33

    move-object/from16 v103, v43

    move-object/from16 v105, v47

    move-object/from16 v107, v54

    move-object/from16 v47, v55

    move-object/from16 v102, v59

    move-object/from16 v108, v62

    move-object/from16 v109, v68

    move/from16 v99, v73

    move-object/from16 v73, v77

    move/from16 v101, v78

    move-object/from16 v104, v80

    move/from16 v7, v82

    move/from16 v100, v85

    const/16 v41, -0x1

    move-wide/from16 v32, p1

    move/from16 v59, v2

    move-object/from16 v43, v4

    move-object/from16 v54, v5

    move-object/from16 p1, v9

    move-object/from16 v68, v60

    move-object/from16 v60, v83

    const/4 v9, 0x2

    const-string v1, "ContentProtection"

    .line 128
    invoke-static {v14, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 129
    invoke-static {v14}, Lcom/google/ads/interactivemedia/v3/internal/vd;->d(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/Pair;

    move-result-object v1

    .line 130
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_23

    .line 131
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v89, v2

    check-cast v89, Ljava/lang/String;

    .line 132
    :cond_23
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_21

    .line 133
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/hj;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 134
    :cond_24
    invoke-static {v14, v13}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 135
    invoke-static {v14, v13}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/ve;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v93

    move-object/from16 v6, v95

    move-object/from16 v5, v97

    goto :goto_16

    :cond_25
    move-object/from16 v5, v97

    .line 136
    invoke-static {v14, v5}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 137
    invoke-static {v14, v5}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/ve;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v93

    move-object/from16 v6, v95

    goto :goto_16

    :cond_26
    move-object/from16 v6, v95

    .line 138
    invoke-static {v14, v6}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 139
    invoke-static {v14, v6}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/ve;

    move-result-object v1

    move-object/from16 v2, v93

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_27
    move-object/from16 v2, v93

    .line 140
    invoke-static {v14}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_16
    move-object/from16 v1, v89

    move/from16 v3, v91

    :goto_17
    const-string v4, "Representation"

    .line 141
    invoke-static {v14, v4}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 142
    invoke-static/range {v43 .. v43}, Lcom/google/ads/interactivemedia/v3/internal/abm;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 143
    invoke-static/range {v76 .. v76}, Lcom/google/ads/interactivemedia/v3/internal/abm;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_18
    move-object/from16 v13, v43

    goto :goto_19

    .line 144
    :cond_28
    invoke-static/range {v43 .. v43}, Lcom/google/ads/interactivemedia/v3/internal/abm;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 145
    invoke-static/range {v76 .. v76}, Lcom/google/ads/interactivemedia/v3/internal/abm;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_18

    .line 146
    :cond_29
    invoke-static/range {v43 .. v43}, Lcom/google/ads/interactivemedia/v3/internal/abm;->c(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    const-string v4, "application/x-rawcc"

    move-object/from16 v13, v43

    .line 147
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 148
    invoke-static/range {v76 .. v76}, Lcom/google/ads/interactivemedia/v3/internal/abm;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_19

    :cond_2a
    move-object v4, v13

    goto :goto_19

    :cond_2b
    move-object/from16 v13, v43

    const-string v4, "application/mp4"

    .line 149
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 150
    invoke-static/range {v76 .. v76}, Lcom/google/ads/interactivemedia/v3/internal/abm;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_19

    :cond_2c
    const/4 v4, 0x0

    :goto_19
    const-string v9, "audio/eac3"

    .line 151
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_31

    const/4 v4, 0x0

    .line 152
    :goto_1a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_30

    .line 153
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/ads/interactivemedia/v3/internal/ve;

    move-object/from16 v97, v5

    .line 154
    iget-object v5, v9, Lcom/google/ads/interactivemedia/v3/internal/ve;->a:Ljava/lang/String;

    move-object/from16 v95, v6

    const-string v6, "tag:dolby.com,2018:dash:EC3_ExtensionType:2018"

    .line 155
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    const-string v6, "JOC"

    move-wide/from16 v63, v10

    iget-object v10, v9, Lcom/google/ads/interactivemedia/v3/internal/ve;->b:Ljava/lang/String;

    .line 156
    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2e

    goto :goto_1b

    :cond_2d
    move-wide/from16 v63, v10

    :goto_1b
    const-string v6, "tag:dolby.com,2014:dash:DolbyDigitalPlusExtensionType:2014"

    .line 157
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const-string v5, "ec+3"

    iget-object v6, v9, Lcom/google/ads/interactivemedia/v3/internal/ve;->b:Ljava/lang/String;

    .line 158
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    :cond_2e
    const-string v4, "audio/eac3-joc"

    goto :goto_1c

    :cond_2f
    add-int/lit8 v4, v4, 0x1

    move-wide/from16 v10, v63

    move-object/from16 v6, v95

    move-object/from16 v5, v97

    goto :goto_1a

    :cond_30
    move-object/from16 v97, v5

    move-object/from16 v95, v6

    move-wide/from16 v63, v10

    const-string v4, "audio/eac3"

    goto :goto_1c

    :cond_31
    move-object/from16 v97, v5

    move-object/from16 v95, v6

    move-wide/from16 v63, v10

    :goto_1c
    const/4 v5, 0x0

    .line 159
    :goto_1d
    invoke-interface/range {v86 .. v86}, Ljava/util/List;->size()I

    move-result v6
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_2

    const-string v9, "urn:mpeg:dash:role:2011"

    if-ge v5, v6, :cond_33

    move-object/from16 v10, v86

    .line 160
    :try_start_13
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/ve;

    .line 161
    iget-object v11, v6, Lcom/google/ads/interactivemedia/v3/internal/ve;->a:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_32

    const-string v11, "main"

    iget-object v6, v6, Lcom/google/ads/interactivemedia/v3/internal/ve;->b:Ljava/lang/String;

    .line 162
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    const/4 v5, 0x1

    goto :goto_1e

    :cond_32
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v86, v10

    goto :goto_1d

    :cond_33
    move-object/from16 v10, v86

    const/4 v5, 0x0

    :goto_1e
    move-object/from16 v77, v14

    const/4 v6, 0x0

    const/4 v11, 0x0

    .line 163
    :goto_1f
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-ge v6, v14, :cond_35

    .line 164
    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/ads/interactivemedia/v3/internal/ve;

    move-object/from16 v86, v10

    .line 165
    iget-object v10, v14, Lcom/google/ads/interactivemedia/v3/internal/ve;->a:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_34

    .line 166
    iget-object v10, v14, Lcom/google/ads/interactivemedia/v3/internal/ve;->b:Ljava/lang/String;

    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Ljava/lang/String;)I

    move-result v10

    or-int/2addr v11, v10

    :cond_34
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v10, v86

    goto :goto_1f

    :cond_35
    move-object/from16 v86, v10

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 167
    :goto_20
    invoke-interface/range {v94 .. v94}, Ljava/util/List;->size()I

    move-result v14

    if-ge v6, v14, :cond_3f

    move-object/from16 v14, v94

    .line 168
    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v43

    move-object/from16 p2, v8

    move-object/from16 v8, v43

    check-cast v8, Lcom/google/ads/interactivemedia/v3/internal/ve;

    move-object/from16 v43, v12

    .line 169
    iget-object v12, v8, Lcom/google/ads/interactivemedia/v3/internal/ve;->a:Ljava/lang/String;

    invoke-virtual {v9, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_36

    .line 170
    iget-object v8, v8, Lcom/google/ads/interactivemedia/v3/internal/ve;->b:Ljava/lang/String;

    invoke-static {v8}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Ljava/lang/String;)I

    move-result v8

    or-int/2addr v10, v8

    move-object/from16 v58, v9

    goto/16 :goto_25

    :cond_36
    const-string v12, "urn:tva:metadata:cs:AudioPurposeCS:2007"

    move-object/from16 v58, v9

    .line 171
    iget-object v9, v8, Lcom/google/ads/interactivemedia/v3/internal/ve;->a:Ljava/lang/String;

    .line 172
    invoke-virtual {v12, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3e

    .line 173
    iget-object v8, v8, Lcom/google/ads/interactivemedia/v3/internal/ve;->b:Ljava/lang/String;

    const/4 v9, 0x4

    if-nez v8, :cond_37

    :goto_21
    const/4 v8, 0x0

    goto :goto_24

    :cond_37
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v12
    :try_end_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_13 .. :try_end_13} :catch_2

    packed-switch v12, :pswitch_data_0

    :pswitch_0
    goto :goto_22

    :pswitch_1
    const-string v12, "6"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    const/4 v8, 0x4

    goto :goto_23

    :pswitch_2
    const-string v12, "4"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    const/4 v8, 0x3

    goto :goto_23

    :pswitch_3
    const-string v12, "3"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    const/4 v8, 0x2

    goto :goto_23

    :pswitch_4
    const-string v12, "2"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    const/4 v8, 0x1

    goto :goto_23

    :pswitch_5
    const-string v12, "1"

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_38

    const/4 v8, 0x0

    goto :goto_23

    :cond_38
    :goto_22
    const/4 v8, -0x1

    :goto_23
    if-eqz v8, :cond_3d

    const/4 v12, 0x1

    if-eq v8, v12, :cond_3c

    const/4 v12, 0x2

    if-eq v8, v12, :cond_3b

    const/4 v12, 0x3

    if-eq v8, v12, :cond_3a

    if-eq v8, v9, :cond_39

    goto :goto_21

    :cond_39
    const/4 v8, 0x1

    goto :goto_24

    :cond_3a
    const/16 v8, 0x8

    goto :goto_24

    :cond_3b
    const/4 v8, 0x4

    goto :goto_24

    :cond_3c
    const/16 v8, 0x800

    goto :goto_24

    :cond_3d
    const/16 v8, 0x200

    :goto_24
    or-int/2addr v10, v8

    :cond_3e
    :goto_25
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v8, p2

    move-object/from16 v94, v14

    move-object/from16 v12, v43

    move-object/from16 v9, v58

    goto/16 :goto_20

    :cond_3f
    move-object/from16 p2, v8

    move-object/from16 v43, v12

    move-object/from16 v14, v94

    or-int v6, v11, v10

    .line 174
    :try_start_14
    invoke-static {v15}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Ljava/util/List;)I

    move-result v8

    or-int/2addr v6, v8

    .line 175
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Ljava/util/List;)I

    move-result v2

    or-int/2addr v2, v6

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 176
    invoke-direct {v6}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    move-object/from16 v8, v88

    .line 177
    invoke-virtual {v6, v8}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v6, v13}, Lcom/google/ads/interactivemedia/v3/internal/cy;->b(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v6, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    move-object/from16 v9, v76

    .line 180
    invoke-virtual {v6, v9}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/cy;->j(I)V

    .line 182
    invoke-virtual {v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/cy;->n(I)V

    .line 183
    invoke-virtual {v6, v2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->k(I)V

    move-object/from16 v5, v81

    .line 184
    invoke-virtual {v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/cy;->e(Ljava/lang/String;)V

    .line 185
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/abm;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    move/from16 v10, v99

    .line 186
    invoke-virtual {v6, v10}, Lcom/google/ads/interactivemedia/v3/internal/cy;->p(I)V

    move/from16 v4, v100

    invoke-virtual {v6, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(I)V

    move/from16 v11, v87

    invoke-virtual {v6, v11}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(F)V

    :cond_40
    :goto_26
    const/4 v7, 0x1

    goto/16 :goto_2e

    .line 187
    :cond_41
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/abm;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 188
    invoke-virtual {v6, v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(I)V

    move/from16 v12, v101

    invoke-virtual {v6, v12}, Lcom/google/ads/interactivemedia/v3/internal/cy;->m(I)V

    goto :goto_26

    .line 189
    :cond_42
    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/abm;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string v2, "application/cea-608"

    .line 190
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    const/4 v2, 0x0

    .line 191
    :goto_27
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_46

    .line 192
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/ve;

    const-string v4, "urn:scte:dash:cc:cea-608:2015"

    .line 193
    iget-object v7, v3, Lcom/google/ads/interactivemedia/v3/internal/ve;->a:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    iget-object v4, v3, Lcom/google/ads/interactivemedia/v3/internal/ve;->b:Ljava/lang/String;

    if-eqz v4, :cond_45

    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/vd;->b:Ljava/util/regex/Pattern;

    .line 194
    iget-object v7, v3, Lcom/google/ads/interactivemedia/v3/internal/ve;->b:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 195
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_43

    const/4 v7, 0x1

    .line 198
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_29

    :cond_43
    const-string v4, "MpdParser"

    const-string v7, "Unable to parse CEA-608 channel number from: "

    .line 196
    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/ve;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_44

    invoke-virtual {v7, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_28

    .line 197
    :cond_44
    new-instance v3, Ljava/lang/String;

    .line 196
    invoke-direct {v3, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 197
    :goto_28
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_46
    const/4 v3, -0x1

    :goto_29
    const/4 v7, 0x1

    goto :goto_2d

    :cond_47
    const-string v2, "application/cea-708"

    .line 199
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    const/4 v2, 0x0

    .line 200
    :goto_2a
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4b

    .line 201
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/ve;

    const-string v4, "urn:scte:dash:cc:cea-708:2015"

    .line 202
    iget-object v7, v3, Lcom/google/ads/interactivemedia/v3/internal/ve;->a:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4a

    iget-object v4, v3, Lcom/google/ads/interactivemedia/v3/internal/ve;->b:Ljava/lang/String;

    if-eqz v4, :cond_4a

    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/vd;->c:Ljava/util/regex/Pattern;

    .line 203
    iget-object v7, v3, Lcom/google/ads/interactivemedia/v3/internal/ve;->b:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 204
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_48

    const/4 v7, 0x1

    .line 207
    invoke-virtual {v4, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_2d

    :cond_48
    const/4 v7, 0x1

    const-string v4, "MpdParser"

    const-string v8, "Unable to parse CEA-708 service block number from: "

    .line 205
    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/ve;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_49

    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2b

    .line 206
    :cond_49
    new-instance v3, Ljava/lang/String;

    .line 205
    invoke-direct {v3, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 206
    :goto_2b
    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    :cond_4a
    const/4 v7, 0x1

    :goto_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_4b
    const/4 v7, 0x1

    const/4 v3, -0x1

    .line 208
    :goto_2d
    invoke-virtual {v6, v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(I)V

    .line 209
    :goto_2e
    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v88

    if-eqz v92, :cond_4c

    move-object/from16 v90, v92

    goto :goto_2f

    .line 214
    :cond_4c
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/vq;

    const/16 v111, 0x0

    const-wide/16 v112, 0x1

    const-wide/16 v114, 0x0

    const-wide/16 v116, 0x0

    const-wide/16 v118, 0x0

    move-object/from16 v110, v2

    .line 210
    invoke-direct/range {v110 .. v119}, Lcom/google/ads/interactivemedia/v3/internal/vq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/vi;JJJJ)V

    move-object/from16 v90, v2

    .line 209
    :goto_2f
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/vc;

    move-object/from16 v87, v2

    move-object/from16 v89, v96

    move-object/from16 v91, v1

    move-object/from16 v92, v43

    move-object/from16 v93, p2

    .line 211
    invoke-direct/range {v87 .. v93}, Lcom/google/ads/interactivemedia/v3/internal/vc;-><init>(Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/vr;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget-object v1, v2, Lcom/google/ads/interactivemedia/v3/internal/vc;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    .line 212
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/abm;->i(Ljava/lang/String;)I

    move-result v1

    move/from16 v6, v70

    .line 213
    invoke-static {v6, v1}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(II)I

    move-result v1

    move-object/from16 v3, v72

    .line 214
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v9, p0

    move v15, v1

    move-object/from16 v72, v3

    move-object v1, v5

    move-object/from16 v3, v66

    move-object/from16 v2, v67

    move-object/from16 v7, v77

    move-object/from16 v76, v95

    move-object/from16 v40, v97

    move-object/from16 v12, v106

    move-object/from16 v11, v108

    move-object/from16 v8, v109

    const/16 v70, 0x1

    goto/16 :goto_31

    :cond_4d
    move-object/from16 v95, v6

    move-object/from16 p2, v8

    move-wide/from16 v63, v10

    move-object/from16 v77, v14

    move-object/from16 v40, v43

    move/from16 v6, v70

    const/16 v70, 0x1

    move-object/from16 v43, v12

    move-object/from16 v9, p1

    move-object/from16 v89, v1

    move-object/from16 v93, v2

    move/from16 v91, v3

    move-object v11, v5

    move/from16 v70, v6

    move/from16 v82, v7

    move-wide/from16 p1, v32

    move-object/from16 v4, v40

    move-object/from16 v3, v42

    move-object/from16 v55, v47

    move/from16 v33, v52

    move/from16 v6, v53

    move-object/from16 v5, v54

    move/from16 v2, v59

    move-object/from16 v83, v60

    move-object/from16 v60, v68

    move-object/from16 v10, v95

    move-object/from16 v7, v96

    move-object/from16 v78, v98

    move/from16 v85, v100

    move/from16 v1, v101

    move-object/from16 v59, v102

    move-object/from16 v43, v103

    move-object/from16 v80, v104

    move-object/from16 v47, v105

    move-object/from16 v61, v106

    move-object/from16 v54, v107

    move-object/from16 v62, v108

    move-object/from16 v68, v109

    move-object/from16 v77, v73

    move/from16 v73, v99

    goto/16 :goto_11

    :cond_4e
    move-object/from16 v42, v3

    move-object/from16 v104, v4

    move-object/from16 v86, v6

    move v6, v8

    move-object/from16 v95, v10

    move-object/from16 v97, v11

    move-object/from16 v84, v12

    move-object/from16 v79, v15

    move/from16 v52, v33

    move-object/from16 v103, v43

    move-object/from16 v105, v47

    move-object/from16 v107, v54

    move-object/from16 v47, v55

    move-object/from16 v102, v59

    move-object/from16 v106, v61

    move-object/from16 v108, v62

    move-object/from16 v109, v68

    move/from16 v53, v69

    move/from16 v69, v70

    move/from16 v59, v73

    move-object/from16 v73, v77

    move-object/from16 v98, v78

    const/16 v41, -0x1

    const/16 v70, 0x1

    move-wide/from16 v32, p1

    move-object/from16 v54, v5

    move-object/from16 p1, v9

    move-object/from16 v77, v14

    move-object/from16 v68, v60

    move-object/from16 v60, v76

    move-object v5, v1

    move-object v14, v7

    move-object/from16 v7, v77

    move-object/from16 v8, v109

    .line 215
    invoke-static {v7, v8}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 216
    move-object/from16 v1, v75

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/vq;
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_14 .. :try_end_14} :catch_2

    move-object/from16 v9, p0

    move-object v10, v5

    :try_start_15
    invoke-virtual {v9, v7, v1}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/ads/interactivemedia/v3/internal/vq;)Lcom/google/ads/interactivemedia/v3/internal/vq;

    move-result-object v75
    :try_end_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_15 .. :try_end_15} :catch_1

    move v15, v6

    move-object v1, v10

    move-object/from16 v3, v66

    move-object/from16 v2, v67

    move-object/from16 v76, v95

    move-object/from16 v40, v97

    move-object/from16 v12, v106

    move-object/from16 v11, v108

    goto/16 :goto_31

    :cond_4f
    move-object/from16 v9, p0

    move-object v10, v5

    move-object/from16 v11, v108

    .line 217
    :try_start_16
    invoke-static {v7, v11}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_16 .. :try_end_16} :catch_2

    if-eqz v1, :cond_50

    .line 218
    :try_start_17
    move-object/from16 v1, v75

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/vn;

    move-wide/from16 v4, v63

    invoke-virtual {v9, v7, v1, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/ads/interactivemedia/v3/internal/vn;J)Lcom/google/ads/interactivemedia/v3/internal/vn;

    move-result-object v75
    :try_end_17
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_17 .. :try_end_17} :catch_1

    move-wide/from16 v63, v4

    move v15, v6

    move-object v1, v10

    move-object/from16 v3, v66

    move-object/from16 v2, v67

    move-object/from16 v76, v95

    move-object/from16 v40, v97

    move-object/from16 v12, v106

    goto/16 :goto_31

    :cond_50
    move-wide/from16 v4, v63

    move-object/from16 v12, v106

    .line 219
    :try_start_18
    invoke-static {v7, v12}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1
    :try_end_18
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_18 .. :try_end_18} :catch_2

    if-eqz v1, :cond_51

    .line 220
    :try_start_19
    move-object/from16 v3, v75

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/vo;

    move-object/from16 v1, p0

    move-object v2, v7

    move-wide/from16 v63, v4

    move-object/from16 v4, p1

    move v15, v6

    move-object/from16 v76, v95

    move-object/from16 v40, v97

    move-wide/from16 v5, v63

    .line 221
    invoke-virtual/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/ads/interactivemedia/v3/internal/vo;Ljava/util/List;J)Lcom/google/ads/interactivemedia/v3/internal/vo;

    move-result-object v75
    :try_end_19
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_19 .. :try_end_19} :catch_1

    move-object v1, v10

    move-object/from16 v3, v66

    move-object/from16 v2, v67

    goto :goto_31

    :cond_51
    move-wide/from16 v63, v4

    move v15, v6

    move-object/from16 v76, v95

    move-object/from16 v40, v97

    .line 222
    :try_start_1a
    invoke-static {v7, v13}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1
    :try_end_1a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a .. :try_end_1a} :catch_2

    if-eqz v1, :cond_52

    .line 223
    :try_start_1b
    invoke-static {v7, v13}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/ve;

    move-result-object v1

    move-object/from16 v2, v67

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1b .. :try_end_1b} :catch_1

    goto :goto_30

    :cond_52
    move-object/from16 v2, v67

    :try_start_1c
    const-string v1, "Label"

    .line 224
    invoke-static {v7, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c .. :try_end_1c} :catch_2

    if-eqz v1, :cond_53

    :try_start_1d
    const-string v1, "Label"

    .line 225
    invoke-static {v7, v1}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1d .. :try_end_1d} :catch_1

    move-object v3, v1

    move-object v1, v10

    goto :goto_31

    .line 226
    :cond_53
    :try_start_1e
    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;)Z

    move-result v1
    :try_end_1e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1e .. :try_end_1e} :catch_2

    if-eqz v1, :cond_54

    .line 227
    :try_start_1f
    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f .. :try_end_1f} :catch_1

    :cond_54
    :goto_30
    move-object v1, v10

    move-object/from16 v3, v66

    :goto_31
    :try_start_20
    const-string v4, "AdaptationSet"

    .line 228
    invoke-static {v7, v4}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_61

    new-instance v1, Ljava/util/ArrayList;

    .line 229
    invoke-interface/range {v72 .. v72}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    .line 230
    :goto_32
    invoke-interface/range {v72 .. v72}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_60

    move-object/from16 v5, v72

    .line 231
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/vc;

    .line 232
    iget-object v8, v6, Lcom/google/ads/interactivemedia/v3/internal/vc;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a()Lcom/google/ads/interactivemedia/v3/internal/cy;

    move-result-object v8
    :try_end_20
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_20 .. :try_end_20} :catch_2

    if-eqz v3, :cond_55

    .line 233
    :try_start_21
    invoke-virtual {v8, v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->d(Ljava/lang/String;)V
    :try_end_21
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_21 .. :try_end_21} :catch_1

    goto :goto_33

    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v8, v9

    goto/16 :goto_48

    .line 234
    :cond_55
    :goto_33
    :try_start_22
    iget-object v10, v6, Lcom/google/ads/interactivemedia/v3/internal/vc;->d:Ljava/lang/String;

    if-nez v10, :cond_56

    move-object/from16 v10, v65

    .line 235
    :cond_56
    iget-object v11, v6, Lcom/google/ads/interactivemedia/v3/internal/vc;->e:Ljava/util/ArrayList;

    move-object/from16 v13, v104

    .line 236
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 237
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_5d

    .line 238
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    :goto_34
    if-ltz v12, :cond_5c

    .line 239
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v42

    move-object/from16 p2, v3

    move-object/from16 v3, v42

    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/hj;

    .line 240
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/hj;->a()Z

    move-result v42

    move-object/from16 v72, v5

    if-nez v42, :cond_5b

    move-object/from16 v104, v13

    const/4 v5, 0x0

    .line 241
    :goto_35
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v5, v13, :cond_5a

    .line 242
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/ads/interactivemedia/v3/internal/hj;

    invoke-virtual {v13}, Lcom/google/ads/interactivemedia/v3/internal/hj;->a()Z

    move-result v42

    if-eqz v42, :cond_58

    .line 243
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/hj;->a()Z

    move-result v42

    if-nez v42, :cond_58

    iget-object v9, v3, Lcom/google/ads/interactivemedia/v3/internal/hj;->a:Ljava/util/UUID;

    move-object/from16 v42, v3

    .line 244
    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/bk;->a:Ljava/util/UUID;

    move-object/from16 v77, v7

    iget-object v7, v13, Lcom/google/ads/interactivemedia/v3/internal/hj;->a:Ljava/util/UUID;

    invoke-virtual {v3, v7}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_57

    iget-object v3, v13, Lcom/google/ads/interactivemedia/v3/internal/hj;->a:Ljava/util/UUID;

    invoke-virtual {v9, v3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    .line 245
    :cond_57
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_36

    :cond_58
    move-object/from16 v42, v3

    move-object/from16 v77, v7

    :cond_59
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v9, p0

    move-object/from16 v3, v42

    move-object/from16 v7, v77

    goto :goto_35

    :cond_5a
    move-object/from16 v77, v7

    goto :goto_36

    :cond_5b
    move-object/from16 v77, v7

    move-object/from16 v104, v13

    :goto_36
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v9, p0

    move-object/from16 v3, p2

    move-object/from16 v5, v72

    move-object/from16 v7, v77

    move-object/from16 v13, v104

    goto :goto_34

    :cond_5c
    move-object/from16 p2, v3

    move-object/from16 v72, v5

    move-object/from16 v77, v7

    move-object/from16 v104, v13

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/hk;

    .line 246
    invoke-direct {v3, v10, v11}, Lcom/google/ads/interactivemedia/v3/internal/hk;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v8, v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Lcom/google/ads/interactivemedia/v3/internal/hk;)V

    goto :goto_37

    :cond_5d
    move-object/from16 p2, v3

    move-object/from16 v72, v5

    move-object/from16 v77, v7

    move-object/from16 v104, v13

    .line 247
    :goto_37
    iget-object v3, v6, Lcom/google/ads/interactivemedia/v3/internal/vc;->f:Ljava/util/ArrayList;

    .line 248
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 249
    iget-wide v9, v6, Lcom/google/ads/interactivemedia/v3/internal/vc;->g:J

    .line 250
    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v5

    iget-object v7, v6, Lcom/google/ads/interactivemedia/v3/internal/vc;->b:Ljava/lang/String;

    iget-object v6, v6, Lcom/google/ads/interactivemedia/v3/internal/vc;->c:Lcom/google/ads/interactivemedia/v3/internal/vr;

    .line 251
    instance-of v8, v6, Lcom/google/ads/interactivemedia/v3/internal/vq;

    if-eqz v8, :cond_5e

    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/vk;

    .line 252
    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/vq;

    invoke-direct {v8, v5, v7, v6, v3}, Lcom/google/ads/interactivemedia/v3/internal/vk;-><init>(Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/vq;Ljava/util/List;)V

    goto :goto_38

    .line 253
    :cond_5e
    instance-of v8, v6, Lcom/google/ads/interactivemedia/v3/internal/vm;

    if-eqz v8, :cond_5f

    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/vj;

    .line 254
    check-cast v6, Lcom/google/ads/interactivemedia/v3/internal/vm;

    invoke-direct {v8, v5, v7, v6, v3}, Lcom/google/ads/interactivemedia/v3/internal/vj;-><init>(Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/vm;Ljava/util/List;)V

    .line 255
    :goto_38
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v9, p0

    move-object/from16 v3, p2

    move-object/from16 v7, v77

    goto/16 :goto_32

    .line 328
    :cond_5f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "segmentBase must be of type SingleSegmentBase or MultiSegmentBase"

    .line 330
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_60
    move-object/from16 v77, v7

    .line 254
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/va;

    move-object/from16 v56, v2

    move/from16 v58, v15

    move-object/from16 v59, v1

    move-object/from16 v60, v14

    move-object/from16 v61, v54

    move-object/from16 v62, p1

    .line 256
    invoke-direct/range {v56 .. v62}, Lcom/google/ads/interactivemedia/v3/internal/va;-><init>(IILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    move-object/from16 v7, v102

    .line 257
    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, p0

    move-wide/from16 v15, v63

    move-object/from16 v9, v77

    move-object/from16 v14, v84

    move-object/from16 v10, v103

    move-object/from16 v13, v105

    move-object/from16 v11, v107

    goto/16 :goto_40

    :cond_61
    move-object/from16 p2, v3

    move-object/from16 v77, v7

    move-object/from16 v9, p1

    move-object/from16 v66, p2

    move-object/from16 v67, v2

    move-object/from16 v62, v11

    move-object/from16 v61, v12

    move-object v7, v14

    move-wide/from16 p1, v32

    move-object/from16 v11, v40

    move-object/from16 v3, v42

    move-object/from16 v55, v47

    move/from16 v33, v52

    move-object/from16 v5, v54

    move/from16 v70, v69

    move-object/from16 v2, v73

    move-object/from16 v10, v76

    move-object/from16 v14, v77

    move-object/from16 v12, v84

    move-object/from16 v6, v86

    move-object/from16 v13, v98

    move-object/from16 v43, v103

    move-object/from16 v4, v104

    move-object/from16 v47, v105

    move-object/from16 v54, v107

    move/from16 v69, v53

    move/from16 v73, v59

    move-object/from16 v76, v60

    move-object/from16 v60, v68

    move-object/from16 v59, v102

    move-object/from16 v68, v8

    move v8, v15

    move-object/from16 v15, v79

    goto/16 :goto_a

    :cond_62
    move-object v7, v1

    move-object/from16 v68, v2

    move-wide/from16 v63, v8

    move-object/from16 v76, v10

    move-object/from16 v40, v11

    move-object/from16 v84, v12

    move-object/from16 v98, v13

    move-object/from16 v77, v14

    move-object/from16 v79, v15

    move/from16 v52, v33

    move-object/from16 v103, v43

    move-object/from16 v105, v47

    move-object/from16 v107, v54

    move-object/from16 v47, v55

    const/16 v70, 0x1

    move-wide/from16 v32, p1

    move-object v12, v4

    move-object v11, v5

    move-object v8, v6

    const-string v1, "EventStream"

    move-object/from16 v9, v77

    .line 258
    invoke-static {v9, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    const-string v1, ""

    move-object/from16 v10, v103

    .line 259
    invoke-static {v9, v10, v1}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    move-object/from16 v13, v105

    .line 260
    invoke-static {v9, v13, v2}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "timescale"

    const-wide/16 v4, 0x1

    .line 261
    invoke-static {v9, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    new-instance v5, Ljava/util/ArrayList;

    .line 262
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 263
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x200

    invoke-direct {v6, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 264
    :goto_39
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v8, "Event"

    .line 265
    invoke-static {v9, v8}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_66

    move-object/from16 v14, v84

    const-wide/16 v11, 0x0

    .line 266
    invoke-static {v9, v14, v11, v12}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v90

    const-string v8, "duration"

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 267
    invoke-static {v9, v8, v11, v12}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v56

    const-string v8, "presentationTime"

    const-wide/16 v11, 0x0

    .line 268
    invoke-static {v9, v8, v11, v12}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v41

    const-wide/16 v58, 0x3e8

    move-wide/from16 v60, v3

    .line 269
    invoke-static/range {v56 .. v61}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(JJJ)J

    move-result-wide v88

    const-wide/32 v58, 0xf4240

    move-wide/from16 v56, v41

    move-wide/from16 v60, v3

    .line 270
    invoke-static/range {v56 .. v61}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(JJJ)J

    move-result-wide v41

    const-string v8, "messageData"

    const/4 v15, 0x0

    .line 271
    invoke-static {v9, v8, v15}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 272
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 273
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v15

    .line 274
    sget-object v43, Lcom/google/ads/interactivemedia/v3/internal/anc;->b:Ljava/nio/charset/Charset;

    invoke-virtual/range {v43 .. v43}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v15, v6, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 275
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    :goto_3a
    const-string v11, "Event"

    .line 276
    invoke-static {v9, v11}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_64

    .line 277
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v11

    packed-switch v11, :pswitch_data_1

    :cond_63
    :goto_3b
    move-wide/from16 p1, v3

    goto/16 :goto_3d

    .line 278
    :pswitch_6
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v15, v11}, Lorg/xmlpull/v1/XmlSerializer;->docdecl(Ljava/lang/String;)V

    goto :goto_3b

    .line 279
    :pswitch_7
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v15, v11}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    goto :goto_3b

    .line 280
    :pswitch_8
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v15, v11}, Lorg/xmlpull/v1/XmlSerializer;->processingInstruction(Ljava/lang/String;)V

    goto :goto_3b

    .line 281
    :pswitch_9
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v15, v11}, Lorg/xmlpull/v1/XmlSerializer;->ignorableWhitespace(Ljava/lang/String;)V

    goto :goto_3b

    .line 282
    :pswitch_a
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v15, v11}, Lorg/xmlpull/v1/XmlSerializer;->entityRef(Ljava/lang/String;)V

    goto :goto_3b

    .line 283
    :pswitch_b
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v15, v11}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_3b

    .line 284
    :pswitch_c
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v15, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3b

    .line 285
    :pswitch_d
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v15, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3b

    .line 286
    :pswitch_e
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v15, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v11, 0x0

    .line 287
    :goto_3c
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v12

    if-ge v11, v12, :cond_63

    .line 288
    invoke-interface {v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v12

    move-wide/from16 p1, v3

    invoke-interface {v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    .line 289
    invoke-interface {v9, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 288
    invoke-interface {v15, v12, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v3, p1

    goto :goto_3c

    :pswitch_f
    move-wide/from16 p1, v3

    .line 290
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    goto :goto_3d

    :pswitch_10
    move-wide/from16 p1, v3

    .line 291
    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v15, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 292
    :goto_3d
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->nextToken()I

    move-wide/from16 v3, p1

    goto/16 :goto_3a

    :cond_64
    move-wide/from16 p1, v3

    .line 293
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 294
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 295
    invoke-static/range {v41 .. v42}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    if-eqz v8, :cond_65

    .line 296
    invoke-static {v8}, Lcom/google/ads/interactivemedia/v3/internal/ach;->c(Ljava/lang/String;)[B

    move-result-object v3

    :cond_65
    move-object/from16 v92, v3

    .line 297
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/ow;

    move-object/from16 v85, v3

    move-object/from16 v86, v1

    move-object/from16 v87, v2

    invoke-direct/range {v85 .. v92}, Lcom/google/ads/interactivemedia/v3/internal/ow;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    .line 298
    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 299
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3e

    :cond_66
    move-wide/from16 p1, v3

    move-object/from16 v14, v84

    .line 300
    invoke-static {v9}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_3e
    const-string v3, "EventStream"

    .line 301
    invoke-static {v9, v3}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_68

    .line 302
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [J

    .line 303
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/google/ads/interactivemedia/v3/internal/ow;

    const/4 v6, 0x0

    .line 304
    :goto_3f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_67

    .line 305
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 306
    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    aput-wide v11, v3, v6

    .line 307
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Lcom/google/ads/interactivemedia/v3/internal/ow;

    aput-object v8, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3f

    :cond_67
    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/vf;

    .line 308
    invoke-direct {v5, v1, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/vf;-><init>(Ljava/lang/String;Ljava/lang/String;[J[Lcom/google/ads/interactivemedia/v3/internal/ow;)V

    move-object/from16 v11, v107

    .line 309
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v8, p0

    move-wide/from16 v15, v63

    :goto_40
    const/4 v12, 0x0

    const-wide/16 v41, 0x0

    goto/16 :goto_41

    :cond_68
    move-wide/from16 v3, p1

    move-object/from16 v84, v14

    goto/16 :goto_39

    :cond_69
    move-object v2, v11

    move-object v1, v12

    move-object/from16 v14, v84

    move-object/from16 v10, v103

    move-object/from16 v13, v105

    move-object/from16 v11, v107

    const-wide/16 v41, 0x0

    .line 310
    invoke-static {v9, v8}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3
    :try_end_22
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_22 .. :try_end_22} :catch_2

    if-eqz v3, :cond_6a

    const/4 v12, 0x0

    move-object/from16 v8, p0

    .line 311
    :try_start_23
    invoke-virtual {v8, v9, v12}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/ads/interactivemedia/v3/internal/vq;)Lcom/google/ads/interactivemedia/v3/internal/vq;

    move-result-object v1

    move-object/from16 v48, v1

    move-object/from16 v6, v47

    move-wide/from16 v15, v63

    goto :goto_42

    :cond_6a
    const/4 v12, 0x0

    move-object/from16 v8, p0

    .line 312
    invoke-static {v9, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6b

    move-wide/from16 v5, v63

    .line 313
    invoke-virtual {v8, v9, v12, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/ads/interactivemedia/v3/internal/vn;J)Lcom/google/ads/interactivemedia/v3/internal/vn;

    move-result-object v1

    move-object/from16 v48, v1

    move-wide v15, v5

    goto :goto_41

    :cond_6b
    move-wide/from16 v5, v63

    .line 314
    invoke-static {v9, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6c

    const/4 v3, 0x0

    .line 315
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v15, v5

    invoke-virtual/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/ads/interactivemedia/v3/internal/vo;Ljava/util/List;J)Lcom/google/ads/interactivemedia/v3/internal/vo;

    move-result-object v1

    move-object/from16 v48, v1

    goto :goto_41

    :cond_6c
    move-wide v15, v5

    const-string v1, "AssetIdentifier"

    .line 316
    invoke-static {v9, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6d

    const-string v1, "AssetIdentifier"

    .line 317
    invoke-static {v9, v1}, Lcom/google/ads/interactivemedia/v3/internal/vd;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Lcom/google/ads/interactivemedia/v3/internal/ve;

    goto :goto_41

    .line 318
    :cond_6d
    invoke-static {v9}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_41
    move-object/from16 v6, v47

    :goto_42
    const-string v1, "Period"

    .line 319
    invoke-static {v9, v1}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/vg;

    move-object/from16 v43, v1

    move-object/from16 v47, v7

    move-object/from16 v48, v11

    .line 320
    invoke-direct/range {v43 .. v48}, Lcom/google/ads/interactivemedia/v3/internal/vg;-><init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)V

    .line 321
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 322
    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 323
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/vg;

    .line 324
    iget-wide v3, v2, Lcom/google/ads/interactivemedia/v3/internal/vg;->b:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_6f

    if-eqz v52, :cond_6e

    move-wide/from16 v5, v32

    move-object/from16 v1, v68

    const/16 v38, 0x1

    goto/16 :goto_45

    .line 335
    :cond_6e
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    .line 331
    invoke-interface/range {v68 .. v68}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2f

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unable to determine start of period "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :cond_6f
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v3, v5

    if-nez v1, :cond_70

    move-object/from16 v1, v68

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_43

    .line 326
    :cond_70
    iget-wide v5, v2, Lcom/google/ads/interactivemedia/v3/internal/vg;->b:J

    add-long/2addr v3, v5

    move-object/from16 v1, v68

    .line 327
    :goto_43
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-wide v5, v3

    goto :goto_45

    :cond_71
    move-object v1, v7

    move-object v7, v8

    move-object/from16 v43, v10

    move-object v5, v11

    move-object/from16 v47, v13

    move-object v12, v14

    move-wide/from16 p1, v32

    move-object/from16 v11, v40

    move/from16 v33, v52

    move-object/from16 v2, v68

    move-object/from16 v10, v76

    move-object/from16 v13, v98

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object v14, v9

    move-wide v8, v15

    move-object/from16 v15, v79

    goto/16 :goto_9

    :catch_2
    move-exception v0

    move-object/from16 v8, p0

    goto/16 :goto_47

    :cond_72
    move-object v1, v2

    move-object/from16 v49, v8

    move-object/from16 v50, v9

    move-object/from16 v76, v10

    move-object/from16 v40, v11

    move-object/from16 v98, v13

    move-object v9, v14

    move/from16 v52, v33

    const-wide/16 v41, 0x0

    const/16 v70, 0x1

    move-wide/from16 v32, v5

    move-object v8, v7

    move-object v14, v12

    const/4 v12, 0x0

    .line 328
    invoke-static {v9}, Lcom/google/ads/interactivemedia/v3/internal/vd;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_44
    move-wide/from16 v5, v32

    :goto_45
    move-object/from16 v2, v50

    .line 329
    invoke-static {v9, v2}, Lcom/google/ads/interactivemedia/v3/impl/data/av;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_77

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v19, v3

    if-nez v2, :cond_75

    cmp-long v2, v5, v3

    if-eqz v2, :cond_73

    move-wide/from16 v19, v5

    goto :goto_46

    :cond_73
    if-eqz v52, :cond_74

    goto :goto_46

    .line 334
    :cond_74
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v2, "Unable to determine duration of static manifest."

    .line 335
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    :cond_75
    :goto_46
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_76

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/vb;

    move-object/from16 v16, v2

    move/from16 v23, v52

    move-object/from16 v32, v35

    move-object/from16 v33, v36

    move-object/from16 v34, v37

    move-object/from16 v35, v1

    .line 333
    invoke-direct/range {v16 .. v35}, Lcom/google/ads/interactivemedia/v3/internal/vb;-><init>(JJJZJJJJLcom/google/ads/interactivemedia/v3/internal/vh;Lcom/google/ads/interactivemedia/v3/internal/vu;Landroid/net/Uri;Ljava/util/List;)V

    return-object v2

    .line 336
    :cond_76
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v2, "No periods found."

    .line 334
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_77
    move-object v7, v8

    move-object v12, v14

    move-object/from16 v11, v40

    move-object/from16 v8, v49

    move/from16 v33, v52

    move-object/from16 v10, v76

    move-object/from16 v13, v98

    const/4 v15, 0x1

    move-object v14, v9

    move-object v9, v2

    move-object v2, v1

    move-object/from16 v1, v39

    goto/16 :goto_4

    :cond_78
    move-object v8, v7

    .line 18
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v2, "inputStream does not contain a valid media presentation description"

    .line 19
    invoke-direct {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_23
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_23} :catch_3

    :catch_3
    move-exception v0

    goto :goto_47

    :catch_4
    move-exception v0

    move-object v8, v7

    :goto_47
    move-object v1, v0

    .line 330
    :goto_48
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/dt;

    .line 336
    invoke-direct {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
