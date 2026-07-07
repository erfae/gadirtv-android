.class public final Lcom/google/vr/sdk/widgets/video/deps/lf;
.super Ljava/lang/Object;
.source "HlsPlaylistParser.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/ol$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/lf$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/vr/sdk/widgets/video/deps/ol$a<",
        "Lcom/google/vr/sdk/widgets/video/deps/le;",
        ">;"
    }
.end annotation


# static fields
.field private static final A:Ljava/util/regex/Pattern;

.field private static final B:Ljava/util/regex/Pattern;

.field private static final C:Ljava/util/regex/Pattern;

.field private static final D:Ljava/util/regex/Pattern;

.field private static final E:Ljava/util/regex/Pattern;

.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;

.field private static final h:Ljava/util/regex/Pattern;

.field private static final i:Ljava/util/regex/Pattern;

.field private static final j:Ljava/util/regex/Pattern;

.field private static final k:Ljava/util/regex/Pattern;

.field private static final l:Ljava/util/regex/Pattern;

.field private static final m:Ljava/util/regex/Pattern;

.field private static final n:Ljava/util/regex/Pattern;

.field private static final o:Ljava/util/regex/Pattern;

.field private static final p:Ljava/util/regex/Pattern;

.field private static final q:Ljava/util/regex/Pattern;

.field private static final r:Ljava/util/regex/Pattern;

.field private static final s:Ljava/util/regex/Pattern;

.field private static final t:Ljava/util/regex/Pattern;

.field private static final u:Ljava/util/regex/Pattern;

.field private static final v:Ljava/util/regex/Pattern;

.field private static final w:Ljava/util/regex/Pattern;

.field private static final x:Ljava/util/regex/Pattern;

.field private static final y:Ljava/util/regex/Pattern;

.field private static final z:Ljava/util/regex/Pattern;


