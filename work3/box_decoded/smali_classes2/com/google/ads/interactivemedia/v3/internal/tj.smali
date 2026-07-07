.class final Lcom/google/ads/interactivemedia/v3/internal/tj;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ix;


# instance fields
.field public a:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private final b:I

.field private final c:I

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/ig;

.field private f:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private g:J


# direct methods
.method public constructor <init>(IILcom/google/ads/interactivemedia/v3/internal/cz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tj;->b:I

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tj;->c:I

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/tj;->d:Lcom/google/ads/interactivemedia/v3/internal/cz;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ig;

    .line 1
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/ig;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tj;->e:Lcom/google/ads/interactivemedia/v3/internal/ig;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/zl;IZ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/la;->a(Lcom/google/ads/interactivemedia/v3/internal/ix;Lcom/google/ads/interactivemedia/v3/internal/zl;IZ)I

    move-result p1

    return p1
.end method

.method public final a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V
    .locals 8

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tj;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tj;->e:Lcom/google/ads/interactivemedia/v3/internal/ig;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tj;->f:Lcom/google/ads/interactivemedia/v3/internal/ix;

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tj;->f:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 8
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/la;->a(Lcom/google/ads/interactivemedia/v3/internal/ix;Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tj;->d:Lcom/google/ads/interactivemedia/v3/internal/cz;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tj;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tj;->f:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 5
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tj;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    invoke-interface {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ti;J)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tj;->e:Lcom/google/ads/interactivemedia/v3/internal/ig;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tj;->f:Lcom/google/ads/interactivemedia/v3/internal/ix;

    return-void

    :cond_0
    iput-wide p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tj;->g:J

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tj;->c:I

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ti;->a(I)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tj;->f:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tj;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    :cond_1
    return-void
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/zl;IZ)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tj;->f:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 6
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-interface {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/zl;IZ)I

    move-result p1

    return p1
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tj;->f:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 7
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    invoke-interface {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    return-void
.end method
