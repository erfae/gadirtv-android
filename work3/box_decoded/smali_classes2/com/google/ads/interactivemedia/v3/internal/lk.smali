.class public final Lcom/google/ads/interactivemedia/v3/internal/lk;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ih;


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/internal/ii;

.field private b:Lcom/google/ads/interactivemedia/v3/internal/lr;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/abr;)V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    return-void
.end method

.method private final b(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/lm;

    .line 12
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/lm;-><init>()V

    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/lm;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/lm;->b:I

    const/4 v4, 0x2

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_0

    goto :goto_1

    :cond_0
    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/lm;->f:I

    const/16 v2, 0x8

    .line 14
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 15
    invoke-direct {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v4

    .line 16
    invoke-virtual {p1, v4, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    .line 17
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/lk;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;)V

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result p1

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1

    .line 18
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result p1

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_1

    .line 19
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->l()J

    move-result-wide v4

    const-wide/32 v6, 0x464c4143

    cmp-long p1, v4, v6

    if-nez p1, :cond_1

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/lj;

    .line 25
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/lj;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lk;->b:Lcom/google/ads/interactivemedia/v3/internal/lr;

    goto :goto_0

    .line 20
    :cond_1
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/lk;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;)V

    .line 21
    :try_start_0
    invoke-static {v1, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/la;->a(ILcom/google/ads/interactivemedia/v3/internal/abr;Z)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/dt; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/lt;

    .line 24
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/lt;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lk;->b:Lcom/google/ads/interactivemedia/v3/internal/lr;

    goto :goto_0

    :catch_0
    nop

    .line 22
    :cond_2
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/lk;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;)V

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/lo;->b(Lcom/google/ads/interactivemedia/v3/internal/abr;)Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/lo;

    .line 23
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/lo;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lk;->b:Lcom/google/ads/interactivemedia/v3/internal/lr;

    :goto_0
    return v1

    :cond_3
    :goto_1
    return v3
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ir;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lk;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    .line 1
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lk;->b:Lcom/google/ads/interactivemedia/v3/internal/lr;

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/lk;->b(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string p2, "Failed to determine bitstream type"

    .line 3
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lk;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lk;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 5
    invoke-interface {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/lk;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    .line 6
    invoke-interface {v1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->w()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/lk;->b:Lcom/google/ads/interactivemedia/v3/internal/lr;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/lk;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    .line 7
    invoke-virtual {v1, v3, v0}, Lcom/google/ads/interactivemedia/v3/internal/lr;->a(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/ix;)V

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/lk;->c:Z

    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lk;->b:Lcom/google/ads/interactivemedia/v3/internal/lr;

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/lr;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ir;)I

    move-result p1

    return p1
.end method

.method public final a(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/lk;->b:Lcom/google/ads/interactivemedia/v3/internal/lr;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/lr;->a(JJ)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ii;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/lk;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/lk;->b(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/dt; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c()V
    .locals 0

    return-void
.end method
