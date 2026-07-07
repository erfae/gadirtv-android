.class public final Lcom/google/vr/sdk/widgets/video/deps/mj;
.super Lcom/google/vr/sdk/widgets/video/deps/lj;
.source "TtmlDecoder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/mj$a;,
        Lcom/google/vr/sdk/widgets/video/deps/mj$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Lcom/google/vr/sdk/widgets/video/deps/mj$b;

.field private static final g:Lcom/google/vr/sdk/widgets/video/deps/mj$a;


# instance fields
.field private final h:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    .line 328
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/mj;->a:Ljava/util/regex/Pattern;

    const-string v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    .line 330
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/mj;->b:Ljava/util/regex/Pattern;

    const-string v0, "^(([0-9]*.)?[0-9]+)(px|em|%)$"

    .line 331
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/mj;->c:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+\\.?\\d*?)% (\\d+\\.?\\d*?)%$"

    .line 333
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/mj;->d:Ljava/util/regex/Pattern;

    const-string v0, "^(\\d+) (\\d+)$"

    .line 334
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/mj;->e:Ljava/util/regex/Pattern;

    .line 335
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/mj$b;

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/google/vr/sdk/widgets/video/deps/mj$b;-><init>(FII)V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/mj;->f:Lcom/google/vr/sdk/widgets/video/deps/mj$b;

    .line 336
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/mj$a;

    const/16 v1, 0x20

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/mj$a;-><init>(II)V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/mj;->g:Lcom/google/vr/sdk/widgets/video/deps/mj$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "TtmlDecoder"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/lj;-><init>(Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mj;->h:Lorg/xmlpull/v1/XmlPullParserFactory;

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Couldn\'t create XmlPullParserFactory instance"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/mj$b;)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ln;
        }
    .end annotation

    .line 289
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/mj;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-wide v2, 0x412e848000000000L    # 1000000.0

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v1, :cond_3

    .line 291
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 292
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const-wide/16 v9, 0xe10

    mul-long v7, v7, v9

    long-to-double v7, v7

    .line 293
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 294
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const-wide/16 v11, 0x3c

    mul-long v9, v9, v11

    long-to-double v9, v9

    add-double/2addr v7, v9

    .line 295
    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 296
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    long-to-double v5, v5

    add-double/2addr v7, v5

    .line 297
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v4, 0x0

    if-eqz p0, :cond_0

    .line 298
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    goto :goto_0

    :cond_0
    move-wide v9, v4

    :goto_0
    add-double/2addr v7, v9

    const/4 p0, 0x5

    .line 299
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 301
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    long-to-float p0, v9

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/mj$b;->a:F

    div-float/2addr p0, v1

    float-to-double v9, p0

    goto :goto_1

    :cond_1
    move-wide v9, v4

    :goto_1
    add-double/2addr v7, v9

    const/4 p0, 0x6

    .line 302
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 305
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    long-to-double v0, v0

    iget p0, p1, Lcom/google/vr/sdk/widgets/video/deps/mj$b;->b:I

    int-to-double v4, p0

    div-double/2addr v0, v4

    iget p0, p1, Lcom/google/vr/sdk/widgets/video/deps/mj$b;->a:F

    float-to-double p0, p0

    div-double v4, v0, p0

    :cond_2
    add-double/2addr v7, v4

    mul-double v7, v7, v2

    double-to-long p0, v7

    return-wide p0

    .line 308
    :cond_3
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/mj;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 309
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 310
    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 311
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 312
    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    .line 313
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :goto_2
    const/4 v4, -0x1

    goto :goto_3

    :sswitch_0
    const-string v1, "ms"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_2

    :sswitch_1
    const-string v1, "t"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x3

    goto :goto_3

    :sswitch_2
    const-string v1, "m"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x2

    goto :goto_3

    :sswitch_3
    const-string v1, "h"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v4, 0x1

    goto :goto_3

    :sswitch_4
    const-string v1, "f"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    :cond_8
    :goto_3
    packed-switch v4, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    const-wide p0, 0x408f400000000000L    # 1000.0

    :goto_4
    div-double/2addr v8, p0

    goto :goto_6

    .line 323
    :pswitch_1
    iget p0, p1, Lcom/google/vr/sdk/widgets/video/deps/mj$b;->c:I

    int-to-double p0, p0

    goto :goto_4

    :pswitch_2
    const-wide/high16 p0, 0x404e000000000000L    # 60.0

    goto :goto_5

    :pswitch_3
    const-wide p0, 0x40ac200000000000L    # 3600.0

    :goto_5
    mul-double v8, v8, p0

    goto :goto_6

    .line 321
    :pswitch_4
    iget p0, p1, Lcom/google/vr/sdk/widgets/video/deps/mj$b;->a:F

    float-to-double p0, p0

    goto :goto_4

    :goto_6
    mul-double v8, v8, v2

    double-to-long p0, v8

    return-wide p0

    .line 325
    :cond_9
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ln;

    const-string v0, "Malformed time expression: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7

    :cond_a
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-direct {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/ln;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_4
        0x68 -> :sswitch_3
        0x6d -> :sswitch_2
        0x74 -> :sswitch_1
        0xda6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/mj$a;)Lcom/google/vr/sdk/widgets/video/deps/mj$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ln;
        }
    .end annotation

    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "cellResolution"

    .line 83
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p2

    .line 86
    :cond_0
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/mj;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "Ignoring malformed cell resolution: "

    const-string v3, "TtmlDecoder"

    if-nez v1, :cond_2

    .line 88
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    :cond_2
    const/4 v1, 0x1

    .line 90
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x2

    .line 91
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 94
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/mj$a;

    invoke-direct {v4, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/mj$a;-><init>(II)V

    return-object v4

    .line 93
    :cond_3
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/ln;

    const/16 v5, 0x2f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Invalid cell resolution "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/google/vr/sdk/widgets/video/deps/ln;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    .line 96
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/vr/sdk/widgets/video/deps/mj$b;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ln;
        }
    .end annotation

    const-string v0, "http://www.w3.org/ns/ttml#parameter"

    const-string v1, "frameRate"

    .line 62
    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    const/16 v1, 0x1e

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    const-string v3, "frameRateMultiplier"

    .line 66
    invoke-interface {p1, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v2, " "

    .line 68
    invoke-static {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 69
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    .line 71
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x1

    .line 72
    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    div-float v2, v3, v2

    goto :goto_1

    .line 70
    :cond_1
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ln;

    const-string v0, "frameRateMultiplier doesn\'t have 2 parts"

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ln;-><init>(Ljava/lang/String;)V

    throw p1

    .line 74
    :cond_2
    :goto_1
    sget-object v3, Lcom/google/vr/sdk/widgets/video/deps/mj;->f:Lcom/google/vr/sdk/widgets/video/deps/mj$b;

    iget v4, v3, Lcom/google/vr/sdk/widgets/video/deps/mj$b;->b:I

    const-string v5, "subFrameRate"

    .line 75
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 77
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 78
    :cond_3
    iget v3, v3, Lcom/google/vr/sdk/widgets/video/deps/mj$b;->c:I

    const-string v5, "tickRate"

    .line 79
    invoke-interface {p1, v0, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 82
    :cond_4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/mj$b;

    int-to-float v0, v1

    mul-float v0, v0, v2

    invoke-direct {p1, v0, v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/mj$b;-><init>(FII)V

    return-object p1
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/mk;Ljava/util/Map;Lcom/google/vr/sdk/widgets/video/deps/mj$b;)Lcom/google/vr/sdk/widgets/video/deps/mk;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lcom/google/vr/sdk/widgets/video/deps/mk;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/ml;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/mj$b;",
            ")",
            "Lcom/google/vr/sdk/widgets/video/deps/mk;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ln;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 223
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v4

    const/4 v5, 0x0

    .line 224
    invoke-direct {v0, v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/mn;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object v11

    const-string v9, ""

    move-object v12, v5

    move-object v13, v9

    const/4 v5, 0x0

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v16, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    if-ge v5, v4, :cond_7

    .line 226
    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 227
    invoke-interface {v1, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    .line 228
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v18

    sparse-switch v18, :sswitch_data_0

    :goto_1
    const/4 v8, -0x1

    goto :goto_2

    :sswitch_0
    const-string v8, "style"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    const/4 v8, 0x4

    goto :goto_2

    :sswitch_1
    const-string v8, "begin"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v8, 0x3

    goto :goto_2

    :sswitch_2
    const-string v8, "end"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v8, 0x2

    goto :goto_2

    :sswitch_3
    const-string v8, "dur"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v8, 0x1

    goto :goto_2

    :sswitch_4
    const-string v8, "region"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_2
    packed-switch v8, :pswitch_data_0

    goto :goto_3

    .line 235
    :pswitch_0
    invoke-direct {v0, v7}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 236
    array-length v7, v6

    if-lez v7, :cond_5

    move-object v12, v6

    goto :goto_3

    .line 229
    :pswitch_1
    invoke-static {v7, v3}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/mj$b;)J

    move-result-wide v9

    :cond_5
    :goto_3
    move-object/from16 v6, p3

    goto :goto_4

    .line 231
    :pswitch_2
    invoke-static {v7, v3}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/mj$b;)J

    move-result-wide v14

    goto :goto_3

    .line 233
    :pswitch_3
    invoke-static {v7, v3}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/mj$b;)J

    move-result-wide v16

    goto :goto_3

    :pswitch_4
    move-object/from16 v6, p3

    .line 238
    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v13, v7

    :cond_6
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_7
    if-eqz v2, :cond_9

    .line 241
    iget-wide v3, v2, Lcom/google/vr/sdk/widgets/video/deps/mk;->d:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-eqz v7, :cond_a

    cmp-long v3, v9, v5

    if-eqz v3, :cond_8

    .line 243
    iget-wide v3, v2, Lcom/google/vr/sdk/widgets/video/deps/mk;->d:J

    add-long/2addr v9, v3

    :cond_8
    cmp-long v3, v14, v5

    if-eqz v3, :cond_a

    .line 245
    iget-wide v3, v2, Lcom/google/vr/sdk/widgets/video/deps/mk;->d:J

    add-long/2addr v14, v3

    goto :goto_5

    :cond_9
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    :cond_a
    :goto_5
    move-wide v7, v9

    cmp-long v3, v14, v5

    if-nez v3, :cond_c

    cmp-long v3, v16, v5

    if-eqz v3, :cond_b

    add-long v16, v7, v16

    move-wide/from16 v9, v16

    goto :goto_6

    :cond_b
    if-eqz v2, :cond_c

    .line 249
    iget-wide v3, v2, Lcom/google/vr/sdk/widgets/video/deps/mk;->e:J

    cmp-long v9, v3, v5

    if-eqz v9, :cond_c

    .line 250
    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/mk;->e:J

    move-wide v9, v2

    goto :goto_6

    :cond_c
    move-wide v9, v14

    .line 251
    :goto_6
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v6 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/mk;->a(Ljava/lang/String;JJLcom/google/vr/sdk/widgets/video/deps/mn;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/mk;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x37b7d90c -> :sswitch_4
        0x18601 -> :sswitch_3
        0x188db -> :sswitch_2
        0x59478a9 -> :sswitch_1
        0x68b1db1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/mn;)Lcom/google/vr/sdk/widgets/video/deps/mn;
    .locals 0

    if-nez p1, :cond_0

    .line 217
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/mn;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/mn;-><init>()V

    :cond_0
    return-object p1
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/mn;)Lcom/google/vr/sdk/widgets/video/deps/mn;
    .locals 11

    .line 161
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_16

    .line 163
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 164
    invoke-interface {p1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, -0x1

    const/4 v10, 0x1

    sparse-switch v5, :sswitch_data_0

    :goto_1
    const/4 v4, -0x1

    goto/16 :goto_2

    :sswitch_0
    const-string v5, "backgroundColor"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x8

    goto/16 :goto_2

    :sswitch_1
    const-string v5, "fontSize"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x7

    goto :goto_2

    :sswitch_2
    const-string v5, "color"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x6

    goto :goto_2

    :sswitch_3
    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x5

    goto :goto_2

    :sswitch_4
    const-string v5, "fontWeight"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v4, 0x4

    goto :goto_2

    :sswitch_5
    const-string v5, "textDecoration"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    const/4 v4, 0x3

    goto :goto_2

    :sswitch_6
    const-string v5, "textAlign"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, 0x2

    goto :goto_2

    :sswitch_7
    const-string v5, "fontFamily"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_1

    :cond_7
    const/4 v4, 0x1

    goto :goto_2

    :sswitch_8
    const-string v5, "fontStyle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    :goto_2
    const-string v5, "TtmlDecoder"

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_a

    .line 167
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Lcom/google/vr/sdk/widgets/video/deps/mn;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    .line 168
    :try_start_0
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/os;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/vr/sdk/widgets/video/deps/mn;->b(I)Lcom/google/vr/sdk/widgets/video/deps/mn;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_a

    :catch_0
    nop

    const-string v4, "Failed parsing background value: "

    .line 171
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_9
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 181
    :pswitch_1
    :try_start_1
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Lcom/google/vr/sdk/widgets/video/deps/mn;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    .line 182
    invoke-static {v3, p2}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/mn;)V
    :try_end_1
    .catch Lcom/google/vr/sdk/widgets/video/deps/ln; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_a

    :catch_1
    nop

    const-string v4, "Failed parsing fontSize value: "

    .line 185
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_a

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_a
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 173
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Lcom/google/vr/sdk/widgets/video/deps/mn;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    .line 174
    :try_start_2
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/os;->a(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/google/vr/sdk/widgets/video/deps/mn;->a(I)Lcom/google/vr/sdk/widgets/video/deps/mn;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_a

    :catch_2
    nop

    const-string v4, "Failed parsing color value: "

    .line 177
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_b
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_5
    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 165
    :pswitch_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "style"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 166
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Lcom/google/vr/sdk/widgets/video/deps/mn;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/mn;->b(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    goto/16 :goto_a

    .line 187
    :pswitch_4
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Lcom/google/vr/sdk/widgets/video/deps/mn;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    const-string v4, "bold"

    .line 188
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 189
    invoke-virtual {p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/mn;->c(Z)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    goto/16 :goto_a

    .line 206
    :pswitch_5
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :goto_6
    const/4 v7, -0x1

    goto :goto_7

    :sswitch_9
    const-string v4, "linethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_6

    :sswitch_a
    const-string v4, "nolinethrough"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto :goto_6

    :cond_c
    const/4 v7, 0x2

    goto :goto_7

    :sswitch_b
    const-string v4, "underline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto :goto_6

    :cond_d
    const/4 v7, 0x1

    goto :goto_7

    :sswitch_c
    const-string v4, "nounderline"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto :goto_6

    :cond_e
    const/4 v7, 0x0

    :cond_f
    :goto_7
    packed-switch v7, :pswitch_data_1

    goto/16 :goto_a

    .line 207
    :pswitch_6
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Lcom/google/vr/sdk/widgets/video/deps/mn;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    invoke-virtual {p2, v10}, Lcom/google/vr/sdk/widgets/video/deps/mn;->a(Z)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    goto/16 :goto_a

    .line 209
    :pswitch_7
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Lcom/google/vr/sdk/widgets/video/deps/mn;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/mn;->a(Z)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    goto/16 :goto_a

    .line 211
    :pswitch_8
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Lcom/google/vr/sdk/widgets/video/deps/mn;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    invoke-virtual {p2, v10}, Lcom/google/vr/sdk/widgets/video/deps/mn;->b(Z)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    goto/16 :goto_a

    .line 213
    :pswitch_9
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Lcom/google/vr/sdk/widgets/video/deps/mn;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/mn;->b(Z)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    goto/16 :goto_a

    .line 195
    :pswitch_a
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_2

    :goto_8
    const/4 v6, -0x1

    goto :goto_9

    :sswitch_d
    const-string v4, "start"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto :goto_8

    :sswitch_e
    const-string v4, "right"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto :goto_8

    :cond_10
    const/4 v6, 0x3

    goto :goto_9

    :sswitch_f
    const-string v4, "left"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_8

    :cond_11
    const/4 v6, 0x2

    goto :goto_9

    :sswitch_10
    const-string v4, "end"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto :goto_8

    :cond_12
    const/4 v6, 0x1

    goto :goto_9

    :sswitch_11
    const-string v4, "center"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto :goto_8

    :cond_13
    const/4 v6, 0x0

    :cond_14
    :goto_9
    packed-switch v6, :pswitch_data_2

    goto :goto_a

    .line 198
    :pswitch_b
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Lcom/google/vr/sdk/widgets/video/deps/mn;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/mn;->a(Landroid/text/Layout$Alignment;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    goto :goto_a

    .line 200
    :pswitch_c
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Lcom/google/vr/sdk/widgets/video/deps/mn;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/mn;->a(Landroid/text/Layout$Alignment;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    goto :goto_a

    .line 196
    :pswitch_d
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Lcom/google/vr/sdk/widgets/video/deps/mn;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/mn;->a(Landroid/text/Layout$Alignment;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    goto :goto_a

    .line 202
    :pswitch_e
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Lcom/google/vr/sdk/widgets/video/deps/mn;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/mn;->a(Landroid/text/Layout$Alignment;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    goto :goto_a

    .line 204
    :pswitch_f
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Lcom/google/vr/sdk/widgets/video/deps/mn;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/mn;->a(Landroid/text/Layout$Alignment;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    goto :goto_a

    .line 179
    :pswitch_10
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Lcom/google/vr/sdk/widgets/video/deps/mn;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/mn;->a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    goto :goto_a

    .line 191
    :pswitch_11
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Lcom/google/vr/sdk/widgets/video/deps/mn;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    const-string v4, "italic"

    .line 192
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    .line 193
    invoke-virtual {p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/mn;->d(Z)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object p2

    :cond_15
    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_16
    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5c71855e -> :sswitch_8
        -0x48ff636d -> :sswitch_7
        -0x3f826a28 -> :sswitch_6
        -0x3468fa43 -> :sswitch_5
        -0x2bc67c59 -> :sswitch_4
        0xd1b -> :sswitch_3
        0x5a72f63 -> :sswitch_2
        0x15caa0f0 -> :sswitch_1
        0x4cb7f6d5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_a
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x57195dd5 -> :sswitch_c
        -0x3d363934 -> :sswitch_b
        0x36723ff0 -> :sswitch_a
        0x641ec051 -> :sswitch_9
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x514d33ab -> :sswitch_11
        0x188db -> :sswitch_10
        0x32a007 -> :sswitch_f
        0x677c21c -> :sswitch_e
        0x68ac462 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;Lcom/google/vr/sdk/widgets/video/deps/mj$a;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/mn;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/ml;",
            ">;",
            "Lcom/google/vr/sdk/widgets/video/deps/mj$a;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/mn;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 98
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    const-string v0, "style"

    .line 99
    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pu;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pu;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/mn;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/mn;-><init>()V

    invoke-direct {p0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/mn;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 103
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 104
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/vr/sdk/widgets/video/deps/mn;

    invoke-virtual {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/mn;->a(Lcom/google/vr/sdk/widgets/video/deps/mn;)Lcom/google/vr/sdk/widgets/video/deps/mn;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/mn;->i()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 107
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/mn;->i()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string v0, "region"

    .line 108
    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pu;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 109
    invoke-direct {p0, p1, p4}, Lcom/google/vr/sdk/widgets/video/deps/mj;->b(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/mj$a;)Lcom/google/vr/sdk/widgets/video/deps/ml;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 111
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ml;->a:Ljava/lang/String;

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    const-string v0, "head"

    .line 112
    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pu;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2
.end method

.method private static a(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/mn;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ln;
        }
    .end annotation

    const-string v0, "\\s+"

    .line 268
    invoke-static {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 269
    array-length v1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 270
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/mj;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    goto :goto_0

    .line 271
    :cond_0
    array-length v1, v0

    if-ne v1, v2, :cond_5

    .line 272
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/mj;->c:Ljava/util/regex/Pattern;

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "TtmlDecoder"

    const-string v4, "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first."

    .line 273
    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v4, "\'."

    if-eqz v1, :cond_4

    const/4 p0, 0x3

    .line 276
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "px"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    goto :goto_1

    :sswitch_1
    const-string v6, "em"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    goto :goto_1

    :sswitch_2
    const-string v6, "%"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_0

    .line 284
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/ln;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Invalid unit for fontSize: \'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ln;-><init>(Ljava/lang/String;)V

    throw p0

    .line 278
    :pswitch_0
    invoke-virtual {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/mn;->c(I)Lcom/google/vr/sdk/widgets/video/deps/mn;

    goto :goto_2

    .line 280
    :pswitch_1
    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/mn;->c(I)Lcom/google/vr/sdk/widgets/video/deps/mn;

    goto :goto_2

    .line 282
    :pswitch_2
    invoke-virtual {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/mn;->c(I)Lcom/google/vr/sdk/widgets/video/deps/mn;

    .line 285
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/mn;->a(F)Lcom/google/vr/sdk/widgets/video/deps/mn;

    return-void

    .line 287
    :cond_4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ln;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x24

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid expression for fontSize: \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/ln;-><init>(Ljava/lang/String;)V

    throw p1

    .line 274
    :cond_5
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/ln;

    array-length p1, v0

    const/16 v0, 0x34

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid number of entries for fontSize: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ln;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_2
        0xca8 -> :sswitch_1
        0xe08 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "\\s+"

    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private b(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/mj$a;)Lcom/google/vr/sdk/widgets/video/deps/ml;
    .locals 11

    const-string v0, "id"

    .line 114
    invoke-static {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pu;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    const-string v1, "origin"

    .line 117
    invoke-static {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/pu;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "TtmlDecoder"

    if-eqz v1, :cond_b

    .line 119
    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/mj;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 120
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    .line 121
    :try_start_0
    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    const/4 v9, 0x2

    .line 122
    invoke-virtual {v5, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    div-float/2addr v5, v8

    const-string v10, "extent"

    .line 132
    invoke-static {p1, v10}, Lcom/google/vr/sdk/widgets/video/deps/pu;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 134
    invoke-virtual {v4, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 135
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 136
    :try_start_1
    invoke-virtual {v4, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    div-float/2addr v10, v8

    .line 137
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    div-float/2addr v0, v8

    const/4 v1, 0x0

    const-string v3, "displayAlign"

    .line 148
    invoke-static {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/pu;->d(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 150
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v3, "center"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "after"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    add-float/2addr v5, v0

    move v4, v5

    const/4 v6, 0x2

    goto :goto_1

    :cond_2
    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v0, p1

    add-float/2addr v5, v0

    move v4, v5

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v5

    const/4 v6, 0x0

    :goto_1
    const/high16 p1, 0x3f800000    # 1.0f

    .line 157
    iget p2, p2, Lcom/google/vr/sdk/widgets/video/deps/mj$a;->b:I

    int-to-float p2, p2

    div-float v9, p1, p2

    .line 158
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ml;

    const/4 v5, 0x0

    const/4 v8, 0x1

    move-object v1, p1

    move v3, v7

    move v7, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/ml;-><init>(Ljava/lang/String;FFIIFIF)V

    return-object p1

    :catch_0
    nop

    const-string p1, "Ignoring region with malformed extent: "

    .line 140
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_4
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_2
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_5
    const-string p1, "Ignoring region with unsupported extent: "

    .line 142
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_3
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_7
    const-string p1, "Ignoring region without an extent"

    .line 145
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :catch_1
    nop

    const-string p1, "Ignoring region with malformed origin: "

    .line 125
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_8
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_4
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_9
    const-string p1, "Ignoring region with unsupported origin: "

    .line 127
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_5

    :cond_a
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_5
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_b
    const-string p1, "Ignoring region without an origin"

    .line 130
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "tt"

    .line 252
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "head"

    .line 253
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "body"

    .line 254
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "div"

    .line 255
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "p"

    .line 256
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "span"

    .line 257
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "br"

    .line 258
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "style"

    .line 259
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "styling"

    .line 260
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "layout"

    .line 261
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "region"

    .line 262
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "metadata"

    .line 263
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "smpte:image"

    .line 264
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "smpte:data"

    .line 265
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "smpte:information"

    .line 266
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method protected synthetic a([BIZ)Lcom/google/vr/sdk/widgets/video/deps/ll;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ln;
        }
    .end annotation

    .line 326
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/mj;->b([BIZ)Lcom/google/vr/sdk/widgets/video/deps/mo;

    move-result-object p1

    return-object p1
.end method

.method protected b([BIZ)Lcom/google/vr/sdk/widgets/video/deps/mo;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/ln;
        }
    .end annotation

    .line 8
    :try_start_0
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/mj;->h:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {p3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p3

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 10
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, ""

    .line 11
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/ml;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/ml;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v2, Ljava/io/ByteArrayInputStream;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3, p2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 13
    invoke-interface {p3, v2, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 15
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    .line 17
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p2

    .line 18
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/mj;->f:Lcom/google/vr/sdk/widgets/video/deps/mj$b;

    .line 19
    sget-object v5, Lcom/google/vr/sdk/widgets/video/deps/mj;->g:Lcom/google/vr/sdk/widgets/video/deps/mj$a;

    :goto_0
    const/4 v6, 0x1

    if-eq p2, v6, :cond_a

    .line 21
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/vr/sdk/widgets/video/deps/mk;

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-nez v3, :cond_7

    .line 23
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v10, "tt"

    if-ne p2, v8, :cond_4

    .line 25
    :try_start_1
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 26
    invoke-direct {p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Lorg/xmlpull/v1/XmlPullParser;)Lcom/google/vr/sdk/widgets/video/deps/mj$b;

    move-result-object v2

    .line 27
    sget-object p2, Lcom/google/vr/sdk/widgets/video/deps/mj;->g:Lcom/google/vr/sdk/widgets/video/deps/mj$a;

    invoke-direct {p0, p3, p2}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/mj$a;)Lcom/google/vr/sdk/widgets/video/deps/mj$a;

    move-result-object v5

    .line 28
    :cond_0
    invoke-static {v9}, Lcom/google/vr/sdk/widgets/video/deps/mj;->b(Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v7, "TtmlDecoder"

    if-nez p2, :cond_2

    :try_start_2
    const-string p2, "Ignoring unsupported tag: "

    .line 29
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p2, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p2, v6

    :goto_1
    invoke-static {v7, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string p2, "head"

    .line 31
    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 32
    invoke-direct {p0, p3, v0, v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/util/Map;Lcom/google/vr/sdk/widgets/video/deps/mj$a;)Ljava/util/Map;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 33
    :cond_3
    :try_start_3
    invoke-direct {p0, p3, v6, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/mj;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/google/vr/sdk/widgets/video/deps/mk;Ljava/util/Map;Lcom/google/vr/sdk/widgets/video/deps/mj$b;)Lcom/google/vr/sdk/widgets/video/deps/mk;

    move-result-object p2

    .line 34
    invoke-virtual {p1, p2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    if-eqz v6, :cond_9

    .line 36
    invoke-virtual {v6, p2}, Lcom/google/vr/sdk/widgets/video/deps/mk;->a(Lcom/google/vr/sdk/widgets/video/deps/mk;)V
    :try_end_3
    .catch Lcom/google/vr/sdk/widgets/video/deps/ln; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_0
    move-exception p2

    :try_start_4
    const-string v6, "Suppressing parser error"

    .line 39
    invoke-static {v7, v6, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_4
    const/4 v8, 0x4

    if-ne p2, v8, :cond_5

    .line 43
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/mk;->a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/mk;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/google/vr/sdk/widgets/video/deps/mk;->a(Lcom/google/vr/sdk/widgets/video/deps/mk;)V

    goto :goto_3

    :cond_5
    if-ne p2, v7, :cond_9

    .line 45
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 46
    new-instance v4, Lcom/google/vr/sdk/widgets/video/deps/mo;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/vr/sdk/widgets/video/deps/mk;

    invoke-direct {v4, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/mo;-><init>(Lcom/google/vr/sdk/widgets/video/deps/mk;Ljava/util/Map;Ljava/util/Map;)V

    .line 47
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    goto :goto_3

    :cond_7
    if-ne p2, v8, :cond_8

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    if-ne p2, v7, :cond_9

    add-int/lit8 v3, v3, -0x1

    .line 53
    :cond_9
    :goto_3
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 54
    invoke-interface {p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p2
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :cond_a
    return-object v4

    :catch_1
    move-exception p1

    .line 60
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Unexpected error when reading input."

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 58
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/ln;

    const-string p3, "Unable to decode source"

    invoke-direct {p2, p3, p1}, Lcom/google/vr/sdk/widgets/video/deps/ln;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
