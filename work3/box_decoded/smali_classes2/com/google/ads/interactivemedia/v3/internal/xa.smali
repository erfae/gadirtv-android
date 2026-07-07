.class public final Lcom/google/ads/interactivemedia/v3/internal/xa;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ih;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/acf;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private f:Lcom/google/ads/interactivemedia/v3/internal/ii;

.field private g:[B

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "LOCAL:([^,]+)"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xa;->a:Ljava/util/regex/Pattern;

    const-string v0, "MPEGTS:(-?\\d+)"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/xa;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/ads/interactivemedia/v3/internal/acf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->d:Lcom/google/ads/interactivemedia/v3/internal/acf;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 3
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->e:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 p1, 0x400

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->g:[B

    return-void
.end method

.method private final a(J)Lcom/google/ads/interactivemedia/v3/internal/ix;
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->f:Lcom/google/ads/interactivemedia/v3/internal/ii;

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 4
    invoke-interface {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 5
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    const-string v2, "text/vtt"

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->e(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(J)V

    .line 9
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object p1

    .line 5
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->f:Lcom/google/ads/interactivemedia/v3/internal/ii;

    .line 10
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->w()V

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ir;)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->f:Lcom/google/ads/interactivemedia/v3/internal/ii;

    .line 12
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d()J

    move-result-wide v0

    long-to-int p2, v0

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->h:I

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->g:[B

    .line 13
    array-length v2, v1

    const/4 v3, -0x1

    if-ne v0, v2, :cond_1

    if-eq p2, v3, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move p2, v2

    const/4 v0, -0x1

    :goto_0
    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 p2, p2, 0x2

    .line 14
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->g:[B

    move p2, v0

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->g:[B

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->h:I

    .line 15
    array-length v2, v0

    sub-int/2addr v2, v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a([BII)I

    move-result p1

    if-eq p1, v3, :cond_3

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->h:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->h:I

    if-eq p2, v3, :cond_2

    if-ne v0, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->g:[B

    .line 16
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>([B)V

    .line 17
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/xw;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;)V

    .line 18
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->x()Ljava/lang/String;

    move-result-object p2

    const-wide/16 v0, 0x0

    move-wide v4, v0

    move-wide v6, v4

    .line 19
    :goto_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v8, 0x1

    if-nez v2, :cond_9

    const-string v2, "X-TIMESTAMP-MAP"

    .line 20
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/xa;->a:Ljava/util/regex/Pattern;

    .line 21
    invoke-virtual {v2, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-nez v4, :cond_5

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    .line 29
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-TIMESTAMP-MAP doesn\'t contain local timestamp: "

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 38
    :cond_4
    new-instance p2, Ljava/lang/String;

    .line 29
    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_3
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    sget-object v4, Lcom/google/ads/interactivemedia/v3/internal/xa;->b:Ljava/util/regex/Pattern;

    .line 23
    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 24
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_7

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    .line 30
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "X-TIMESTAMP-MAP doesn\'t contain media timestamp: "

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    .line 29
    :cond_6
    new-instance p2, Ljava/lang/String;

    .line 30
    invoke-direct {p2, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_7
    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/xw;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 27
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/acf;->d(J)J

    move-result-wide v4

    .line 28
    :cond_8
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->x()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    .line 31
    :cond_9
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/xw;->c(Lcom/google/ads/interactivemedia/v3/internal/abr;)Ljava/util/regex/Matcher;

    move-result-object p1

    if-nez p1, :cond_a

    .line 32
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/xa;->a(J)Lcom/google/ads/interactivemedia/v3/internal/ix;

    goto :goto_5

    .line 33
    :cond_a
    invoke-virtual {p1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/xw;->a(Ljava/lang/String;)J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->d:Lcom/google/ads/interactivemedia/v3/internal/acf;

    add-long/2addr v4, p1

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/acf;->e(J)J

    move-result-wide v1

    const-wide v4, 0x200000000L

    rem-long/2addr v1, v4

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/acf;->b(J)J

    move-result-wide v5

    sub-long p1, v5, p1

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/xa;->a(J)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object v4

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->e:Lcom/google/ads/interactivemedia/v3/internal/abr;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->g:[B

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->h:I

    .line 36
    invoke-virtual {p1, p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BI)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->e:Lcom/google/ads/interactivemedia/v3/internal/abr;

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->h:I

    .line 37
    invoke-interface {v4, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    const/4 v7, 0x1

    iget v8, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->h:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 38
    invoke-interface/range {v4 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    :goto_5
    return v3
.end method

.method public final a(JJ)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    .line 39
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ii;)V
    .locals 3

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->f:Lcom/google/ads/interactivemedia/v3/internal/ii;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/it;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    invoke-direct {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/it;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(Lcom/google/ads/interactivemedia/v3/internal/iu;)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->g:[B

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 40
    invoke-virtual {p1, v0, v1, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BIIZ)Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->e:Lcom/google/ads/interactivemedia/v3/internal/abr;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->g:[B

    .line 41
    invoke-virtual {v0, v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BI)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->e:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 42
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/xw;->b(Lcom/google/ads/interactivemedia/v3/internal/abr;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->g:[B

    const/4 v3, 0x3

    .line 43
    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BIIZ)Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->e:Lcom/google/ads/interactivemedia/v3/internal/abr;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->g:[B

    const/16 v1, 0x9

    .line 44
    invoke-virtual {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BI)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/xa;->e:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 45
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/xw;->b(Lcom/google/ads/interactivemedia/v3/internal/abr;)Z

    move-result p1

    return p1
.end method

.method public final c()V
    .locals 0

    return-void
.end method
