.class public final Lcom/google/ads/interactivemedia/v3/internal/zz;
.super Lcom/google/ads/interactivemedia/v3/internal/zi;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/aah;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final c:I

.field private final d:I

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/aag;

.field private final g:Lcom/google/ads/interactivemedia/v3/internal/aag;

.field private h:Lcom/google/ads/interactivemedia/v3/internal/zs;

.field private i:Ljava/net/HttpURLConnection;

.field private j:Ljava/io/InputStream;

.field private k:Z

.field private l:I

.field private m:J

.field private n:J

.field private o:J

.field private p:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zz;->a:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zz;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/google/ads/interactivemedia/v3/internal/aag;)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zi;-><init>(Z)V

    .line 4
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->c(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->e:Ljava/lang/String;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/aag;

    .line 5
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/aag;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->g:Lcom/google/ads/interactivemedia/v3/internal/aag;

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->c:I

    iput p3, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->d:I

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->f:Lcom/google/ads/interactivemedia/v3/internal/aag;

    return-void
.end method

.method private final e()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->i:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 21
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    .line 22
    invoke-static {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/abh;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->i:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/aae;
        }
    .end annotation

    :try_start_0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->o:J

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->m:J

    const/4 v4, 0x0

    const/4 v5, -0x1

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    goto :goto_1

    .line 101
    :cond_0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zz;->b:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 90
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    :cond_1
    :goto_0
    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->o:J

    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->m:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_4

    sub-long/2addr v6, v1

    .line 91
    array-length v1, v0

    int-to-long v1, v1

    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->j:Ljava/io/InputStream;

    .line 92
    invoke-virtual {v1, v0, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 93
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_3

    if-eq v1, v5, :cond_2

    .line 96
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->o:J

    int-to-long v6, v1

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->o:J

    .line 94
    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/zi;->a(I)V

    goto :goto_0

    .line 96
    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 95
    :cond_3
    new-instance p1, Ljava/io/InterruptedIOException;

    invoke-direct {p1}, Ljava/io/InterruptedIOException;-><init>()V

    throw p1

    .line 94
    :cond_4
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 97
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_1
    if-nez p3, :cond_5

    goto :goto_3

    .line 0
    :cond_5
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->n:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    iget-wide v6, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->p:J

    sub-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v0, v6

    if-nez v4, :cond_6

    :goto_2
    const/4 v4, -0x1

    goto :goto_3

    :cond_6
    int-to-long v6, p3

    .line 98
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    :cond_7
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->j:Ljava/io/InputStream;

    .line 99
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ne v4, v5, :cond_9

    iget-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->n:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_8

    goto :goto_2

    .line 100
    :cond_8
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 99
    :cond_9
    iget-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->p:J

    int-to-long v0, v4

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->p:J

    .line 101
    invoke-virtual {p0, v4}, Lcom/google/ads/interactivemedia/v3/internal/zi;->a(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return v4

    :catch_0
    move-exception p1

    .line 100
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/aae;

    .line 102
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/aae;-><init>(Ljava/io/IOException;)V

    throw p2
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/zs;)J
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/aae;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "Unable to connect"

    iput-object v0, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->h:Lcom/google/ads/interactivemedia/v3/internal/zs;

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->p:J

    iput-wide v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->o:J

    .line 25
    invoke-virtual/range {p0 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/zi;->b(Lcom/google/ads/interactivemedia/v3/internal/zs;)V

    .line 26
    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/zs;->a:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 27
    iget v6, v0, Lcom/google/ads/interactivemedia/v3/internal/zs;->b:I

    .line 28
    iget-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/zs;->c:[B

    .line 29
    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/zs;->e:J

    .line 30
    iget-wide v9, v0, Lcom/google/ads/interactivemedia/v3/internal/zs;->f:J

    const/4 v11, 0x1

    .line 31
    invoke-virtual {v0, v11}, Lcom/google/ads/interactivemedia/v3/internal/zs;->b(I)Z

    move-result v12

    .line 32
    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/zs;->d:Ljava/util/Map;

    .line 33
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    iget v14, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->c:I

    .line 34
    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    iget v14, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->d:I

    .line 35
    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    new-instance v14, Ljava/util/HashMap;

    .line 36
    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    iget-object v15, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->f:Lcom/google/ads/interactivemedia/v3/internal/aag;

    .line 37
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/aag;->a()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v15, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->g:Lcom/google/ads/interactivemedia/v3/internal/aag;

    .line 38
    invoke-virtual {v15}, Lcom/google/ads/interactivemedia/v3/internal/aag;->a()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 39
    invoke-interface {v14, v13}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 40
    invoke-interface {v14}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 41
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v5, v15, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v13, 0x1b

    const-wide/16 v14, -0x1

    cmp-long v16, v7, v3

    if-nez v16, :cond_1

    cmp-long v16, v9, v14

    if-eqz v16, :cond_3

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    cmp-long v4, v9, v14

    if-eqz v4, :cond_2

    .line 43
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    add-long/2addr v7, v9

    add-long/2addr v7, v14

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    const-string v4, "Range"

    .line 44
    invoke-virtual {v5, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v3, "User-Agent"

    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->e:Ljava/lang/String;

    .line 45
    invoke-virtual {v5, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Accept-Encoding"

    const-string v4, "identity"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    const-string v7, "gzip"

    if-eq v11, v12, :cond_4

    goto :goto_1

    :cond_4
    move-object v4, v7

    .line 46
    :goto_1
    :try_start_1
    invoke-virtual {v5, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {v5, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const/4 v3, 0x0

    .line 48
    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 49
    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/internal/zs;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    iput-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->i:Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 52
    :try_start_2
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    iput v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->l:I

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->i:Ljava/net/HttpURLConnection;

    .line 53
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    iget v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->l:I

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_e

    const/16 v4, 0x12b

    if-le v2, v4, :cond_5

    goto/16 :goto_6

    .line 63
    :cond_5
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->i:Ljava/net/HttpURLConnection;

    .line 64
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    iget v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->l:I

    if-ne v2, v3, :cond_6

    .line 65
    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/zs;->e:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    const-wide/16 v2, 0x0

    :goto_2
    iput-wide v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->m:J

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->i:Ljava/net/HttpURLConnection;

    const-string v3, "Content-Encoding"

    .line 66
    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 68
    iget-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/zs;->f:J

    cmp-long v5, v3, v14

    if-eqz v5, :cond_7

    iput-wide v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->n:J

    goto/16 :goto_5

    .line 89
    :cond_7
    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->i:Ljava/net/HttpURLConnection;

    const-string v4, "Content-Length"

    .line 69
    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 70
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const-string v6, "DefaultHttpDataSource"

    const-string v7, "]"

    if-nez v5, :cond_8

    .line 71
    :try_start_3
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 72
    :catch_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1c

    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unexpected Content-Length ["

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 73
    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-wide v8, v14

    :goto_3
    const-string v5, "Content-Range"

    .line 74
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    sget-object v5, Lcom/google/ads/interactivemedia/v3/internal/zz;->a:Ljava/util/regex/Pattern;

    .line 76
    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 77
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x2

    .line 78
    :try_start_4
    invoke-virtual {v5, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    invoke-virtual {v5, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    sub-long v18, v18, v20

    const-wide/16 v20, 0x1

    add-long v11, v18, v20

    const-wide/16 v16, 0x0

    cmp-long v10, v8, v16

    if-gez v10, :cond_9

    move-wide v8, v11

    goto :goto_4

    :cond_9
    cmp-long v10, v8, v11

    if-eqz v10, :cond_a

    .line 79
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x1a

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    add-int v10, v10, v16

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v10, "Inconsistent headers ["

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] ["

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 80
    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {v8, v9, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    move-wide v8, v3

    goto :goto_4

    .line 82
    :catch_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/2addr v4, v13

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unexpected Content-Range ["

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 83
    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_4
    cmp-long v3, v8, v14

    if-eqz v3, :cond_b

    .line 78
    iget-wide v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->m:J

    sub-long v14, v8, v3

    :cond_b
    iput-wide v14, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->n:J

    goto :goto_5

    .line 84
    :cond_c
    iget-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/zs;->f:J

    iput-wide v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->n:J

    .line 68
    :goto_5
    :try_start_5
    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->i:Ljava/net/HttpURLConnection;

    .line 85
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    iput-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->j:Ljava/io/InputStream;

    if-eqz v2, :cond_d

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->j:Ljava/io/InputStream;

    .line 86
    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->j:Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_d
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->k:Z

    .line 89
    invoke-virtual/range {p0 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/zi;->c(Lcom/google/ads/interactivemedia/v3/internal/zs;)V

    iget-wide v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->n:J

    return-wide v2

    :catch_2
    move-exception v0

    .line 87
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/zz;->e()V

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/aae;

    .line 88
    invoke-direct {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/aae;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 53
    :cond_e
    :goto_6
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->i:Ljava/net/HttpURLConnection;

    .line 56
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->i:Ljava/net/HttpURLConnection;

    .line 57
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 58
    :try_start_6
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/io/InputStream;)[B

    goto :goto_7

    :cond_f
    sget v2, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 60
    :goto_7
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/zz;->e()V

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/aaf;

    iget v3, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->l:I

    .line 61
    invoke-direct {v2, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/aaf;-><init>(ILcom/google/ads/interactivemedia/v3/internal/zs;)V

    iget v0, v1, Lcom/google/ads/interactivemedia/v3/internal/zz;->l:I

    const/16 v3, 0x1a0

    if-ne v0, v3, :cond_10

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zp;

    .line 62
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zp;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/aaf;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 63
    :cond_10
    throw v2

    :catch_3
    move-exception v0

    .line 58
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/aae;

    const-string v3, "Error reading non-2xx response body"

    .line 59
    invoke-direct {v2, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/aae;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw v2

    :catch_4
    move-exception v0

    .line 54
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/zz;->e()V

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/aae;

    .line 55
    invoke-direct {v3, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/aae;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw v3

    :catch_5
    move-exception v0

    .line 84
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/aae;

    .line 51
    invoke-direct {v3, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/aae;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw v3
.end method

.method public final a()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->i:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->i:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final c()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/aae;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->j:Ljava/io/InputStream;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->i:Ljava/net/HttpURLConnection;

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->n:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-wide v7, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->p:J

    sub-long/2addr v3, v7

    .line 6
    :goto_0
    sget v7, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/16 v8, 0x13

    if-eq v7, v8, :cond_1

    sget v7, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v8, 0x14

    if-eq v7, v8, :cond_1

    goto :goto_2

    .line 7
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    .line 8
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    goto :goto_1

    :cond_2
    const-wide/16 v5, 0x800

    cmp-long v7, v3, v5

    if-gtz v7, :cond_3

    goto :goto_2

    .line 9
    :cond_3
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 10
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 11
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 12
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "unexpectedEndOfInput"

    new-array v5, v1, [Ljava/lang/Class;

    .line 13
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v4, v1, [Ljava/lang/Object;

    .line 15
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    :catch_0
    :cond_5
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->j:Ljava/io/InputStream;

    .line 16
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v2

    .line 20
    :try_start_3
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/aae;

    .line 17
    invoke-direct {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/aae;-><init>(Ljava/io/IOException;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16
    :cond_6
    :goto_3
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->j:Ljava/io/InputStream;

    .line 18
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zz;->e()V

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->k:Z

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->k:Z

    .line 19
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zi;->d()V

    :cond_7
    return-void

    :catchall_0
    move-exception v2

    .line 15
    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->j:Ljava/io/InputStream;

    .line 18
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zz;->e()V

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->k:Z

    if-eqz v0, :cond_8

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/zz;->k:Z

    .line 19
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/zi;->d()V

    .line 20
    :cond_8
    throw v2
.end method
