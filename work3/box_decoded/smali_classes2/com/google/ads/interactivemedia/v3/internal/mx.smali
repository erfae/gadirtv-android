.class final Lcom/google/ads/interactivemedia/v3/internal/mx;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/me;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/acf;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/abq;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/me;Lcom/google/ads/interactivemedia/v3/internal/acf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->a:Lcom/google/ads/interactivemedia/v3/internal/me;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->b:Lcom/google/ads/interactivemedia/v3/internal/acf;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abq;

    const/16 p2, 0x40

    new-array p2, p2, [B

    .line 1
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/abq;-><init>([B)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->f:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->a:Lcom/google/ads/interactivemedia/v3/internal/me;

    .line 30
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/me;->a()V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/abr;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/ads/interactivemedia/v3/internal/dt;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/abq;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 2
    invoke-virtual {p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abq;->a(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    const/16 v3, 0x8

    .line 4
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 5
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->d:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 6
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/abq;->d()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->e:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    const/4 v4, 0x6

    .line 7
    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 8
    invoke-virtual {v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->g:I

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/abq;->a:[B

    .line 9
    invoke-virtual {p1, v3, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 10
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abq;->a(I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->h:J

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->d:Z

    const/4 v4, 0x4

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 11
    invoke-virtual {v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 12
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    const/4 v3, 0x1

    .line 13
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    const/16 v5, 0xf

    .line 14
    invoke-virtual {v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v1

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 15
    invoke-virtual {v6, v3}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    int-to-long v6, v0

    const/16 v0, 0x1e

    shl-long/2addr v6, v0

    shl-int/2addr v1, v5

    int-to-long v8, v1

    or-long/2addr v6, v8

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 16
    invoke-virtual {v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v1

    int-to-long v8, v1

    or-long/2addr v6, v8

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 17
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->f:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 18
    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 19
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 20
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 21
    invoke-virtual {v2, v5}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v2

    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 22
    invoke-virtual {v8, v3}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 23
    invoke-virtual {v8, v5}, Lcom/google/ads/interactivemedia/v3/internal/abq;->c(I)I

    move-result v8

    iget-object v9, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->c:Lcom/google/ads/interactivemedia/v3/internal/abq;

    .line 24
    invoke-virtual {v9, v3}, Lcom/google/ads/interactivemedia/v3/internal/abq;->b(I)V

    iget-object v9, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->b:Lcom/google/ads/interactivemedia/v3/internal/acf;

    int-to-long v10, v1

    shl-long v0, v10, v0

    shl-int/2addr v2, v5

    int-to-long v10, v2

    or-long/2addr v0, v10

    int-to-long v10, v8

    or-long/2addr v0, v10

    .line 25
    invoke-virtual {v9, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/acf;->b(J)J

    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->f:Z

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->b:Lcom/google/ads/interactivemedia/v3/internal/acf;

    .line 26
    invoke-virtual {v0, v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/acf;->b(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->h:J

    :cond_1
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->a:Lcom/google/ads/interactivemedia/v3/internal/me;

    .line 27
    invoke-interface {v2, v0, v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/me;->a(JI)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->a:Lcom/google/ads/interactivemedia/v3/internal/me;

    .line 28
    invoke-interface {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/me;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mx;->a:Lcom/google/ads/interactivemedia/v3/internal/me;

    .line 29
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/me;->b()V

    return-void
.end method
