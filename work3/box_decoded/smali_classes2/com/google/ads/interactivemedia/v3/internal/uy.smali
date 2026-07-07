.class public final Lcom/google/ads/interactivemedia/v3/internal/uy;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ix;


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/uz;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/ss;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/da;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/he;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/uz;Lcom/google/ads/interactivemedia/v3/internal/zt;)V
    .locals 3

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uy;->a:Lcom/google/ads/interactivemedia/v3/internal/uz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/ss;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/uz;->a(Lcom/google/ads/interactivemedia/v3/internal/uz;)Landroid/os/Handler;

    move-result-object p1

    .line 1
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 2
    sget-object v1, Lcom/google/ads/interactivemedia/v3/internal/hq;->a:Lcom/google/ads/interactivemedia/v3/internal/hq;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/hn;

    .line 3
    invoke-direct {v2}, Lcom/google/ads/interactivemedia/v3/internal/hn;-><init>()V

    invoke-direct {v0, p2, p1, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ss;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zt;Landroid/os/Looper;Lcom/google/ads/interactivemedia/v3/internal/hq;Lcom/google/ads/interactivemedia/v3/internal/hn;)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uy;->b:Lcom/google/ads/interactivemedia/v3/internal/ss;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/da;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/da;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uy;->c:Lcom/google/ads/interactivemedia/v3/internal/da;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 4
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/he;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uy;->d:Lcom/google/ads/interactivemedia/v3/internal/he;

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

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uy;->b:Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 6
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a()V

    return-void
.end method

.method public final a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V
    .locals 7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uy;->b:Lcom/google/ads/interactivemedia/v3/internal/ss;

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 7
    invoke-virtual/range {v0 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uy;->b:Lcom/google/ads/interactivemedia/v3/internal/ss;

    const/4 p2, 0x0

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ss;->b(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uy;->d:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 9
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/gz;->a()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uy;->b:Lcom/google/ads/interactivemedia/v3/internal/ss;

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/uy;->c:Lcom/google/ads/interactivemedia/v3/internal/da;

    iget-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/uy;->d:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 10
    invoke-virtual {p1, p3, p4, p2, p2}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(Lcom/google/ads/interactivemedia/v3/internal/da;Lcom/google/ads/interactivemedia/v3/internal/he;ZZ)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uy;->d:Lcom/google/ads/interactivemedia/v3/internal/he;

    .line 11
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/he;->h()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uy;->d:Lcom/google/ads/interactivemedia/v3/internal/he;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_0

    iget-wide p3, p1, Lcom/google/ads/interactivemedia/v3/internal/he;->d:J

    iget-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/uy;->a:Lcom/google/ads/interactivemedia/v3/internal/uz;

    invoke-static {p5}, Lcom/google/ads/interactivemedia/v3/internal/uz;->b(Lcom/google/ads/interactivemedia/v3/internal/uz;)Lcom/google/ads/interactivemedia/v3/internal/ox;

    move-result-object p5

    .line 12
    invoke-virtual {p5, p1}, Lcom/google/ads/interactivemedia/v3/internal/ou;->a(Lcom/google/ads/interactivemedia/v3/internal/he;)Lcom/google/ads/interactivemedia/v3/internal/ot;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ot;->a(I)Lcom/google/ads/interactivemedia/v3/internal/os;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/ow;

    .line 14
    iget-object p5, p1, Lcom/google/ads/interactivemedia/v3/internal/ow;->a:Ljava/lang/String;

    iget-object p6, p1, Lcom/google/ads/interactivemedia/v3/internal/ow;->b:Ljava/lang/String;

    const-string v0, "urn:mpeg:dash:event:2012"

    .line 15
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    const/4 v0, 0x1

    if-eqz p5, :cond_3

    const-string p5, "1"

    .line 16
    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_2

    const-string p5, "2"

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_2

    const-string p5, "3"

    invoke-virtual {p5, p6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_3

    goto :goto_2

    :cond_2
    const/4 p2, 0x1

    :cond_3
    if-eqz p2, :cond_0

    :goto_2
    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    .line 17
    :try_start_0
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/ow;->e:[B

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a([B)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->g(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Lcom/google/ads/interactivemedia/v3/internal/dt; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-wide p1, p5

    :goto_3
    cmp-long v1, p1, p5

    if-eqz v1, :cond_0

    new-instance p5, Lcom/google/ads/interactivemedia/v3/internal/uw;

    .line 18
    invoke-direct {p5, p3, p4, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/uw;-><init>(JJ)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uy;->a:Lcom/google/ads/interactivemedia/v3/internal/uz;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/uz;->a(Lcom/google/ads/interactivemedia/v3/internal/uz;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/uy;->a:Lcom/google/ads/interactivemedia/v3/internal/uz;

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/uz;->a(Lcom/google/ads/interactivemedia/v3/internal/uz;)Landroid/os/Handler;

    move-result-object p2

    .line 19
    invoke-virtual {p2, v0, p5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_4
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/uy;->b:Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 20
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->n()V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/la;->a(Lcom/google/ads/interactivemedia/v3/internal/ix;Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uy;->b:Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    return-void
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/zl;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uy;->b:Lcom/google/ads/interactivemedia/v3/internal/ss;

    invoke-static {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/la;->a(Lcom/google/ads/interactivemedia/v3/internal/ix;Lcom/google/ads/interactivemedia/v3/internal/zl;IZ)I

    move-result p1

    return p1
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/uy;->b:Lcom/google/ads/interactivemedia/v3/internal/ss;

    invoke-static {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/la;->a(Lcom/google/ads/interactivemedia/v3/internal/ix;Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    return-void
.end method
