.class final Lcom/google/ads/interactivemedia/v3/internal/qn;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/st;


# instance fields
.field public final a:Lcom/google/ads/interactivemedia/v3/internal/st;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/internal/qo;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/qo;Lcom/google/ads/interactivemedia/v3/internal/st;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qn;->b:Lcom/google/ads/interactivemedia/v3/internal/qo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/qn;->a:Lcom/google/ads/interactivemedia/v3/internal/st;

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qn;->b:Lcom/google/ads/interactivemedia/v3/internal/qo;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/qo;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qn;->a:Lcom/google/ads/interactivemedia/v3/internal/st;

    .line 14
    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/st;->a(J)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/da;Lcom/google/ads/interactivemedia/v3/internal/he;Z)I
    .locals 10

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qn;->b:Lcom/google/ads/interactivemedia/v3/internal/qo;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/qo;->g()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qn;->c:Z

    const/4 v2, 0x4

    const/4 v3, -0x4

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/gz;->a(I)V

    return v3

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qn;->a:Lcom/google/ads/interactivemedia/v3/internal/st;

    .line 4
    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/st;->a(Lcom/google/ads/interactivemedia/v3/internal/da;Lcom/google/ads/interactivemedia/v3/internal/he;Z)I

    move-result p3

    const/4 v0, -0x5

    const-wide/high16 v4, -0x8000000000000000L

    if-ne p3, v0, :cond_5

    .line 5
    iget-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/da;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget p3, p2, Lcom/google/ads/interactivemedia/v3/internal/cz;->B:I

    if-nez p3, :cond_2

    iget v1, p2, Lcom/google/ads/interactivemedia/v3/internal/cz;->C:I

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/qn;->b:Lcom/google/ads/interactivemedia/v3/internal/qo;

    iget-wide v1, v1, Lcom/google/ads/interactivemedia/v3/internal/qo;->b:J

    cmp-long v3, v1, v4

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    .line 9
    :cond_3
    iget v1, p2, Lcom/google/ads/interactivemedia/v3/internal/cz;->C:I

    .line 6
    :goto_0
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a()Lcom/google/ads/interactivemedia/v3/internal/cy;

    move-result-object p2

    .line 7
    invoke-virtual {p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->d(I)V

    .line 8
    invoke-virtual {p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->e(I)V

    .line 9
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object p2

    iput-object p2, p1, Lcom/google/ads/interactivemedia/v3/internal/da;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    :cond_4
    return v0

    :cond_5
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qn;->b:Lcom/google/ads/interactivemedia/v3/internal/qo;

    iget-wide v6, p1, Lcom/google/ads/interactivemedia/v3/internal/qo;->b:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_8

    if-ne p3, v3, :cond_6

    .line 10
    iget-wide v8, p2, Lcom/google/ads/interactivemedia/v3/internal/he;->d:J

    cmp-long p3, v8, v6

    if-gez p3, :cond_7

    const/4 p3, -0x4

    :cond_6
    if-ne p3, v1, :cond_8

    .line 11
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/qo;->d()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-nez p1, :cond_8

    iget-boolean p1, p2, Lcom/google/ads/interactivemedia/v3/internal/he;->c:Z

    if-eqz p1, :cond_7

    goto :goto_1

    .line 12
    :cond_7
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/gz;->a()V

    .line 13
    invoke-virtual {p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/gz;->a(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qn;->c:Z

    return v3

    :cond_8
    :goto_1
    return p3
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qn;->c:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qn;->b:Lcom/google/ads/interactivemedia/v3/internal/qo;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/qo;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qn;->a:Lcom/google/ads/interactivemedia/v3/internal/st;

    .line 1
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/st;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qn;->a:Lcom/google/ads/interactivemedia/v3/internal/st;

    .line 2
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/st;->c()V

    return-void
.end method