# instance fields
.field private final F:Lcom/google/vr/sdk/widgets/video/deps/lc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AVERAGE-BANDWIDTH=(\\d+)\\b"

    .line 359
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->a:Ljava/util/regex/Pattern;

    const-string v0, "AUDIO=\"(.+?)\""

    .line 360
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->b:Ljava/util/regex/Pattern;

    const-string v0, "[^-]BANDWIDTH=(\\d+)\\b"

    .line 361
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->c:Ljava/util/regex/Pattern;

    const-string v0, "CODECS=\"(.+?)\""

    .line 362
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->d:Ljava/util/regex/Pattern;

    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    .line 363
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->e:Ljava/util/regex/Pattern;

    const-string v0, "FRAME-RATE=([\\d\\.]+)\\b"

    .line 364
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->f:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    .line 365
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->g:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    .line 366
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->h:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-PLAYLIST-TYPE:(.+)\\b"

    .line 367
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->i:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    .line 368
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->j:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    .line 369
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->k:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:[\\d\\.]+\\b,(.+)"

    .line 371
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->l:Ljava/util/regex/Pattern;

    const-string v0, "TIME-OFFSET=(-?[\\d\\.]+)\\b"

    .line 372
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->m:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    .line 373
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->n:Ljava/util/regex/Pattern;

    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    .line 375
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->o:Ljava/util/regex/Pattern;

    const-string v0, "METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)"

    .line 377
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->p:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMAT=\"(.+?)\""

    .line 378
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->q:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMATVERSIONS=\"(.+?)\""

    .line 380
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->r:Ljava/util/regex/Pattern;

    const-string v0, "URI=\"(.+?)\""

    .line 381
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->s:Ljava/util/regex/Pattern;

    const-string v0, "IV=([^,.*]+)"

    .line 382
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->t:Ljava/util/regex/Pattern;

    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    .line 383
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->u:Ljava/util/regex/Pattern;

    const-string v0, "LANGUAGE=\"(.+?)\""

    .line 384
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->v:Ljava/util/regex/Pattern;

    const-string v0, "NAME=\"(.+?)\""

    .line 385
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->w:Ljava/util/regex/Pattern;

    const-string v0, "GROUP-ID=\"(.+?)\""

    .line 386
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->x:Ljava/util/regex/Pattern;

    const-string v0, "INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\""

    .line 388
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->y:Ljava/util/regex/Pattern;

    const-string v0, "AUTOSELECT"

    .line 389
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/lf;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->z:Ljava/util/regex/Pattern;

    const-string v0, "DEFAULT"

    .line 390
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/lf;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->A:Ljava/util/regex/Pattern;

    const-string v0, "FORCED"

    .line 391
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/lf;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->B:Ljava/util/regex/Pattern;

    const-string v0, "VALUE=\"(.+?)\""

    .line 392
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->C:Ljava/util/regex/Pattern;

    const-string v0, "IMPORT=\"(.+?)\""

    .line 393
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->D:Ljava/util/regex/Pattern;

    const-string v0, "\\{\\$([a-zA-Z0-9\\-_]+)\\}"

    .line 395
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->E:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/lc;->a:Lcom/google/vr/sdk/widgets/video/deps/lc;

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/lf;-><init>(Lcom/google/vr/sdk/widgets/video/deps/lc;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/lc;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/lf;->F:Lcom/google/vr/sdk/widgets/video/deps/lc;

    return-void
.end method

.method private static a(Ljava/io/BufferedReader;ZI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 51
    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result p2

    goto :goto_0

    :cond_1
    return p2
.end method

.method private static a(Ljava/lang/String;)I
    .locals 3

    .line 153
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->A:Ljava/util/regex/Pattern;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 155
    :goto_0
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/lf;->B:Ljava/util/regex/Pattern;

    invoke-static {p0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 157
    :cond_1
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/lf;->z:Ljava/util/regex/Pattern;

    invoke-static {p0, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    return v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 327
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/google/vr/sdk/widgets/video/deps/cb$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/vr/sdk/widgets/video/deps/cb$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    const-string v0, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    .line 317
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/lf;->s:Ljava/util/regex/Pattern;

    invoke-static {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 319
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    sget-object p2, Lcom/google/vr/sdk/widgets/video/deps/b;->d:Ljava/util/UUID;

    const/16 v0, 0x2c

    .line 320
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    const-string v0, "video/mp4"

    invoke-direct {p1, p2, v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/cb$a;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    :cond_0
    const-string p2, "com.widevine"

    .line 322
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 323
    :try_start_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    sget-object p2, Lcom/google/vr/sdk/widgets/video/deps/b;->d:Ljava/util/UUID;

    const-string v0, "hls"

    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {p1, p2, v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/cb$a;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 325
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    invoke-direct {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Lcom/google/vr/sdk/widgets/video/deps/cb$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/vr/sdk/widgets/video/deps/cb$a;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 309
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->r:Ljava/util/regex/Pattern;

    const-string v1, "1"

    .line 310
    invoke-static {p0, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 311
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 313
    :cond_0
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->s:Ljava/util/regex/Pattern;

    invoke-static {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x2c

    .line 314
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 315
    sget-object p1, Lcom/google/vr/sdk/widgets/video/deps/b;->e:Ljava/util/UUID;

    invoke-static {p1, p0}, Lcom/google/vr/sdk/widgets/video/deps/eg;->a(Ljava/util/UUID;[B)[B

    move-result-object p0

    .line 316
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/b;->e:Ljava/util/UUID;

    const-string v1, "video/mp4"

    invoke-direct {p1, v0, v1, p0}, Lcom/google/vr/sdk/widgets/video/deps/cb$a;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/lf$a;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/lc;
    .locals 30
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 55
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 56
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 57
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 58
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 59
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 60
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 61
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 66
    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/lf$a;->a()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/lf$a;->b()Ljava/lang/String;

    move-result-object v12

    const-string v14, "#EXT"

    .line 68
    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 69
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v14, "#EXT-X-DEFINE"

    .line 70
    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 71
    sget-object v13, Lcom/google/vr/sdk/widgets/video/deps/lf;->w:Ljava/util/regex/Pattern;

    .line 72
    invoke-static {v12, v13, v11}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    sget-object v14, Lcom/google/vr/sdk/widgets/video/deps/lf;->C:Ljava/util/regex/Pattern;

    .line 73
    invoke-static {v12, v14, v11}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 74
    invoke-virtual {v11, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v14, "#EXT-X-INDEPENDENT-SEGMENTS"

    .line 75
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v10, 0x1

    goto :goto_0

    :cond_3
    const-string v14, "#EXT-X-MEDIA"

    .line 77
    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 78
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    const-string v14, "#EXT-X-STREAM-INF"

    .line 79
    invoke-virtual {v12, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_0

    const-string v14, "CLOSED-CAPTIONS=NONE"

    .line 80
    invoke-virtual {v12, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    or-int/2addr v9, v14

    .line 81
    sget-object v14, Lcom/google/vr/sdk/widgets/video/deps/lf;->c:Ljava/util/regex/Pattern;

    invoke-static {v12, v14}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v14

    .line 82
    sget-object v15, Lcom/google/vr/sdk/widgets/video/deps/lf;->a:Ljava/util/regex/Pattern;

    .line 83
    invoke-static {v12, v15, v11}, Lcom/google/vr/sdk/widgets/video/deps/lf;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_5

    .line 85
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    :cond_5
    move/from16 v20, v14

    .line 86
    sget-object v14, Lcom/google/vr/sdk/widgets/video/deps/lf;->d:Ljava/util/regex/Pattern;

    invoke-static {v12, v14, v11}, Lcom/google/vr/sdk/widgets/video/deps/lf;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    .line 87
    sget-object v15, Lcom/google/vr/sdk/widgets/video/deps/lf;->e:Ljava/util/regex/Pattern;

    .line 88
    invoke-static {v12, v15, v11}, Lcom/google/vr/sdk/widgets/video/deps/lf;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_8

    const-string v13, "x"

    .line 90
    invoke-virtual {v15, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 91
    aget-object v15, v13, v8

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 92
    aget-object v13, v13, v3

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    if-lez v15, :cond_7

    if-gtz v13, :cond_6

    goto :goto_1

    :cond_6
    move/from16 v16, v13

    move v13, v15

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v13, -0x1

    const/16 v16, -0x1

    :goto_2
    move/from16 v21, v13

    move/from16 v22, v16

    goto :goto_3

    :cond_8
    const/16 v21, -0x1

    const/16 v22, -0x1

    :goto_3
    const/high16 v13, -0x40800000    # -1.0f

    .line 100
    sget-object v15, Lcom/google/vr/sdk/widgets/video/deps/lf;->f:Ljava/util/regex/Pattern;

    .line 101
    invoke-static {v12, v15, v11}, Lcom/google/vr/sdk/widgets/video/deps/lf;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_9

    .line 103
    invoke-static {v15}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v13

    move/from16 v23, v13

    goto :goto_4

    :cond_9
    const/high16 v23, -0x40800000    # -1.0f

    .line 104
    :goto_4
    sget-object v13, Lcom/google/vr/sdk/widgets/video/deps/lf;->b:Ljava/util/regex/Pattern;

    invoke-static {v12, v13, v11}, Lcom/google/vr/sdk/widgets/video/deps/lf;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_a

    if-eqz v14, :cond_a

    .line 106
    invoke-static {v14, v3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/lf$a;->b()Ljava/lang/String;

    move-result-object v12

    .line 109
    invoke-static {v12, v11}, Lcom/google/vr/sdk/widgets/video/deps/lf;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    .line 110
    invoke-virtual {v0, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 112
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-string v17, "application/x-mpegURL"

    move-object/from16 v19, v14

    .line 113
    invoke-static/range {v15 .. v25}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIFLjava/util/List;I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v13

    .line 114
    new-instance v14, Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    invoke-direct {v14, v12, v13}, Lcom/google/vr/sdk/widgets/video/deps/lc$a;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/l;)V

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 116
    :goto_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v13, v15, :cond_13

    .line 117
    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 118
    invoke-static {v15}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;)I

    move-result v26

    .line 119
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->s:Ljava/util/regex/Pattern;

    invoke-static {v15, v0, v11}, Lcom/google/vr/sdk/widgets/video/deps/lf;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 120
    sget-object v3, Lcom/google/vr/sdk/widgets/video/deps/lf;->w:Ljava/util/regex/Pattern;

    invoke-static {v15, v3, v11}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v18

    .line 121
    sget-object v3, Lcom/google/vr/sdk/widgets/video/deps/lf;->v:Ljava/util/regex/Pattern;

    invoke-static {v15, v3, v11}, Lcom/google/vr/sdk/widgets/video/deps/lf;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 122
    sget-object v8, Lcom/google/vr/sdk/widgets/video/deps/lf;->x:Ljava/util/regex/Pattern;

    invoke-static {v15, v8, v11}, Lcom/google/vr/sdk/widgets/video/deps/lf;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v28, v2

    .line 123
    sget-object v2, Lcom/google/vr/sdk/widgets/video/deps/lf;->u:Ljava/util/regex/Pattern;

    invoke-static {v15, v2, v11}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v17

    move/from16 v29, v10

    sparse-switch v17, :sswitch_data_0

    :goto_6
    const/4 v2, -0x1

    goto :goto_7

    :sswitch_0
    const-string v10, "AUDIO"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_6

    :cond_c
    const/4 v2, 0x2

    goto :goto_7

    :sswitch_1
    const-string v10, "CLOSED-CAPTIONS"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_6

    :cond_d
    const/4 v2, 0x1

    goto :goto_7

    :sswitch_2
    const-string v10, "SUBTITLES"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_6

    :cond_e
    const/4 v2, 0x0

    :goto_7
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_a

    .line 124
    :pswitch_0
    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    check-cast v21, Ljava/lang/String;

    if-eqz v21, :cond_f

    .line 125
    invoke-static/range {v21 .. v21}, Lcom/google/vr/sdk/widgets/video/deps/pb;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v20, v2

    goto :goto_8

    :cond_f
    const/16 v20, 0x0

    :goto_8
    const/16 v22, -0x1

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, 0x0

    const-string v19, "application/x-mpegURL"

    move-object/from16 v17, v18

    move-object/from16 v27, v3

    .line 127
    invoke-static/range {v17 .. v27}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/List;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v2

    if-nez v0, :cond_10

    move-object v12, v2

    goto :goto_a

    .line 130
    :cond_10
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    invoke-direct {v3, v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/lc$a;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/l;)V

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 136
    :pswitch_1
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->y:Ljava/util/regex/Pattern;

    invoke-static {v15, v0, v11}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "CC"

    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x2

    .line 139
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "application/cea-608"

    goto :goto_9

    :cond_11
    const/4 v2, 0x7

    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const-string v2, "application/cea-708"

    :goto_9
    move/from16 v25, v0

    move-object/from16 v20, v2

    if-nez v14, :cond_12

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v0

    :cond_12
    const/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, -0x1

    move-object/from16 v17, v18

    move/from16 v23, v26

    move-object/from16 v24, v3

    .line 145
    invoke-static/range {v17 .. v25}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v0

    .line 146
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :pswitch_2
    const/16 v21, 0x0

    const/16 v22, -0x1

    const-string v19, "application/x-mpegURL"

    const-string v20, "text/vtt"

    move-object/from16 v17, v18

    move/from16 v23, v26

    move-object/from16 v24, v3

    .line 133
    invoke-static/range {v17 .. v24}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v2

    .line 134
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    invoke-direct {v3, v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/lc$a;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/l;)V

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v28

    move/from16 v10, v29

    const/4 v3, 0x1

    const/4 v8, 0x0

    goto/16 :goto_5

    :cond_13
    move/from16 v29, v10

    if-eqz v9, :cond_14

    .line 150
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object v9, v0

    goto :goto_b

    :cond_14
    move-object v9, v14

    .line 151
    :goto_b
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/lc;

    move-object v2, v0

    move-object/from16 v3, p1

    move-object v8, v12

    move/from16 v10, v29

    invoke-direct/range {v2 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/lc;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/vr/sdk/widgets/video/deps/l;Ljava/util/List;ZLjava/util/Map;)V

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x392db8c5 -> :sswitch_2
        -0x13dc6572 -> :sswitch_1
        0x3bba3b6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/lc;Lcom/google/vr/sdk/widgets/video/deps/lf$a;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/ld;
    .locals 61
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 165
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/lc;->p:Z

    .line 168
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 169
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 170
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 185
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-string v7, ""

    const/4 v13, 0x0

    const/4 v14, 0x1

    move/from16 v26, v1

    move-wide/from16 v16, v4

    move-wide/from16 v24, v16

    move-object/from16 v34, v7

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v47, 0x0

    const-wide/16 v48, -0x1

    const/16 v50, 0x0

    const-wide/16 v51, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    const/16 v55, 0x0

    :goto_0
    const-wide/16 v56, 0x0

    .line 188
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/lf$a;->a()Z

    move-result v35

    if-eqz v35, :cond_24

    .line 189
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/lf$a;->b()Ljava/lang/String;

    move-result-object v12

    const-string v8, "#EXT"

    .line 190
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 191
    invoke-interface {v6, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string v8, "#EXT-X-PLAYLIST-TYPE"

    .line 192
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 193
    sget-object v8, Lcom/google/vr/sdk/widgets/video/deps/lf;->i:Ljava/util/regex/Pattern;

    invoke-static {v12, v8, v2}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "VOD"

    .line 194
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const-string v9, "EVENT"

    .line 196
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v4, 0x2

    goto :goto_1

    :cond_3
    const-string v8, "#EXT-X-START"

    .line 198
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const-wide v35, 0x412e848000000000L    # 1000000.0

    if-eqz v8, :cond_4

    .line 199
    sget-object v8, Lcom/google/vr/sdk/widgets/video/deps/lf;->m:Ljava/util/regex/Pattern;

    invoke-static {v12, v8}, Lcom/google/vr/sdk/widgets/video/deps/lf;->c(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v8

    mul-double v8, v8, v35

    double-to-long v8, v8

    move-wide/from16 v16, v8

    goto :goto_1

    :cond_4
    const-string v8, "#EXT-X-MAP"

    .line 200
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "@"

    if-eqz v8, :cond_6

    .line 201
    sget-object v8, Lcom/google/vr/sdk/widgets/video/deps/lf;->s:Ljava/util/regex/Pattern;

    invoke-static {v12, v8, v2}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v36

    .line 202
    sget-object v8, Lcom/google/vr/sdk/widgets/video/deps/lf;->o:Ljava/util/regex/Pattern;

    invoke-static {v12, v8, v2}, Lcom/google/vr/sdk/widgets/video/deps/lf;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 204
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 205
    aget-object v9, v8, v13

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v48

    .line 206
    array-length v9, v8

    if-le v9, v14, :cond_5

    .line 207
    aget-object v8, v8, v14

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v29

    :cond_5
    move-wide/from16 v37, v29

    move-wide/from16 v39, v48

    .line 208
    new-instance v55, Lcom/google/vr/sdk/widgets/video/deps/ld$a;

    move-object/from16 v35, v55

    invoke-direct/range {v35 .. v40}, Lcom/google/vr/sdk/widgets/video/deps/ld$a;-><init>(Ljava/lang/String;JJ)V

    const-wide/16 v29, 0x0

    const-wide/16 v48, -0x1

    goto/16 :goto_1

    :cond_6
    const-string v8, "#EXT-X-TARGETDURATION"

    .line 211
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 212
    sget-object v8, Lcom/google/vr/sdk/widgets/video/deps/lf;->g:Ljava/util/regex/Pattern;

    invoke-static {v12, v8}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v8

    int-to-long v8, v8

    const-wide/32 v24, 0xf4240

    mul-long v24, v24, v8

    goto/16 :goto_1

    :cond_7
    const-string v8, "#EXT-X-MEDIA-SEQUENCE"

    .line 213
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 214
    sget-object v8, Lcom/google/vr/sdk/widgets/video/deps/lf;->j:Ljava/util/regex/Pattern;

    invoke-static {v12, v8}, Lcom/google/vr/sdk/widgets/video/deps/lf;->b(Ljava/lang/String;Ljava/util/regex/Pattern;)J

    move-result-wide v31

    move-wide/from16 v21, v31

    goto/16 :goto_1

    :cond_8
    const-string v8, "#EXT-X-VERSION"

    .line 216
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 217
    sget-object v8, Lcom/google/vr/sdk/widgets/video/deps/lf;->h:Ljava/util/regex/Pattern;

    invoke-static {v12, v8}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v23

    goto/16 :goto_1

    :cond_9
    const-string v8, "#EXT-X-DEFINE"

    .line 218
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 219
    sget-object v8, Lcom/google/vr/sdk/widgets/video/deps/lf;->D:Ljava/util/regex/Pattern;

    invoke-static {v12, v8, v2}, Lcom/google/vr/sdk/widgets/video/deps/lf;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 221
    iget-object v9, v0, Lcom/google/vr/sdk/widgets/video/deps/lc;->g:Ljava/util/Map;

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_b

    .line 223
    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 225
    :cond_a
    sget-object v8, Lcom/google/vr/sdk/widgets/video/deps/lf;->w:Ljava/util/regex/Pattern;

    .line 226
    invoke-static {v12, v8, v2}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/google/vr/sdk/widgets/video/deps/lf;->C:Ljava/util/regex/Pattern;

    .line 227
    invoke-static {v12, v9, v2}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    .line 228
    invoke-virtual {v2, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_2
    move-object/from16 v60, v3

    const/4 v3, 0x0

    goto/16 :goto_a

    :cond_c
    const-string v8, "#EXTINF"

    .line 229
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 230
    sget-object v8, Lcom/google/vr/sdk/widgets/video/deps/lf;->k:Ljava/util/regex/Pattern;

    .line 231
    invoke-static {v12, v8}, Lcom/google/vr/sdk/widgets/video/deps/lf;->c(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v8

    mul-double v8, v8, v35

    double-to-long v8, v8

    .line 232
    sget-object v10, Lcom/google/vr/sdk/widgets/video/deps/lf;->l:Ljava/util/regex/Pattern;

    invoke-static {v12, v10, v7, v2}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v34

    move-wide/from16 v56, v8

    goto/16 :goto_1

    :cond_d
    const-string v8, "#EXT-X-KEY"

    .line 233
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 234
    sget-object v8, Lcom/google/vr/sdk/widgets/video/deps/lf;->p:Ljava/util/regex/Pattern;

    invoke-static {v12, v8, v2}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 235
    sget-object v9, Lcom/google/vr/sdk/widgets/video/deps/lf;->q:Ljava/util/regex/Pattern;

    const-string v10, "identity"

    .line 236
    invoke-static {v12, v9, v10, v2}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "NONE"

    .line 239
    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 240
    invoke-virtual {v3}, Ljava/util/TreeMap;->clear()V

    const/16 v33, 0x0

    const/16 v53, 0x0

    const/16 v54, 0x0

    goto/16 :goto_1

    .line 242
    :cond_e
    sget-object v11, Lcom/google/vr/sdk/widgets/video/deps/lf;->t:Ljava/util/regex/Pattern;

    invoke-static {v12, v11, v2}, Lcom/google/vr/sdk/widgets/video/deps/lf;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    .line 243
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    const-string v9, "AES-128"

    .line 244
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 245
    sget-object v8, Lcom/google/vr/sdk/widgets/video/deps/lf;->s:Ljava/util/regex/Pattern;

    invoke-static {v12, v8, v2}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v53, v8

    move-object/from16 v54, v11

    goto/16 :goto_1

    :cond_f
    move-object/from16 v54, v11

    :goto_3
    const/16 v53, 0x0

    goto/16 :goto_1

    :cond_10
    if-nez v5, :cond_13

    const-string v5, "SAMPLE-AES-CENC"

    .line 247
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string v5, "SAMPLE-AES-CTR"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_4

    :cond_11
    const-string v5, "cbcs"

    goto :goto_5

    :cond_12
    :goto_4
    const-string v5, "cenc"

    :cond_13
    :goto_5
    const-string v8, "com.microsoft.playready"

    .line 250
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 251
    invoke-static {v12, v2}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    move-result-object v8

    goto :goto_6

    .line 252
    :cond_14
    invoke-static {v12, v9, v2}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    move-result-object v8

    :goto_6
    if-eqz v8, :cond_f

    .line 255
    invoke-virtual {v3, v9, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v54, v11

    const/16 v33, 0x0

    goto :goto_3

    :cond_15
    const-string v8, "#EXT-X-BYTERANGE"

    .line 256
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 257
    sget-object v8, Lcom/google/vr/sdk/widgets/video/deps/lf;->n:Ljava/util/regex/Pattern;

    invoke-static {v12, v8, v2}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 258
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 259
    aget-object v9, v8, v13

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v48

    .line 260
    array-length v9, v8

    if-le v9, v14, :cond_0

    .line 261
    aget-object v8, v8, v14

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v29

    goto/16 :goto_1

    :cond_16
    const-string v8, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 262
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const/16 v9, 0x3a

    if-eqz v8, :cond_17

    .line 264
    invoke-virtual {v12, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/2addr v1, v14

    invoke-virtual {v12, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const/4 v1, 0x1

    goto/16 :goto_1

    :cond_17
    const-string v8, "#EXT-X-DISCONTINUITY"

    .line 265
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    add-int/lit8 v50, v50, 0x1

    goto/16 :goto_1

    :cond_18
    const-string v8, "#EXT-X-PROGRAM-DATE-TIME"

    .line 267
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_19

    const-wide/16 v10, 0x0

    cmp-long v8, v18, v10

    if-nez v8, :cond_b

    .line 270
    invoke-virtual {v12, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/2addr v8, v14

    invoke-virtual {v12, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/vr/sdk/widgets/video/deps/ps;->g(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/vr/sdk/widgets/video/deps/b;->b(J)J

    move-result-wide v8

    sub-long v18, v8, v51

    goto/16 :goto_1

    :cond_19
    const-string v8, "#EXT-X-GAP"

    .line 273
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1a

    const/16 v47, 0x1

    goto/16 :goto_1

    :cond_1a
    const-string v8, "#EXT-X-INDEPENDENT-SEGMENTS"

    .line 275
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    const/16 v26, 0x1

    goto/16 :goto_1

    :cond_1b
    const-string v8, "#EXT-X-ENDLIST"

    .line 277
    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    const/16 v27, 0x1

    goto/16 :goto_1

    :cond_1c
    const-string v8, "#"

    .line 279
    invoke-virtual {v12, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    if-nez v53, :cond_1d

    const/16 v42, 0x0

    goto :goto_7

    :cond_1d
    if-eqz v54, :cond_1e

    move-object/from16 v42, v54

    goto :goto_7

    .line 284
    :cond_1e
    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v42, v8

    :goto_7
    const-wide/16 v8, 0x1

    add-long v8, v31, v8

    const-wide/16 v10, -0x1

    cmp-long v58, v48, v10

    if-nez v58, :cond_1f

    const-wide/16 v29, 0x0

    :cond_1f
    if-nez v33, :cond_22

    .line 288
    invoke-virtual {v3}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v31

    if-nez v31, :cond_22

    .line 289
    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v10

    new-array v11, v13, [Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    invoke-interface {v10, v11}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    .line 290
    new-instance v11, Lcom/google/vr/sdk/widgets/video/deps/cb;

    invoke-direct {v11, v5, v10}, Lcom/google/vr/sdk/widgets/video/deps/cb;-><init>(Ljava/lang/String;[Lcom/google/vr/sdk/widgets/video/deps/cb$a;)V

    if-nez v28, :cond_21

    .line 292
    array-length v13, v10

    new-array v13, v13, [Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    const/4 v14, 0x0

    .line 293
    :goto_8
    array-length v0, v10

    if-ge v14, v0, :cond_20

    .line 294
    aget-object v0, v10, v14

    move-object/from16 v60, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/cb$a;->a([B)Lcom/google/vr/sdk/widgets/video/deps/cb$a;

    move-result-object v0

    aput-object v0, v13, v14

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v60

    goto :goto_8

    :cond_20
    move-object/from16 v60, v3

    const/4 v3, 0x0

    .line 296
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/cb;

    invoke-direct {v0, v5, v13}, Lcom/google/vr/sdk/widgets/video/deps/cb;-><init>(Ljava/lang/String;[Lcom/google/vr/sdk/widgets/video/deps/cb$a;)V

    move-object/from16 v28, v0

    goto :goto_9

    :cond_21
    move-object/from16 v60, v3

    const/4 v3, 0x0

    goto :goto_9

    :cond_22
    move-object/from16 v60, v3

    const/4 v3, 0x0

    move-object/from16 v11, v33

    .line 297
    :goto_9
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ld$a;

    move-object/from16 v31, v0

    .line 298
    invoke-static {v12, v2}, Lcom/google/vr/sdk/widgets/video/deps/lf;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v33, v55

    move-wide/from16 v35, v56

    move/from16 v37, v50

    move-wide/from16 v38, v51

    move-object/from16 v40, v11

    move-object/from16 v41, v53

    move-wide/from16 v43, v29

    move-wide/from16 v45, v48

    invoke-direct/range {v31 .. v47}, Lcom/google/vr/sdk/widgets/video/deps/ld$a;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/ld$a;Ljava/lang/String;JIJLcom/google/vr/sdk/widgets/video/deps/cb;Ljava/lang/String;Ljava/lang/String;JJZ)V

    .line 299
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v51, v51, v56

    if-eqz v58, :cond_23

    add-long v29, v29, v48

    :cond_23
    move-object/from16 v0, p0

    move-object/from16 v34, v7

    move-wide/from16 v31, v8

    move-object/from16 v33, v11

    move-object/from16 v3, v60

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v47, 0x0

    const-wide/16 v48, -0x1

    goto/16 :goto_0

    :goto_a
    move-object/from16 v0, p0

    move-object/from16 v3, v60

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_1

    .line 308
    :cond_24
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ld;

    const-wide/16 v2, 0x0

    cmp-long v5, v18, v2

    if-eqz v5, :cond_25

    const/16 v59, 0x1

    goto :goto_b

    :cond_25
    const/16 v59, 0x0

    :goto_b
    move-object v3, v0

    move-object/from16 v5, p2

    move-wide/from16 v7, v16

    move-wide/from16 v9, v18

    move v11, v1

    move/from16 v12, v20

    move-wide/from16 v13, v21

    move-object v1, v15

    move/from16 v15, v23

    move-wide/from16 v16, v24

    move/from16 v18, v26

    move/from16 v19, v27

    move/from16 v20, v59

    move-object/from16 v21, v28

    move-object/from16 v22, v1

    invoke-direct/range {v3 .. v22}, Lcom/google/vr/sdk/widgets/video/deps/ld;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLcom/google/vr/sdk/widgets/video/deps/cb;Ljava/util/List;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 335
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 336
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    .line 337
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 339
    :cond_1
    invoke-static {p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/lf;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    :goto_0
    return-object p2
.end method

.method private static a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 330
    invoke-static {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/lf;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    .line 333
    :cond_0
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/s;

    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x13

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Couldn\'t match "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static a(Ljava/io/BufferedReader;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xef

    if-ne v0, v2, :cond_2

    .line 39
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/16 v2, 0xbb

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    const/16 v2, 0xbf

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    return v1

    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 42
    invoke-static {p0, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/io/BufferedReader;ZI)I

    move-result v0

    const/4 v2, 0x7

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_4

    const-string v4, "#EXTM3U"

    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v0, v4, :cond_3

    return v1

    .line 47
    :cond_3
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 49
    :cond_4
    invoke-static {p0, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/io/BufferedReader;ZI)I

    move-result p0

    .line 50
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(I)Z

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/regex/Pattern;Z)Z
    .locals 0

    .line 352
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 353
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 354
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "YES"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private static b(Ljava/lang/String;Ljava/util/regex/Pattern;)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 328
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method private static b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 341
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/lf;->E:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 342
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 343
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 344
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-virtual {p0, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 351
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 334
    invoke-static {p0, p1, v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2

    .line 356
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "=("

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "NO"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "|"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "YES"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;Ljava/util/regex/Pattern;)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 329
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/vr/sdk/widgets/video/deps/le;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 7
    new-instance p2, Ljava/util/ArrayDeque;

    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    .line 8
    :try_start_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Ljava/io/BufferedReader;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 10
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "#EXT-X-STREAM-INF"

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/lf$a;

    invoke-direct {v1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/lf$a;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Lcom/google/vr/sdk/widgets/video/deps/lf$a;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/lc;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/io/Closeable;)V

    return-object p1

    :cond_1
    :try_start_1
    const-string v2, "#EXT-X-TARGETDURATION"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXT-X-MEDIA-SEQUENCE"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXTINF"

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXT-X-KEY"

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXT-X-BYTERANGE"

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXT-X-DISCONTINUITY"

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXT-X-DISCONTINUITY-SEQUENCE"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "#EXT-X-ENDLIST"

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 32
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 26
    :cond_3
    :goto_1
    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 27
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/lf;->F:Lcom/google/vr/sdk/widgets/video/deps/lc;

    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/lf$a;

    invoke-direct {v2, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/lf$a;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    .line 28
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {v1, v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Lcom/google/vr/sdk/widgets/video/deps/lc;Lcom/google/vr/sdk/widgets/video/deps/lf$a;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/ld;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/io/Closeable;)V

    return-object p1

    .line 33
    :cond_4
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/io/Closeable;)V

    .line 36
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string p2, "Failed to parse the playlist, could not identify any tags."

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_5
    :try_start_2
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/ix;

    const-string v1, "Input does not start with the #EXTM3U header."

    invoke-direct {p2, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/ix;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    .line 35
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method public synthetic b(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/lf;->a(Landroid/net/Uri;Ljava/io/InputStream;)Lcom/google/vr/sdk/widgets/video/deps/le;

    move-result-object p1

    return-object p1
.end method
