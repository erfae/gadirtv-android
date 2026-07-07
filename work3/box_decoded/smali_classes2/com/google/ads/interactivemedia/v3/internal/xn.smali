.class public final Lcom/google/ads/interactivemedia/v3/internal/xn;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/aat;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/interactivemedia/v3/internal/aat<",
        "Lcom/google/ads/interactivemedia/v3/internal/xl;",
        ">;"
    }
.end annotation


# static fields
.field private static final A:Ljava/util/regex/Pattern;

.field private static final B:Ljava/util/regex/Pattern;

.field private static final C:Ljava/util/regex/Pattern;

.field private static final D:Ljava/util/regex/Pattern;

.field private static final E:Ljava/util/regex/Pattern;

.field private static final F:Ljava/util/regex/Pattern;

.field private static final G:Ljava/util/regex/Pattern;

.field private static final H:Ljava/util/regex/Pattern;

.field private static final I:Ljava/util/regex/Pattern;

.field private static final J:Ljava/util/regex/Pattern;

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
.field private final K:Lcom/google/ads/interactivemedia/v3/internal/xi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AVERAGE-BANDWIDTH=(\\d+)\\b"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->a:Ljava/util/regex/Pattern;

    const-string v0, "VIDEO=\"(.+?)\""

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->b:Ljava/util/regex/Pattern;

    const-string v0, "AUDIO=\"(.+?)\""

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->c:Ljava/util/regex/Pattern;

    const-string v0, "SUBTITLES=\"(.+?)\""

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->d:Ljava/util/regex/Pattern;

    const-string v0, "CLOSED-CAPTIONS=\"(.+?)\""

    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->e:Ljava/util/regex/Pattern;

    const-string v0, "[^-]BANDWIDTH=(\\d+)\\b"

    .line 6
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->f:Ljava/util/regex/Pattern;

    const-string v0, "CHANNELS=\"(.+?)\""

    .line 7
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->g:Ljava/util/regex/Pattern;

    const-string v0, "CODECS=\"(.+?)\""

    .line 8
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->h:Ljava/util/regex/Pattern;

    const-string v0, "RESOLUTION=(\\d+x\\d+)"

    .line 9
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->i:Ljava/util/regex/Pattern;

    const-string v0, "FRAME-RATE=([\\d\\.]+)\\b"

    .line 10
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->j:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-TARGETDURATION:(\\d+)\\b"

    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->k:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-VERSION:(\\d+)\\b"

    .line 12
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->l:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-PLAYLIST-TYPE:(.+)\\b"

    .line 13
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->m:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-MEDIA-SEQUENCE:(\\d+)\\b"

    .line 14
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->n:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:([\\d\\.]+)\\b"

    .line 15
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->o:Ljava/util/regex/Pattern;

    const-string v0, "#EXTINF:[\\d\\.]+\\b,(.+)"

    .line 16
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->p:Ljava/util/regex/Pattern;

    const-string v0, "TIME-OFFSET=(-?[\\d\\.]+)\\b"

    .line 17
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->q:Ljava/util/regex/Pattern;

    const-string v0, "#EXT-X-BYTERANGE:(\\d+(?:@\\d+)?)\\b"

    .line 18
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->r:Ljava/util/regex/Pattern;

    const-string v0, "BYTERANGE=\"(\\d+(?:@\\d+)?)\\b\""

    .line 19
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->s:Ljava/util/regex/Pattern;

    const-string v0, "METHOD=(NONE|AES-128|SAMPLE-AES|SAMPLE-AES-CENC|SAMPLE-AES-CTR)\\s*(?:,|$)"

    .line 20
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->t:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMAT=\"(.+?)\""

    .line 21
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->u:Ljava/util/regex/Pattern;

    const-string v0, "KEYFORMATVERSIONS=\"(.+?)\""

    .line 22
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->v:Ljava/util/regex/Pattern;

    const-string v0, "URI=\"(.+?)\""

    .line 23
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->w:Ljava/util/regex/Pattern;

    const-string v0, "IV=([^,.*]+)"

    .line 24
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->x:Ljava/util/regex/Pattern;

    const-string v0, "TYPE=(AUDIO|VIDEO|SUBTITLES|CLOSED-CAPTIONS)"

    .line 25
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->y:Ljava/util/regex/Pattern;

    const-string v0, "LANGUAGE=\"(.+?)\""

    .line 26
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->z:Ljava/util/regex/Pattern;

    const-string v0, "NAME=\"(.+?)\""

    .line 27
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->A:Ljava/util/regex/Pattern;

    const-string v0, "GROUP-ID=\"(.+?)\""

    .line 28
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->B:Ljava/util/regex/Pattern;

    const-string v0, "CHARACTERISTICS=\"(.+?)\""

    .line 29
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->C:Ljava/util/regex/Pattern;

    const-string v0, "INSTREAM-ID=\"((?:CC|SERVICE)\\d+)\""

    .line 30
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->D:Ljava/util/regex/Pattern;

    const-string v0, "AUTOSELECT"

    .line 31
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/xn;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->E:Ljava/util/regex/Pattern;

    const-string v0, "DEFAULT"

    .line 32
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/xn;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->F:Ljava/util/regex/Pattern;

    const-string v0, "FORCED"

    .line 33
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/xn;->b(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->G:Ljava/util/regex/Pattern;

    const-string v0, "VALUE=\"(.+?)\""

    .line 34
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->H:Ljava/util/regex/Pattern;

    const-string v0, "IMPORT=\"(.+?)\""

    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->I:Ljava/util/regex/Pattern;

    const-string v0, "\\{\\$([a-zA-Z0-9\\-_]+)\\}"

    .line 36
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->J:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 37
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/xi;->a:Lcom/google/ads/interactivemedia/v3/internal/xi;

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/xi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xn;->K:Lcom/google/ads/interactivemedia/v3/internal/xi;

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

    .line 73
    invoke-static {p2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->read()I

    move-result p2

    goto :goto_0

    :cond_1
    return p2
.end method

.method private static a(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation

    .line 53
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/internal/hj;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/ads/interactivemedia/v3/internal/hj;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->v:Ljava/util/regex/Pattern;

    const-string v1, "1"

    .line 40
    invoke-static {p0, v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed"

    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x2c

    const-string v5, "video/mp4"

    if-eqz v2, :cond_0

    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/xn;->w:Ljava/util/regex/Pattern;

    .line 42
    invoke-static {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/hj;

    .line 43
    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/bk;->c:Ljava/util/UUID;

    .line 44
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    invoke-direct {p1, p2, v5, p0}, Lcom/google/ads/interactivemedia/v3/internal/hj;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    :cond_0
    const-string v2, "com.widevine"

    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/hj;

    .line 46
    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/bk;->c:Ljava/util/UUID;

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->c(Ljava/lang/String;)[B

    move-result-object p0

    const-string v0, "hls"

    invoke-direct {p1, p2, v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/hj;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    :cond_1
    const-string v2, "com.microsoft.playready"

    .line 47
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/xn;->w:Ljava/util/regex/Pattern;

    .line 48
    invoke-static {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    .line 49
    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 50
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/bk;->d:Ljava/util/UUID;

    invoke-static {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/la;->a(Ljava/util/UUID;[B)[B

    move-result-object p0

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/hj;

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/bk;->d:Ljava/util/UUID;

    .line 51
    invoke-direct {p1, p2, v5, p0}, Lcom/google/ads/interactivemedia/v3/internal/hj;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    return-object p1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "SAMPLE-AES-CENC"

    .line 52
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SAMPLE-AES-CTR"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "cbcs"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p0, "cenc"

    :goto_1
    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
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

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->J:Ljava/util/regex/Pattern;

    .line 64
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuffer;

    .line 65
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 66
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 67
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {p0, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
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

    .line 57
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_0
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    invoke-static {p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object p2
.end method

.method private static a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
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
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/xn;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    return-object p2

    :cond_0
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/dt;

    .line 63
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x13

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Couldn\'t match "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static b(Ljava/lang/String;Ljava/util/regex/Pattern;)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation

    .line 39
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    return-wide p0
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

    .line 61
    invoke-static {p0, p1, v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 2

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x9

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "=(NO|YES)"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;Ljava/util/regex/Pattern;)Z
    .locals 0

    .line 54
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 56
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "YES"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final bridge synthetic a(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 82
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "#EXT-X-TARGETDURATION"

    const-string v1, "#EXT-X-STREAM-INF"

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    move-object/from16 v4, p2

    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v4

    const/16 v5, 0xef

    if-ne v4, v5, :cond_1

    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v4

    const/16 v5, 0xbb

    if-ne v4, v5, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v4

    const/16 v5, 0xbf

    if-ne v4, v5, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v4

    goto :goto_0

    :cond_0
    move-object/from16 v23, v2

    goto/16 :goto_3e

    :cond_1
    :goto_0
    const/4 v5, 0x1

    invoke-static {v2, v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/io/BufferedReader;ZI)I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    const/4 v8, 0x7

    if-ge v7, v8, :cond_2

    const-string v8, "#EXTM3U"

    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v4, v8, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->read()I

    move-result v4

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v2, v6, v4}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/io/BufferedReader;ZI)I

    move-result v4

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_66

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v9, "#EXT-X-DEFINE"

    const-string v10, "#EXT"

    const-string v11, "identity"

    if-eqz v7, :cond_38

    :try_start_1
    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/xm;

    invoke-direct {v0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/xm;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v20, 0x0

    const/16 v24, 0x0

    :goto_3
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/xm;->a()Z

    move-result v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/16 v23, -0x1

    move-object/from16 v27, v2

    if-eqz v22, :cond_15

    :try_start_2
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/xm;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object/from16 v22, v10

    const-string v10, "#EXT-X-I-FRAME-STREAM-INF"

    invoke-virtual {v2, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_6

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/xn;->A:Ljava/util/regex/Pattern;

    invoke-static {v2, v10, v4}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v25, v9

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/xn;->H:Ljava/util/regex/Pattern;

    invoke-static {v2, v9, v4}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_4
    move-object/from16 p1, v5

    move-object/from16 v26, v11

    goto/16 :goto_5

    :cond_6
    move-object/from16 v25, v9

    const-string v9, "#EXT-X-INDEPENDENT-SEGMENTS"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    move-object/from16 v42, v0

    move-object/from16 v35, v1

    move-object v0, v3

    move-object/from16 p1, v5

    move-object/from16 v36, v6

    move-object/from16 v38, v8

    move-object/from16 v26, v11

    move-object/from16 v39, v12

    move-object/from16 v40, v13

    move-object/from16 v37, v14

    const/16 v24, 0x1

    goto/16 :goto_f

    :cond_7
    const-string v9, "#EXT-X-MEDIA"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    const-string v9, "#EXT-X-SESSION-KEY"

    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    sget-object v9, Lcom/google/ads/interactivemedia/v3/internal/xn;->u:Ljava/util/regex/Pattern;

    invoke-static {v2, v9, v11, v4}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9, v4}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/internal/hj;

    move-result-object v9

    if-eqz v9, :cond_5

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/xn;->t:Ljava/util/regex/Pattern;

    invoke-static {v2, v10, v4}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/hk;

    move-object/from16 p1, v5

    move-object/from16 v26, v11

    const/4 v11, 0x1

    new-array v5, v11, [Lcom/google/ads/interactivemedia/v3/internal/hj;

    const/4 v11, 0x0

    aput-object v9, v5, v11

    invoke-direct {v10, v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/hk;-><init>(Ljava/lang/String;[Lcom/google/ads/interactivemedia/v3/internal/hj;)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    move-object/from16 p1, v5

    move-object/from16 v26, v11

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    if-eqz v10, :cond_a

    const/4 v10, 0x1

    goto :goto_6

    :cond_a
    :goto_5
    move-object/from16 v42, v0

    move-object/from16 v35, v1

    move-object v0, v3

    move-object/from16 v36, v6

    move-object/from16 v38, v8

    move-object/from16 v39, v12

    move-object/from16 v40, v13

    move-object/from16 v37, v14

    goto/16 :goto_f

    :cond_b
    :goto_6
    const-string v5, "CLOSED-CAPTIONS=NONE"

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    or-int v5, v20, v5

    const/4 v9, 0x1

    if-eq v9, v10, :cond_c

    const/4 v9, 0x0

    goto :goto_7

    :cond_c
    const/16 v9, 0x4000

    :goto_7
    sget-object v11, Lcom/google/ads/interactivemedia/v3/internal/xn;->f:Ljava/util/regex/Pattern;

    invoke-static {v2, v11}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v11

    move-object/from16 v35, v1

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/xn;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v20

    if-eqz v20, :cond_d

    move/from16 v20, v5

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_8

    :cond_d
    move/from16 v20, v5

    const/4 v1, -0x1

    :goto_8
    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/xn;->h:Ljava/util/regex/Pattern;

    invoke-static {v2, v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/xn;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v36, v6

    sget-object v6, Lcom/google/ads/interactivemedia/v3/internal/xn;->i:Ljava/util/regex/Pattern;

    invoke-static {v2, v6, v4}, Lcom/google/ads/interactivemedia/v3/internal/xn;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_10

    move-object/from16 v37, v14

    const-string v14, "x"

    invoke-virtual {v6, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x0

    aget-object v28, v6, v14

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/16 v19, 0x1

    aget-object v6, v6, v19

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v14, :cond_f

    if-gtz v6, :cond_e

    goto :goto_9

    :cond_e
    move/from16 v23, v6

    goto :goto_a

    :cond_f
    :goto_9
    const/4 v14, -0x1

    :goto_a
    move-object/from16 v38, v8

    move/from16 v6, v23

    goto :goto_b

    :cond_10
    move-object/from16 v37, v14

    move-object/from16 v38, v8

    const/4 v6, -0x1

    const/4 v14, -0x1

    :goto_b
    sget-object v8, Lcom/google/ads/interactivemedia/v3/internal/xn;->j:Ljava/util/regex/Pattern;

    invoke-static {v2, v8, v4}, Lcom/google/ads/interactivemedia/v3/internal/xn;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_11

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    goto :goto_c

    :cond_11
    const/high16 v8, -0x40800000    # -1.0f

    :goto_c
    move-object/from16 v39, v12

    sget-object v12, Lcom/google/ads/interactivemedia/v3/internal/xn;->b:Ljava/util/regex/Pattern;

    invoke-static {v2, v12, v4}, Lcom/google/ads/interactivemedia/v3/internal/xn;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v40, v13

    sget-object v13, Lcom/google/ads/interactivemedia/v3/internal/xn;->c:Ljava/util/regex/Pattern;

    invoke-static {v2, v13, v4}, Lcom/google/ads/interactivemedia/v3/internal/xn;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v41, v3

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/xn;->d:Ljava/util/regex/Pattern;

    invoke-static {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/xn;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v23, v3

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/xn;->e:Ljava/util/regex/Pattern;

    invoke-static {v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/xn;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    if-eqz v10, :cond_12

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/xn;->w:Ljava/util/regex/Pattern;

    invoke-static {v2, v10, v4}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    :goto_d
    invoke-static {v15, v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_e

    :cond_12
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/xm;->a()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/xm;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :goto_e
    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/cy;

    invoke-direct {v10}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    move-object/from16 v42, v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v10, v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->g(I)V

    const-string v0, "application/x-mpegURL"

    invoke-virtual {v10, v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->b(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Ljava/lang/String;)V

    invoke-virtual {v10, v1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->b(I)V

    invoke-virtual {v10, v11}, Lcom/google/ads/interactivemedia/v3/internal/cy;->j(I)V

    invoke-virtual {v10, v14}, Lcom/google/ads/interactivemedia/v3/internal/cy;->p(I)V

    invoke-virtual {v10, v6}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(I)V

    invoke-virtual {v10, v8}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(F)V

    invoke-virtual {v10, v9}, Lcom/google/ads/interactivemedia/v3/internal/cy;->k(I)V

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v30

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/xh;

    move-object/from16 v28, v0

    move-object/from16 v29, v2

    move-object/from16 v31, v12

    move-object/from16 v32, v13

    move-object/from16 v33, v23

    move-object/from16 v34, v3

    invoke-direct/range {v28 .. v34}, Lcom/google/ads/interactivemedia/v3/internal/xh;-><init>(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-nez v5, :cond_13

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/ww;

    move-object/from16 v28, v2

    move/from16 v29, v1

    move/from16 v30, v11

    move-object/from16 v31, v12

    move-object/from16 v32, v13

    move-object/from16 v33, v23

    move-object/from16 v34, v3

    invoke-direct/range {v28 .. v34}, Lcom/google/ads/interactivemedia/v3/internal/ww;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_f
    move-object/from16 v5, p1

    move-object v3, v0

    move-object/from16 v10, v22

    move-object/from16 v9, v25

    move-object/from16 v11, v26

    move-object/from16 v2, v27

    move-object/from16 v1, v35

    move-object/from16 v6, v36

    move-object/from16 v14, v37

    move-object/from16 v8, v38

    move-object/from16 v12, v39

    move-object/from16 v13, v40

    move-object/from16 v0, v42

    goto/16 :goto_3

    :cond_14
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v1, "#EXT-X-STREAM-INF must be followed by another line"

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move-object v0, v3

    move-object/from16 p1, v5

    move-object/from16 v36, v6

    move-object/from16 v38, v8

    move-object/from16 v39, v12

    move-object/from16 v40, v13

    move-object/from16 v37, v14

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    :goto_10
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_18

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/xh;

    iget-object v6, v5, Lcom/google/ads/interactivemedia/v3/internal/xh;->a:Landroid/net/Uri;

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    iget-object v6, v5, Lcom/google/ads/interactivemedia/v3/internal/xh;->b:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-object v6, v6, Lcom/google/ads/interactivemedia/v3/internal/cz;->j:Lcom/google/ads/interactivemedia/v3/internal/ot;

    if-nez v6, :cond_16

    const/4 v6, 0x1

    goto :goto_11

    :cond_16
    const/4 v6, 0x0

    :goto_11
    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/wx;

    iget-object v8, v5, Lcom/google/ads/interactivemedia/v3/internal/xh;->a:Landroid/net/Uri;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    invoke-static {v8}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-direct {v6, v9, v9, v8}, Lcom/google/ads/interactivemedia/v3/internal/wx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/ot;

    const/4 v9, 0x1

    new-array v10, v9, [Lcom/google/ads/interactivemedia/v3/internal/os;

    const/4 v9, 0x0

    aput-object v6, v10, v9

    invoke-direct {v8, v10}, Lcom/google/ads/interactivemedia/v3/internal/ot;-><init>([Lcom/google/ads/interactivemedia/v3/internal/os;)V

    iget-object v6, v5, Lcom/google/ads/interactivemedia/v3/internal/xh;->b:Lcom/google/ads/interactivemedia/v3/internal/cz;

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a()Lcom/google/ads/interactivemedia/v3/internal/cy;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Lcom/google/ads/interactivemedia/v3/internal/ot;)V

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v30

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/xh;

    iget-object v8, v5, Lcom/google/ads/interactivemedia/v3/internal/xh;->a:Landroid/net/Uri;

    iget-object v9, v5, Lcom/google/ads/interactivemedia/v3/internal/xh;->c:Ljava/lang/String;

    iget-object v10, v5, Lcom/google/ads/interactivemedia/v3/internal/xh;->d:Ljava/lang/String;

    iget-object v11, v5, Lcom/google/ads/interactivemedia/v3/internal/xh;->e:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/internal/xh;->f:Ljava/lang/String;

    move-object/from16 v28, v6

    move-object/from16 v29, v8

    move-object/from16 v31, v9

    move-object/from16 v32, v10

    move-object/from16 v33, v11

    move-object/from16 v34, v5

    invoke-direct/range {v28 .. v34}, Lcom/google/ads/interactivemedia/v3/internal/xh;-><init>(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    :cond_18
    const/4 v0, 0x0

    const/4 v9, 0x0

    const/16 v22, 0x0

    :goto_12
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_36

    move-object/from16 v2, v40

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/xn;->B:Ljava/util/regex/Pattern;

    invoke-static {v3, v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/google/ads/interactivemedia/v3/internal/xn;->A:Ljava/util/regex/Pattern;

    invoke-static {v3, v6, v4}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Lcom/google/ads/interactivemedia/v3/internal/cy;

    invoke-direct {v8}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    add-int/2addr v10, v11

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Lcom/google/ads/interactivemedia/v3/internal/cy;->d(Ljava/lang/String;)V

    const-string v10, "application/x-mpegURL"

    invoke-virtual {v8, v10}, Lcom/google/ads/interactivemedia/v3/internal/cy;->b(Ljava/lang/String;)V

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/xn;->F:Ljava/util/regex/Pattern;

    invoke-static {v3, v10}, Lcom/google/ads/interactivemedia/v3/internal/xn;->c(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v10

    sget-object v11, Lcom/google/ads/interactivemedia/v3/internal/xn;->G:Ljava/util/regex/Pattern;

    invoke-static {v3, v11}, Lcom/google/ads/interactivemedia/v3/internal/xn;->c(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v11

    if-eqz v11, :cond_19

    or-int/lit8 v10, v10, 0x2

    :cond_19
    sget-object v11, Lcom/google/ads/interactivemedia/v3/internal/xn;->E:Ljava/util/regex/Pattern;

    invoke-static {v3, v11}, Lcom/google/ads/interactivemedia/v3/internal/xn;->c(Ljava/lang/String;Ljava/util/regex/Pattern;)Z

    move-result v11

    if-eqz v11, :cond_1a

    or-int/lit8 v10, v10, 0x4

    :cond_1a
    invoke-virtual {v8, v10}, Lcom/google/ads/interactivemedia/v3/internal/cy;->n(I)V

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/xn;->C:Ljava/util/regex/Pattern;

    invoke-static {v3, v10, v4}, Lcom/google/ads/interactivemedia/v3/internal/xn;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1b

    const/4 v10, 0x0

    goto :goto_14

    :cond_1b
    const-string v11, ","

    invoke-static {v10, v11}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const-string v11, "public.accessibility.describes-video"

    invoke-static {v10, v11}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    const/4 v12, 0x1

    if-eq v12, v11, :cond_1c

    const/4 v11, 0x0

    goto :goto_13

    :cond_1c
    const/16 v11, 0x200

    :goto_13
    const-string v12, "public.accessibility.transcribes-spoken-dialog"

    invoke-static {v10, v12}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1d

    or-int/lit16 v11, v11, 0x1000

    :cond_1d
    const-string v12, "public.accessibility.describes-music-and-sound"

    invoke-static {v10, v12}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1e

    or-int/lit16 v11, v11, 0x400

    :cond_1e
    const-string v12, "public.easy-to-read"

    invoke-static {v10, v12}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1f

    or-int/lit16 v10, v11, 0x2000

    goto :goto_14

    :cond_1f
    move v10, v11

    :goto_14
    invoke-virtual {v8, v10}, Lcom/google/ads/interactivemedia/v3/internal/cy;->k(I)V

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/xn;->z:Ljava/util/regex/Pattern;

    invoke-static {v3, v10, v4}, Lcom/google/ads/interactivemedia/v3/internal/xn;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/google/ads/interactivemedia/v3/internal/cy;->e(Ljava/lang/String;)V

    sget-object v10, Lcom/google/ads/interactivemedia/v3/internal/xn;->w:Ljava/util/regex/Pattern;

    invoke-static {v3, v10, v4}, Lcom/google/ads/interactivemedia/v3/internal/xn;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_20

    const/4 v10, 0x0

    goto :goto_15

    :cond_20
    invoke-static {v15, v10}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    :goto_15
    new-instance v11, Lcom/google/ads/interactivemedia/v3/internal/ot;

    const/4 v12, 0x1

    new-array v13, v12, [Lcom/google/ads/interactivemedia/v3/internal/os;

    new-instance v12, Lcom/google/ads/interactivemedia/v3/internal/wx;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v14

    invoke-direct {v12, v5, v6, v14}, Lcom/google/ads/interactivemedia/v3/internal/wx;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    const/4 v14, 0x0

    aput-object v12, v13, v14

    invoke-direct {v11, v13}, Lcom/google/ads/interactivemedia/v3/internal/ot;-><init>([Lcom/google/ads/interactivemedia/v3/internal/os;)V

    sget-object v12, Lcom/google/ads/interactivemedia/v3/internal/xn;->y:Ljava/util/regex/Pattern;

    invoke-static {v3, v12, v4}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v14, 0x3

    sparse-switch v13, :sswitch_data_0

    goto :goto_16

    :sswitch_0
    const-string v13, "VIDEO"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    const/4 v12, 0x0

    goto :goto_17

    :sswitch_1
    const-string v13, "AUDIO"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    const/4 v12, 0x1

    goto :goto_17

    :sswitch_2
    const-string v13, "CLOSED-CAPTIONS"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    const/4 v12, 0x3

    goto :goto_17

    :sswitch_3
    const-string v13, "SUBTITLES"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    const/4 v12, 0x2

    goto :goto_17

    :cond_21
    :goto_16
    const/4 v12, -0x1

    :goto_17
    if-eqz v12, :cond_31

    const/4 v13, 0x1

    if-eq v12, v13, :cond_2a

    const/4 v13, 0x2

    if-eq v12, v13, :cond_25

    if-eq v12, v14, :cond_22

    goto :goto_19

    :cond_22
    :try_start_3
    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/xn;->D:Ljava/util/regex/Pattern;

    invoke-static {v3, v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "CC"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    const-string v5, "application/cea-608"

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v12, 0x7

    goto :goto_18

    :cond_23
    const-string v5, "application/cea-708"

    const/4 v12, 0x7

    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    :goto_18
    if-nez v9, :cond_24

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_24
    invoke-virtual {v8, v5}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(I)V

    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_19
    move-object/from16 v40, v2

    move-object/from16 v5, v37

    move-object/from16 v3, v38

    move-object/from16 v12, v39

    goto/16 :goto_21

    :cond_25
    const/4 v12, 0x7

    const/4 v3, 0x0

    :goto_1a
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v3, v13, :cond_27

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/ads/interactivemedia/v3/internal/xh;

    iget-object v12, v13, Lcom/google/ads/interactivemedia/v3/internal/xh;->e:Ljava/lang/String;

    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_26

    goto :goto_1b

    :cond_26
    add-int/lit8 v3, v3, 0x1

    const/4 v12, 0x7

    goto :goto_1a

    :cond_27
    const/4 v13, 0x0

    :goto_1b
    if-eqz v13, :cond_28

    iget-object v3, v13, Lcom/google/ads/interactivemedia/v3/internal/xh;->b:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/cz;->i:Ljava/lang/String;

    invoke-static {v3, v14}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/abm;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1c

    :cond_28
    const/4 v3, 0x0

    :goto_1c
    const-string v5, "text/vtt"

    if-nez v3, :cond_29

    move-object v3, v5

    :cond_29
    invoke-virtual {v8, v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    invoke-virtual {v8, v11}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Lcom/google/ads/interactivemedia/v3/internal/ot;)V

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/xg;

    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v5

    invoke-direct {v3, v10, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/xg;-><init>(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/lang/String;)V

    move-object/from16 v12, v39

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v40, v2

    move-object/from16 v5, v37

    move-object/from16 v3, v38

    goto/16 :goto_21

    :cond_2a
    move-object/from16 v12, v39

    const/4 v13, 0x0

    :goto_1d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_2c

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/ads/interactivemedia/v3/internal/xh;

    move-object/from16 v40, v2

    iget-object v2, v14, Lcom/google/ads/interactivemedia/v3/internal/xh;->d:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    goto :goto_1e

    :cond_2b
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v40

    goto :goto_1d

    :cond_2c
    move-object/from16 v40, v2

    const/4 v14, 0x0

    :goto_1e
    if-eqz v14, :cond_2d

    iget-object v2, v14, Lcom/google/ads/interactivemedia/v3/internal/xh;->b:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->i:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/abm;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1f

    :cond_2d
    const/4 v2, 0x0

    :goto_1f
    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/xn;->g:Ljava/util/regex/Pattern;

    invoke-static {v3, v5, v4}, Lcom/google/ads/interactivemedia/v3/internal/xn;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2e

    const-string v5, "/"

    invoke-static {v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v13, 0x0

    aget-object v5, v5, v13

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v8, v5}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(I)V

    const-string v5, "audio/eac3"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    const-string v5, "/JOC"

    invoke-virtual {v3, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const-string v2, "audio/eac3-joc"

    :cond_2e
    invoke-virtual {v8, v2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    if-eqz v10, :cond_2f

    invoke-virtual {v8, v11}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Lcom/google/ads/interactivemedia/v3/internal/ot;)V

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/xg;

    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v3

    invoke-direct {v2, v10, v3, v6}, Lcom/google/ads/interactivemedia/v3/internal/xg;-><init>(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/lang/String;)V

    move-object/from16 v3, v38

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_2f
    move-object/from16 v3, v38

    if-eqz v14, :cond_30

    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v22

    :cond_30
    :goto_20
    move-object/from16 v5, v37

    :goto_21
    const/4 v13, 0x2

    goto :goto_25

    :cond_31
    move-object/from16 v40, v2

    move-object/from16 v3, v38

    move-object/from16 v12, v39

    const/4 v2, 0x0

    :goto_22
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_33

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/ads/interactivemedia/v3/internal/xh;

    iget-object v14, v13, Lcom/google/ads/interactivemedia/v3/internal/xh;->c:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_32

    goto :goto_23

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_33
    const/4 v13, 0x0

    :goto_23
    if-eqz v13, :cond_34

    iget-object v2, v13, Lcom/google/ads/interactivemedia/v3/internal/xh;->b:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-object v5, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->i:Ljava/lang/String;

    const/4 v13, 0x2

    invoke-static {v5, v13}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/abm;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    iget v5, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->q:I

    invoke-virtual {v8, v5}, Lcom/google/ads/interactivemedia/v3/internal/cy;->p(I)V

    iget v5, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:I

    invoke-virtual {v8, v5}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(I)V

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->s:F

    invoke-virtual {v8, v2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(F)V

    goto :goto_24

    :cond_34
    const/4 v13, 0x2

    :goto_24
    if-nez v10, :cond_35

    move-object/from16 v5, v37

    goto :goto_25

    :cond_35
    invoke-virtual {v8, v11}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Lcom/google/ads/interactivemedia/v3/internal/ot;)V

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/xg;

    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v5

    invoke-direct {v2, v10, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/xg;-><init>(Landroid/net/Uri;Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/lang/String;)V

    move-object/from16 v5, v37

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_25
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v38, v3

    move-object/from16 v37, v5

    move-object/from16 v39, v12

    goto/16 :goto_12

    :cond_36
    move-object/from16 v5, v37

    move-object/from16 v3, v38

    move-object/from16 v12, v39

    if-eqz v20, :cond_37

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    move-object/from16 v23, v0

    goto :goto_26

    :cond_37
    move-object/from16 v23, v9

    :goto_26
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/xi;

    move-object v2, v5

    move-object v14, v0

    move-object/from16 v16, p1

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object/from16 v20, v12

    move-object/from16 v25, v4

    move-object/from16 v26, v36

    invoke-direct/range {v14 .. v26}, Lcom/google/ads/interactivemedia/v3/internal/xi;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/google/ads/interactivemedia/v3/internal/cz;Ljava/util/List;ZLjava/util/Map;Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static/range {v27 .. v27}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/io/Closeable;)V

    goto/16 :goto_3d

    :cond_38
    move-object/from16 v35, v1

    move-object/from16 v27, v2

    move-object/from16 v25, v9

    move-object/from16 v22, v10

    move-object/from16 v26, v11

    const/4 v13, 0x2

    :try_start_4
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v2, "#EXT-X-ENDLIST"

    const-string v5, "#EXT-X-DISCONTINUITY-SEQUENCE"

    const-string v6, "#EXT-X-DISCONTINUITY"

    const-string v7, "#EXT-X-BYTERANGE"

    const-string v8, "#EXT-X-KEY"

    const-string v9, "#EXTINF"

    const-string v10, "#EXT-X-MEDIA-SEQUENCE"

    if-nez v1, :cond_3a

    :try_start_5
    invoke-virtual {v4, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {v4, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    goto :goto_27

    :cond_39
    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v27

    move-object/from16 v1, v35

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x7

    goto/16 :goto_2

    :cond_3a
    :goto_27
    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p0

    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/xn;->K:Lcom/google/ads/interactivemedia/v3/internal/xi;

    new-instance v11, Lcom/google/ads/interactivemedia/v3/internal/xm;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object/from16 v12, v27

    :try_start_6
    invoke-direct {v11, v3, v12}, Lcom/google/ads/interactivemedia/v3/internal/xm;-><init>(Ljava/util/Queue;Ljava/io/BufferedReader;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v29

    iget-boolean v3, v4, Lcom/google/ads/interactivemedia/v3/internal/xi;->p:Z

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move/from16 v20, v3

    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-wide v23, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v27, -0x1

    const-wide/16 v30, 0x0

    move/from16 v63, v20

    move-wide/from16 v52, v23

    move-wide/from16 v61, v52

    move-wide/from16 v65, v27

    move-wide/from16 v40, v30

    move-wide/from16 v42, v40

    move-wide/from16 v54, v42

    move-wide/from16 v58, v54

    move-wide/from16 v67, v58

    move-wide/from16 v69, v67

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v24, 0x0

    const/16 v45, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v50, 0x0

    const/16 v51, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v60, 0x1

    const/16 v64, 0x0

    move-object/from16 v23, v12

    const/4 v12, 0x0

    :goto_28
    :try_start_7
    invoke-virtual {v11}, Lcom/google/ads/interactivemedia/v3/internal/xm;->a()Z

    move-result v32

    if-eqz v32, :cond_64

    move-object/from16 p1, v13

    invoke-virtual {v11}, Lcom/google/ads/interactivemedia/v3/internal/xm;->b()Ljava/lang/String;

    move-result-object v13

    move-object/from16 p2, v11

    move-object/from16 v11, v22

    invoke-virtual {v13, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_3b

    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3b
    move-object/from16 v22, v11

    const-string v11, "#EXT-X-PLAYLIST-TYPE"

    invoke-virtual {v13, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3e

    sget-object v11, Lcom/google/ads/interactivemedia/v3/internal/xn;->m:Ljava/util/regex/Pattern;

    invoke-static {v13, v11, v14}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v11

    const-string v13, "VOD"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3c

    move-object/from16 v13, p1

    move-object/from16 v11, p2

    const/16 v51, 0x1

    goto :goto_28

    :cond_3c
    const-string v13, "EVENT"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3d

    move-object/from16 v13, p1

    move-object/from16 v11, p2

    const/16 v51, 0x2

    goto :goto_28

    :cond_3d
    move-object/from16 v71, v1

    move-object v11, v2

    move-object/from16 v18, v3

    move-object/from16 v78, v5

    move-object/from16 v79, v6

    move-object/from16 v80, v7

    move-object/from16 v81, v8

    move-object/from16 v72, v25

    move-object/from16 v77, v26

    const/4 v8, 0x0

    move-object/from16 v25, v0

    move-object/from16 v26, v4

    move-object/from16 v0, p1

    goto/16 :goto_3a

    :cond_3e
    const-string v11, "#EXT-X-I-FRAMES-ONLY"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3f

    move-object/from16 v13, p1

    move-object/from16 v11, p2

    const/16 v50, 0x1

    goto :goto_28

    :cond_3f
    const-string v11, "#EXT-X-START"

    invoke-virtual {v13, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_40

    sget-object v11, Lcom/google/ads/interactivemedia/v3/internal/xn;->q:Ljava/util/regex/Pattern;

    invoke-static {v13, v11}, Lcom/google/ads/interactivemedia/v3/internal/xn;->b(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v32

    const-wide v34, 0x412e848000000000L    # 1000000.0

    move-object/from16 v71, v1

    move-object v11, v2

    mul-double v1, v32, v34

    double-to-long v1, v1

    move-object/from16 v13, p1

    move-wide/from16 v52, v1

    :goto_29
    move-object v2, v11

    :goto_2a
    move-object/from16 v1, v71

    goto/16 :goto_3b

    :cond_40
    move-object/from16 v71, v1

    move-object v11, v2

    const-string v1, "#EXT-X-MAP"

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/xn;->w:Ljava/util/regex/Pattern;

    invoke-static {v13, v1, v14}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v33

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/xn;->s:Ljava/util/regex/Pattern;

    invoke-static {v13, v1, v14}, Lcom/google/ads/interactivemedia/v3/internal/xn;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_42

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v13, v1, v2

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v34

    array-length v2, v1

    const/4 v13, 0x1

    if-le v2, v13, :cond_41

    aget-object v1, v1, v13

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    move-wide/from16 v36, v34

    move-wide/from16 v34, v1

    goto :goto_2b

    :cond_41
    move-wide/from16 v36, v34

    move-wide/from16 v34, v40

    goto :goto_2b

    :cond_42
    move-wide/from16 v34, v40

    move-wide/from16 v36, v65

    :goto_2b
    if-eqz v20, :cond_44

    if-eqz v21, :cond_43

    goto :goto_2c

    :cond_43
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v1, "The encryption IV attribute must be present when an initialization segment is encrypted with METHOD=AES-128."

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_44
    :goto_2c
    new-instance v48, Lcom/google/ads/interactivemedia/v3/internal/xj;

    move-object/from16 v32, v48

    move-object/from16 v38, v20

    move-object/from16 v39, v21

    invoke-direct/range {v32 .. v39}, Lcom/google/ads/interactivemedia/v3/internal/xj;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v13, p1

    move-object v2, v11

    move-wide/from16 v65, v27

    move-wide/from16 v40, v30

    goto :goto_2a

    :cond_45
    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_46

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/xn;->k:Ljava/util/regex/Pattern;

    invoke-static {v13, v1}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v32, 0xf4240

    mul-long v61, v1, v32

    :goto_2d
    move-object/from16 v13, p1

    goto :goto_29

    :cond_46
    invoke-virtual {v13, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/xn;->n:Ljava/util/regex/Pattern;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-static {v13, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v42

    move-object/from16 v13, p1

    move-object v2, v11

    move-wide/from16 v58, v42

    goto/16 :goto_2a

    :cond_47
    const-string v1, "#EXT-X-VERSION"

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_48

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/xn;->l:Ljava/util/regex/Pattern;

    invoke-static {v13, v1}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v60

    goto :goto_2d

    :cond_48
    move-object/from16 v1, v25

    invoke-virtual {v13, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4b

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/xn;->I:Ljava/util/regex/Pattern;

    invoke-static {v13, v2, v14}, Lcom/google/ads/interactivemedia/v3/internal/xn;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4a

    iget-object v13, v4, Lcom/google/ads/interactivemedia/v3/internal/xi;->h:Ljava/util/Map;

    invoke-interface {v13, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    if-eqz v13, :cond_49

    invoke-virtual {v14, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_49
    move-object/from16 v25, v0

    move-object/from16 v72, v1

    move-object/from16 v18, v3

    move-object/from16 v78, v5

    move-object/from16 v79, v6

    move-object/from16 v80, v7

    move-object/from16 v81, v8

    move-object/from16 v77, v26

    const/4 v8, 0x0

    move-object/from16 v0, p1

    :goto_2e
    move-object/from16 v26, v4

    goto/16 :goto_3a

    :cond_4a
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/xn;->A:Ljava/util/regex/Pattern;

    invoke-static {v13, v2, v14}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v25, v0

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->H:Ljava/util/regex/Pattern;

    invoke-static {v13, v0, v14}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p1

    move-object/from16 v72, v1

    move-object/from16 v18, v3

    move-object/from16 v78, v5

    move-object/from16 v79, v6

    move-object/from16 v80, v7

    move-object/from16 v81, v8

    move-object/from16 v77, v26

    const/4 v8, 0x0

    goto :goto_2e

    :cond_4b
    move-object/from16 v25, v0

    invoke-virtual {v13, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->o:Ljava/util/regex/Pattern;

    invoke-static {v13, v0}, Lcom/google/ads/interactivemedia/v3/internal/xn;->b(Ljava/lang/String;Ljava/util/regex/Pattern;)D

    move-result-wide v32

    const-wide v34, 0x412e848000000000L    # 1000000.0

    move-object v2, v1

    mul-double v0, v32, v34

    double-to-long v0, v0

    move-wide/from16 v32, v0

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->p:Ljava/util/regex/Pattern;

    const-string v1, ""

    invoke-static {v13, v0, v1, v14}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-object/from16 v13, p1

    move-object/from16 v0, v25

    move-wide/from16 v69, v32

    move-object/from16 v1, v71

    move-object/from16 v25, v2

    :goto_2f
    move-object v2, v11

    goto/16 :goto_3b

    :cond_4c
    move-object v2, v1

    invoke-virtual {v13, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->t:Ljava/util/regex/Pattern;

    invoke-static {v13, v0, v14}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/xn;->u:Ljava/util/regex/Pattern;

    move-object/from16 v72, v2

    move-object/from16 v2, v26

    invoke-static {v13, v1, v2, v14}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v26, v4

    const-string v4, "NONE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-virtual {v3}, Ljava/util/TreeMap;->clear()V

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_30
    const/16 v24, 0x0

    goto/16 :goto_31

    :cond_4d
    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/xn;->x:Ljava/util/regex/Pattern;

    invoke-static {v13, v4, v14}, Lcom/google/ads/interactivemedia/v3/internal/xn;->b(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4f

    const-string v1, "AES-128"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->w:Ljava/util/regex/Pattern;

    invoke-static {v13, v0, v14}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    goto/16 :goto_31

    :cond_4e
    move-object/from16 v21, v4

    const/16 v20, 0x0

    goto/16 :goto_31

    :cond_4f
    if-nez v12, :cond_50

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :cond_50
    invoke-static {v13, v1, v14}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/google/ads/interactivemedia/v3/internal/hj;

    move-result-object v0

    if-eqz v0, :cond_4e

    invoke-virtual {v3, v1, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v21, v4

    const/16 v20, 0x0

    goto :goto_30

    :cond_51
    move-object/from16 v72, v2

    move-object/from16 v2, v26

    move-object/from16 v26, v4

    invoke-virtual {v13, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_52

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/xn;->r:Ljava/util/regex/Pattern;

    invoke-static {v13, v0, v14}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v65

    array-length v1, v0

    const/4 v4, 0x1

    if-le v1, v4, :cond_54

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v40

    goto :goto_31

    :cond_52
    invoke-virtual {v13, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_53

    const/16 v0, 0x3a

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v57

    move-object/from16 v13, p1

    move-object/from16 v0, v25

    move-object/from16 v4, v26

    move-object/from16 v1, v71

    move-object/from16 v25, v72

    const/16 v56, 0x1

    goto :goto_32

    :cond_53
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    add-int/lit8 v49, v49, 0x1

    :cond_54
    :goto_31
    move-object/from16 v13, p1

    move-object/from16 v0, v25

    move-object/from16 v4, v26

    move-object/from16 v1, v71

    move-object/from16 v25, v72

    :goto_32
    move-object/from16 v26, v2

    goto/16 :goto_2f

    :cond_55
    const-string v0, "#EXT-X-PROGRAM-DATE-TIME"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    cmp-long v0, v54, v30

    if-nez v0, :cond_56

    const/16 v0, 0x3a

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->g(Ljava/lang/String;)J

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Lcom/google/ads/interactivemedia/v3/internal/bk;->b(J)J

    move-result-wide v32

    sub-long v54, v32, v67

    goto :goto_31

    :cond_56
    move-object/from16 v0, p1

    move-object/from16 v77, v2

    move-object/from16 v18, v3

    move-object/from16 v78, v5

    move-object/from16 v79, v6

    move-object/from16 v80, v7

    move-object/from16 v81, v8

    const/4 v8, 0x0

    goto/16 :goto_3a

    :cond_57
    const/4 v1, 0x1

    const-string v0, "#EXT-X-GAP"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    move-object/from16 v13, p1

    move-object/from16 v0, v25

    move-object/from16 v4, v26

    move-object/from16 v1, v71

    move-object/from16 v25, v72

    const/16 v47, 0x1

    goto :goto_32

    :cond_58
    const-string v0, "#EXT-X-INDEPENDENT-SEGMENTS"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    move-object/from16 v13, p1

    move-object/from16 v0, v25

    move-object/from16 v4, v26

    move-object/from16 v1, v71

    move-object/from16 v25, v72

    const/16 v63, 0x1

    goto :goto_32

    :cond_59
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5a

    move-object/from16 v13, p1

    move-object/from16 v0, v25

    move-object/from16 v4, v26

    move-object/from16 v1, v71

    move-object/from16 v25, v72

    const/16 v64, 0x1

    goto :goto_32

    :cond_5a
    const-string v0, "#"

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    if-nez v20, :cond_5b

    const/4 v0, 0x0

    goto :goto_33

    :cond_5b
    if-eqz v21, :cond_5c

    move-object/from16 v0, v21

    goto :goto_33

    :cond_5c
    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    :goto_33
    const-wide/16 v32, 0x1

    add-long v73, v42, v32

    invoke-static {v13, v14}, Lcom/google/ads/interactivemedia/v3/internal/xn;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/ads/interactivemedia/v3/internal/xj;

    cmp-long v19, v65, v27

    if-nez v19, :cond_5d

    move-wide/from16 v75, v30

    goto :goto_34

    :cond_5d
    if-eqz v50, :cond_5e

    if-nez v48, :cond_5e

    if-nez v13, :cond_5e

    new-instance v13, Lcom/google/ads/interactivemedia/v3/internal/xj;

    const-wide/16 v34, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v32, v13

    move-object/from16 v33, v4

    move-wide/from16 v36, v40

    invoke-direct/range {v32 .. v39}, Lcom/google/ads/interactivemedia/v3/internal/xj;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v4, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5e
    move-wide/from16 v75, v40

    :goto_34
    if-nez v24, :cond_61

    invoke-virtual {v3}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_61

    invoke-virtual {v3}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    move-object/from16 v77, v2

    move-object/from16 v18, v3

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/ads/interactivemedia/v3/internal/hj;

    invoke-interface {v1, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/ads/interactivemedia/v3/internal/hj;

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/hk;

    invoke-direct {v3, v12, v1}, Lcom/google/ads/interactivemedia/v3/internal/hk;-><init>(Ljava/lang/String;[Lcom/google/ads/interactivemedia/v3/internal/hj;)V

    if-nez v45, :cond_60

    array-length v2, v1

    new-array v2, v2, [Lcom/google/ads/interactivemedia/v3/internal/hj;

    move-object/from16 v24, v3

    move-object/from16 v78, v5

    const/4 v3, 0x0

    :goto_35
    array-length v5, v1

    if-ge v3, v5, :cond_5f

    aget-object v5, v1, v3

    move-object/from16 v32, v1

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/hj;

    move-object/from16 v79, v6

    iget-object v6, v5, Lcom/google/ads/interactivemedia/v3/internal/hj;->a:Ljava/util/UUID;

    move-object/from16 v80, v7

    iget-object v7, v5, Lcom/google/ads/interactivemedia/v3/internal/hj;->b:Ljava/lang/String;

    iget-object v5, v5, Lcom/google/ads/interactivemedia/v3/internal/hj;->c:Ljava/lang/String;

    move-object/from16 v81, v8

    const/4 v8, 0x0

    invoke-direct {v1, v6, v7, v5, v8}, Lcom/google/ads/interactivemedia/v3/internal/hj;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    aput-object v1, v2, v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v32

    move-object/from16 v6, v79

    move-object/from16 v7, v80

    move-object/from16 v8, v81

    goto :goto_35

    :cond_5f
    move-object/from16 v79, v6

    move-object/from16 v80, v7

    move-object/from16 v81, v8

    const/4 v8, 0x0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/hk;

    invoke-direct {v1, v12, v2}, Lcom/google/ads/interactivemedia/v3/internal/hk;-><init>(Ljava/lang/String;[Lcom/google/ads/interactivemedia/v3/internal/hj;)V

    goto :goto_38

    :cond_60
    move-object/from16 v24, v3

    :goto_36
    move-object/from16 v78, v5

    move-object/from16 v79, v6

    move-object/from16 v80, v7

    move-object/from16 v81, v8

    const/4 v8, 0x0

    goto :goto_37

    :cond_61
    move-object/from16 v77, v2

    move-object/from16 v18, v3

    goto :goto_36

    :goto_37
    move-object/from16 v1, v45

    :goto_38
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/xj;

    if-eqz v48, :cond_62

    move-object/from16 v34, v48

    goto :goto_39

    :cond_62
    move-object/from16 v34, v13

    :goto_39
    move-object/from16 v32, v2

    move-object/from16 v33, v4

    move-wide/from16 v35, v69

    move/from16 v37, v49

    move-wide/from16 v38, v67

    move-object/from16 v40, v24

    move-object/from16 v41, v20

    move-object/from16 v42, v0

    move-wide/from16 v43, v75

    move-wide/from16 v45, v65

    invoke-direct/range {v32 .. v47}, Lcom/google/ads/interactivemedia/v3/internal/xj;-><init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/xj;JIJLcom/google/ads/interactivemedia/v3/internal/hk;Ljava/lang/String;Ljava/lang/String;JJZ)V

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-long v67, v67, v69

    if-eqz v19, :cond_63

    add-long v75, v75, v65

    :cond_63
    move-wide/from16 v40, v75

    move-object v13, v0

    move-object/from16 v45, v1

    move-object v2, v11

    move-object/from16 v3, v18

    move-object/from16 v0, v25

    move-object/from16 v4, v26

    move-wide/from16 v65, v27

    move-wide/from16 v69, v30

    move-object/from16 v1, v71

    move-object/from16 v25, v72

    move-wide/from16 v42, v73

    move-object/from16 v26, v77

    move-object/from16 v5, v78

    move-object/from16 v6, v79

    move-object/from16 v7, v80

    move-object/from16 v8, v81

    const/16 v47, 0x0

    goto :goto_3b

    :goto_3a
    move-object v13, v0

    move-object v2, v11

    move-object/from16 v3, v18

    move-object/from16 v0, v25

    move-object/from16 v4, v26

    move-object/from16 v1, v71

    move-object/from16 v25, v72

    move-object/from16 v26, v77

    move-object/from16 v5, v78

    move-object/from16 v6, v79

    move-object/from16 v7, v80

    move-object/from16 v8, v81

    :goto_3b
    move-object/from16 v11, p2

    goto/16 :goto_28

    :cond_64
    move-object/from16 v71, v1

    move-object v0, v13

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/xk;

    cmp-long v2, v54, v30

    if-eqz v2, :cond_65

    const/16 v44, 0x1

    goto :goto_3c

    :cond_65
    const/16 v44, 0x0

    :goto_3c
    move-object/from16 v27, v1

    move/from16 v28, v51

    move-object/from16 v30, v71

    move-wide/from16 v31, v52

    move-wide/from16 v33, v54

    move/from16 v35, v56

    move/from16 v36, v57

    move-wide/from16 v37, v58

    move/from16 v39, v60

    move-wide/from16 v40, v61

    move/from16 v42, v63

    move/from16 v43, v64

    move-object/from16 v46, v0

    invoke-direct/range {v27 .. v46}, Lcom/google/ads/interactivemedia/v3/internal/xk;-><init>(ILjava/lang/String;Ljava/util/List;JJZIJIJZZZLcom/google/ads/interactivemedia/v3/internal/hk;Ljava/util/List;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static/range {v23 .. v23}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    :goto_3d
    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v23, v12

    goto :goto_3f

    :catchall_1
    move-exception v0

    move-object/from16 v23, v27

    goto :goto_3f

    :cond_66
    move-object/from16 v23, v2

    invoke-static/range {v23 .. v23}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/io/Closeable;)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v1, "Failed to parse the playlist, could not identify any tags."

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_3e
    :try_start_8
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/tc;

    const-string v1, "Input does not start with the #EXTM3U header."

    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/tc;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_3f

    :catchall_3
    move-exception v0

    move-object/from16 v23, v2

    :goto_3f
    invoke-static/range {v23 .. v23}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/io/Closeable;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x392db8c5 -> :sswitch_3
        -0x13dc6572 -> :sswitch_2
        0x3bba3b6 -> :sswitch_1
        0x4de1c5b -> :sswitch_0
    .end sparse-switch
.end method
