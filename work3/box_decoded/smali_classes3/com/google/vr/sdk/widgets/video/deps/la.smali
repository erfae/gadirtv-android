.class public final Lcom/google/vr/sdk/widgets/video/deps/la;
.super Ljava/lang/Object;
.source "WebvttExtractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cr;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/pp;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private f:Lcom/google/vr/sdk/widgets/video/deps/ct;

.field private g:[B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "LOCAL:([^,]+)"

    .line 60
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/la;->a:Ljava/util/regex/Pattern;

    const-string v0, "MPEGTS:(\\d+)"

    .line 61
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/la;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/pp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->c:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->d:Lcom/google/vr/sdk/widgets/video/deps/pp;

    .line 4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 5
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->g:[B

    return-void
.end method

.method private a(J)Lcom/google/vr/sdk/widgets/video/deps/dc;
    .locals 10

    .line 56
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->f:Lcom/google/vr/sdk/widgets/video/deps/ct;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object v0

    .line 57
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->c:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "text/vtt"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-wide v8, p1

    invoke-static/range {v1 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/cb;J)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    .line 58
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->f:Lcom/google/vr/sdk/widgets/video/deps/ct;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a()V

    return-object v0
.end method

.method private a()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->g:[B

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>([B)V

    .line 28
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/my;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V

    const-wide/16 v1, 0x0

    move-wide v3, v1

    move-wide v5, v3

    .line 31
    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->B()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_5

    const-string v8, "X-TIMESTAMP-MAP"

    .line 32
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 33
    sget-object v3, Lcom/google/vr/sdk/widgets/video/deps/la;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 34
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_2

    .line 35
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v1, "X-TIMESTAMP-MAP doesn\'t contain local timestamp: "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_1
    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_2
    sget-object v4, Lcom/google/vr/sdk/widgets/video/deps/la;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 37
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_4

    .line 38
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string v1, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_2
    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_4
    invoke-virtual {v3, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/my;->a(Ljava/lang/String;)J

    move-result-wide v5

    .line 40
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/pp;->d(J)J

    move-result-wide v3

    goto :goto_0

    .line 42
    :cond_5
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/my;->c(Lcom/google/vr/sdk/widgets/video/deps/pe;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-nez v0, :cond_6

    .line 44
    invoke-direct {p0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/la;->a(J)Lcom/google/vr/sdk/widgets/video/deps/dc;

    return-void

    .line 46
    :cond_6
    invoke-virtual {v0, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/my;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 47
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->d:Lcom/google/vr/sdk/widgets/video/deps/pp;

    add-long/2addr v3, v0

    sub-long/2addr v3, v5

    .line 48
    invoke-static {v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/pp;->e(J)J

    move-result-wide v3

    .line 49
    invoke-virtual {v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/pp;->b(J)J

    move-result-wide v6

    sub-long v0, v6, v0

    .line 51
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/la;->a(J)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object v5

    .line 52
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->g:[B

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BI)V

    .line 53
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->h:I

    invoke-interface {v5, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    const/4 v8, 0x1

    .line 54
    iget v9, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->h:I

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 15
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->d()J

    move-result-wide v0

    long-to-int p2, v0

    .line 16
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->h:I

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->g:[B

    array-length v2, v1

    const/4 v3, -0x1

    if-ne v0, v2, :cond_1

    if-eq p2, v3, :cond_0

    move v0, p2

    goto :goto_0

    .line 18
    :cond_0
    array-length v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 19
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->g:[B

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->g:[B

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->h:I

    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-interface {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a([BII)I

    move-result p1

    if-eq p1, v3, :cond_3

    .line 22
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->h:I

    if-eq p2, v3, :cond_2

    if-eq v0, p2, :cond_3

    :cond_2
    const/4 p1, 0x0

    return p1

    .line 25
    :cond_3
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/la;->a()V

    return v3
.end method

.method public a(JJ)V
    .locals 0

    .line 13
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ct;)V
    .locals 3

    .line 10
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->f:Lcom/google/vr/sdk/widgets/video/deps/ct;

    .line 11
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/da$b;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/da$b;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(Lcom/google/vr/sdk/widgets/video/deps/da;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->g:[B

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-interface {p1, v0, v1, v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BIIZ)Z

    .line 8
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->g:[B

    invoke-virtual {p1, v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BI)V

    .line 9
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/la;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/my;->b(Lcom/google/vr/sdk/widgets/video/deps/pe;)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
