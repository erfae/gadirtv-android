.class public final Lcom/google/ads/interactivemedia/v3/internal/mt;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/mz;


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private b:Lcom/google/ads/interactivemedia/v3/internal/acf;

.field private c:Lcom/google/ads/interactivemedia/v3/internal/ix;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 1
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mt;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/abr;)V
    .locals 9

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mt;->b:Lcom/google/ads/interactivemedia/v3/internal/acf;

    .line 2
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget v0, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mt;->b:Lcom/google/ads/interactivemedia/v3/internal/acf;

    .line 4
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/acf;->c()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/mt;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 5
    iget-wide v3, v2, Lcom/google/ads/interactivemedia/v3/internal/cz;->p:J

    cmp-long v5, v0, v3

    if-eqz v5, :cond_1

    .line 6
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a()Lcom/google/ads/interactivemedia/v3/internal/cy;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(J)V

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mt;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mt;->c:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 7
    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mt;->c:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 8
    invoke-interface {v0, p1, v6}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/mt;->c:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mt;->b:Lcom/google/ads/interactivemedia/v3/internal/acf;

    .line 9
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/acf;->b()J

    move-result-wide v3

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 10
    invoke-interface/range {v2 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/acf;Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/nl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mt;->b:Lcom/google/ads/interactivemedia/v3/internal/acf;

    .line 11
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/nl;->a()V

    .line 12
    invoke-virtual {p3}, Lcom/google/ads/interactivemedia/v3/internal/nl;->b()I

    move-result p1

    const/4 p3, 0x4

    invoke-interface {p2, p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mt;->c:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/mt;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 13
    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    return-void
.end method
