.class public Lcom/google/vr/sdk/widgets/video/deps/ob;
.super Lcom/google/vr/sdk/widgets/video/deps/no;
.source "DefaultHttpDataSource.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/of;


# static fields
.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[B>;"
        }
    .end annotation
.end field


# instance fields
.field private final d:Z

.field private final e:I

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/vr/sdk/widgets/video/deps/pg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/vr/sdk/widgets/video/deps/pg<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/vr/sdk/widgets/video/deps/of$f;

.field private final j:Lcom/google/vr/sdk/widgets/video/deps/of$f;

.field private k:Lcom/google/vr/sdk/widgets/video/deps/nv;

.field private l:Ljava/net/HttpURLConnection;

.field private m:Ljava/io/InputStream;

.field private n:Z

.field private o:J

.field private p:J

.field private q:J

.field private r:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^bytes (\\d+)-(\\d+)/(\\d+)$"

    .line 217
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ob;->b:Ljava/util/regex/Pattern;

    .line 218
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/ob;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/pg;IIZLcom/google/vr/sdk/widgets/video/deps/of$f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/pg<",
            "Ljava/lang/String;",
            ">;IIZ",
            "Lcom/google/vr/sdk/widgets/video/deps/of$f;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/no;-><init>(Z)V

    .line 2
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->g:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->h:Lcom/google/vr/sdk/widgets/video/deps/pg;

    .line 4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/of$f;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/of$f;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->j:Lcom/google/vr/sdk/widgets/video/deps/of$f;

    .line 5
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->e:I

    .line 6
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->f:I

    .line 7
    iput-boolean p5, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->d:Z

    .line 8
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->i:Lcom/google/vr/sdk/widgets/video/deps/of$f;

    return-void
.end method

.method private static a(Ljava/net/HttpURLConnection;)J
    .locals 10

    const-string v0, "Content-Length"

    .line 138
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "]"

    const-string v3, "DefaultHttpDataSource"

    if-nez v1, :cond_0

    .line 140
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unexpected Content-Length ["

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v4, -0x1

    :goto_0
    const-string v1, "Content-Range"

    .line 144
    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 145
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 146
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/ob;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    .line 149
    :try_start_1
    invoke-virtual {v1, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-gez v1, :cond_1

    move-wide v4, v6

    goto :goto_1

    :cond_1
    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    .line 153
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v1, v8

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Inconsistent headers ["

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v4, v0

    goto :goto_1

    .line 157
    :catch_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x1b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected Content-Range ["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-wide v4
.end method

.method private a(Ljava/net/URL;I[BJJZZ)Ljava/net/HttpURLConnection;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    .line 101
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->e:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 102
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->f:I

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 103
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->i:Lcom/google/vr/sdk/widgets/video/deps/of$f;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/of$f;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 105
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->j:Lcom/google/vr/sdk/widgets/video/deps/of$f;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/of$f;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    const-wide/16 v2, -0x1

    cmp-long v4, p4, v0

    if-nez v4, :cond_2

    cmp-long v0, p6, v2

    if-eqz v0, :cond_4

    :cond_2
    const/16 v0, 0x1b

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "bytes="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    cmp-long v1, p6, v2

    if-eqz v1, :cond_3

    .line 113
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    add-long/2addr p4, p6

    const-wide/16 p6, 0x1

    sub-long/2addr p4, p6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result p6

    add-int/lit8 p6, p6, 0x14

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7, p6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string p4, "Range"

    .line 114
    invoke-virtual {p1, p4, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_4
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->g:Ljava/lang/String;

    const-string p5, "User-Agent"

    invoke-virtual {p1, p5, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p8, :cond_5

    const-string p4, "Accept-Encoding"

    const-string p5, "identity"

    .line 117
    invoke-virtual {p1, p4, p5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_5
    invoke-virtual {p1, p9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    if-eqz p3, :cond_6

    const/4 p4, 0x1

    goto :goto_2

    :cond_6
    const/4 p4, 0x0

    .line 119
    :goto_2
    invoke-virtual {p1, p4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 120
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/nv;->b(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eqz p3, :cond_7

    .line 122
    array-length p2, p3

    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    .line 123
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    .line 124
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p2

    .line 125
    invoke-virtual {p2, p3}, Ljava/io/OutputStream;->write([B)V

    .line 126
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    goto :goto_3

    .line 128
    :cond_7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->connect()V

    :goto_3
    return-object p1
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 132
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object p0

    const-string p1, "https"

    .line 134
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "http"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 135
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "Unsupported protocol redirect: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0

    .line 131
    :cond_2
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "Null location redirect"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Ljava/net/HttpURLConnection;J)V
    .locals 3

    .line 191
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    return-void

    .line 193
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_1

    .line 195
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    return-void

    :cond_1
    const-wide/16 v0, 0x800

    cmp-long v2, p1, v0

    if-gtz v2, :cond_2

    return-void

    .line 199
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$ChunkedInputStream"

    .line 200
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const-string p2, "com.android.okhttp.internal.http.HttpTransport$FixedLengthInputStream"

    .line 201
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 202
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    const-string p2, "unexpectedEndOfInput"

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    .line 203
    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    .line 204
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p2, v0, [Ljava/lang/Object;

    .line 205
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method private b([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 178
    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->p:J

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    .line 179
    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->r:J

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_1

    return v4

    :cond_1
    int-to-long v5, p3

    .line 182
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->m:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ne p1, v4, :cond_4

    .line 185
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->p:J

    cmp-long p3, p1, v2

    if-nez p3, :cond_3

    return v4

    .line 186
    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 188
    :cond_4
    iget-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->r:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->r:J

    .line 189
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ob;->a(I)V

    return p1
.end method

.method private d(Lcom/google/vr/sdk/widgets/video/deps/nv;)Ljava/net/HttpURLConnection;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 75
    new-instance v1, Ljava/net/URL;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/nv;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 76
    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/nv;->b:I

    .line 77
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/nv;->c:[B

    .line 78
    iget-wide v14, v0, Lcom/google/vr/sdk/widgets/video/deps/nv;->f:J

    .line 79
    iget-wide v12, v0, Lcom/google/vr/sdk/widgets/video/deps/nv;->g:J

    const/4 v10, 0x1

    .line 80
    invoke-virtual {v0, v10}, Lcom/google/vr/sdk/widgets/video/deps/nv;->a(I)Z

    move-result v16

    move-object/from16 v11, p0

    .line 81
    iget-boolean v0, v11, Lcom/google/vr/sdk/widgets/video/deps/ob;->d:Z

    if-nez v0, :cond_0

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move-wide v4, v14

    move-wide v6, v12

    move/from16 v8, v16

    .line 82
    invoke-direct/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/ob;->a(Ljava/net/URL;I[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v8, v0, 0x1

    const/16 v4, 0x14

    if-gt v0, v4, :cond_6

    const/4 v0, 0x0

    move-object/from16 v4, p0

    move-object v5, v1

    move v6, v2

    move-object v7, v3

    move/from16 v17, v8

    move-wide v8, v14

    move-wide v10, v12

    move-wide/from16 v18, v12

    move/from16 v12, v16

    move v13, v0

    .line 86
    invoke-direct/range {v4 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/ob;->a(Ljava/net/URL;I[BJJZZ)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const-string v5, "Location"

    .line 88
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x12f

    const/16 v7, 0x12e

    const/16 v8, 0x12d

    const/16 v9, 0x12c

    const/4 v10, 0x1

    if-eq v2, v10, :cond_1

    const/4 v11, 0x3

    if-ne v2, v11, :cond_2

    :cond_1
    if-eq v4, v9, :cond_5

    if-eq v4, v8, :cond_5

    if-eq v4, v7, :cond_5

    if-eq v4, v6, :cond_5

    const/16 v11, 0x133

    if-eq v4, v11, :cond_5

    const/16 v11, 0x134

    if-ne v4, v11, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    if-eq v4, v9, :cond_3

    if-eq v4, v8, :cond_3

    if-eq v4, v7, :cond_3

    if-ne v4, v6, :cond_4

    .line 93
    :cond_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    .line 96
    invoke-static {v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/ob;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    move-object v3, v0

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    return-object v0

    .line 90
    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 91
    invoke-static {v1, v5}, Lcom/google/vr/sdk/widgets/video/deps/ob;->a(Ljava/net/URL;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    move-object v1, v0

    :goto_2
    move-object/from16 v11, p0

    move/from16 v0, v17

    move-wide/from16 v12, v18

    goto :goto_0

    :cond_6
    move/from16 v17, v8

    .line 99
    new-instance v0, Ljava/net/NoRouteToHostException;

    const/16 v1, 0x1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Too many redirects: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v17

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/NoRouteToHostException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->q:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->o:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 161
    :cond_0
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/ob;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 164
    :cond_1
    :goto_0
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->q:J

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->o:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    sub-long/2addr v3, v1

    .line 165
    array-length v1, v0

    int-to-long v1, v1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    .line 166
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->m:Ljava/io/InputStream;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 167
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 171
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->q:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->q:J

    .line 172
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ob;->a(I)V

    goto :goto_0

    .line 170
    :cond_2
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 168
    :cond_3
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    .line 174
    :cond_4
    sget-object v1, Lcom/google/vr/sdk/widgets/video/deps/ob;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private g()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->l:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 210
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DefaultHttpDataSource"

    const-string v2, "Unexpected error while disconnecting"

    .line 213
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->l:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/of$c;
        }
    .end annotation

    .line 53
    :try_start_0
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ob;->f()V

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ob;->b([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 56
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/of$c;

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->k:Lcom/google/vr/sdk/widgets/video/deps/nv;

    const/4 v0, 0x2

    invoke-direct {p2, p1, p3, v0}, Lcom/google/vr/sdk/widgets/video/deps/of$c;-><init>(Ljava/io/IOException;Lcom/google/vr/sdk/widgets/video/deps/nv;I)V

    throw p2
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/nv;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/of$c;
        }
    .end annotation

    const-string v0, "Unable to connect to "

    .line 12
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->k:Lcom/google/vr/sdk/widgets/video/deps/nv;

    const-wide/16 v1, 0x0

    .line 13
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->r:J

    .line 14
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->q:J

    .line 15
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ob;->b(Lcom/google/vr/sdk/widgets/video/deps/nv;)V

    const/4 v3, 0x1

    .line 16
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ob;->d(Lcom/google/vr/sdk/widgets/video/deps/nv;)Ljava/net/HttpURLConnection;

    move-result-object v4

    iput-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->l:Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 20
    :try_start_1
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v4, 0xc8

    if-lt v0, v4, :cond_7

    const/16 v5, 0x12b

    if-le v0, v5, :cond_0

    goto :goto_2

    .line 32
    :cond_0
    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v5

    .line 33
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->h:Lcom/google/vr/sdk/widgets/video/deps/pg;

    if-eqz v6, :cond_2

    invoke-interface {v6, v5}, Lcom/google/vr/sdk/widgets/video/deps/pg;->a(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 34
    :cond_1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ob;->g()V

    .line 35
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/of$d;

    invoke-direct {v0, v5, p1}, Lcom/google/vr/sdk/widgets/video/deps/of$d;-><init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/nv;)V

    throw v0

    :cond_2
    :goto_0
    if-ne v0, v4, :cond_3

    .line 36
    iget-wide v4, p1, Lcom/google/vr/sdk/widgets/video/deps/nv;->f:J

    cmp-long v0, v4, v1

    if-eqz v0, :cond_3

    iget-wide v1, p1, Lcom/google/vr/sdk/widgets/video/deps/nv;->f:J

    :cond_3
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->o:J

    .line 37
    invoke-virtual {p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/nv;->a(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 38
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/nv;->g:J

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_4

    .line 39
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/nv;->g:J

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->p:J

    goto :goto_1

    .line 40
    :cond_4
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->l:Ljava/net/HttpURLConnection;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ob;->a(Ljava/net/HttpURLConnection;)J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_5

    .line 41
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->o:J

    sub-long v4, v0, v4

    .line 42
    :cond_5
    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->p:J

    goto :goto_1

    .line 44
    :cond_6
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/nv;->g:J

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->p:J

    .line 45
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->m:Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 50
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->n:Z

    .line 51
    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ob;->c(Lcom/google/vr/sdk/widgets/video/deps/nv;)V

    .line 52
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->p:J

    return-wide v0

    :catch_0
    move-exception v0

    .line 48
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ob;->g()V

    .line 49
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/of$c;

    invoke-direct {v1, v0, p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/of$c;-><init>(Ljava/io/IOException;Lcom/google/vr/sdk/widgets/video/deps/nv;I)V

    throw v1

    .line 26
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 27
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ob;->g()V

    .line 28
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/of$e;

    invoke-direct {v2, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/of$e;-><init>(ILjava/util/Map;Lcom/google/vr/sdk/widgets/video/deps/nv;)V

    const/16 p1, 0x1a0

    if-ne v0, p1, :cond_8

    .line 30
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/nt;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/nt;-><init>(I)V

    invoke-virtual {v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/of$e;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 31
    :cond_8
    throw v2

    :catch_1
    move-exception v1

    .line 23
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ob;->g()V

    .line 24
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/of$c;

    iget-object v4, p1, Lcom/google/vr/sdk/widgets/video/deps/nv;->a:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_9
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    :goto_3
    invoke-direct {v2, v0, v1, p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/of$c;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/vr/sdk/widgets/video/deps/nv;I)V

    throw v2

    :catch_2
    move-exception v1

    .line 19
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/of$c;

    iget-object v4, p1, Lcom/google/vr/sdk/widgets/video/deps/nv;->a:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_a
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    :goto_4
    invoke-direct {v2, v0, v1, p1, v3}, Lcom/google/vr/sdk/widgets/video/deps/of$c;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/google/vr/sdk/widgets/video/deps/nv;I)V

    throw v2
.end method

.method public a()Landroid/net/Uri;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->l:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public b()Ljava/util/Map;
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

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->l:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public c()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/of$c;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 57
    :try_start_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->m:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->l:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ob;->e()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/ob;->a(Ljava/net/HttpURLConnection;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    :try_start_1
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->m:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 62
    :try_start_2
    new-instance v3, Lcom/google/vr/sdk/widgets/video/deps/of$c;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->k:Lcom/google/vr/sdk/widgets/video/deps/nv;

    const/4 v5, 0x3

    invoke-direct {v3, v2, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/of$c;-><init>(Ljava/io/IOException;Lcom/google/vr/sdk/widgets/video/deps/nv;I)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 63
    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->m:Ljava/io/InputStream;

    .line 64
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ob;->g()V

    .line 65
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->n:Z

    if-eqz v1, :cond_1

    .line 66
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->n:Z

    .line 67
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ob;->d()V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    .line 68
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->m:Ljava/io/InputStream;

    .line 69
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ob;->g()V

    .line 70
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->n:Z

    if-eqz v1, :cond_2

    .line 71
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->n:Z

    .line 72
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/ob;->d()V

    :cond_2
    throw v2
.end method

.method protected final e()J
    .locals 5

    .line 74
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->p:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ob;->r:J

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method
