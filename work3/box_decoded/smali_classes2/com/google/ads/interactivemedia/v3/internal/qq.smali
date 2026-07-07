.class final Lcom/google/ads/interactivemedia/v3/internal/qq;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/rz;
.implements Lcom/google/ads/interactivemedia/v3/internal/ho;


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/qs;

.field private final b:Ljava/lang/Object;

.field private c:Lcom/google/ads/interactivemedia/v3/internal/ry;

.field private d:Lcom/google/ads/interactivemedia/v3/internal/hn;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/qs;Ljava/lang/Object;)V
    .locals 2

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qq;->a:Lcom/google/ads/interactivemedia/v3/internal/qs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/qk;->a(Lcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/ry;

    move-result-object v1

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/qq;->c:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/qk;->b(Lcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/hn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qq;->d:Lcom/google/ads/interactivemedia/v3/internal/hn;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/qq;->b:Ljava/lang/Object;

    return-void
.end method

.method private static final a(Lcom/google/ads/interactivemedia/v3/internal/rl;)Lcom/google/ads/interactivemedia/v3/internal/rl;
    .locals 2

    .line 11
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rl;->f:J

    .line 12
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/rl;->g:J

    return-object p0
.end method

.method private final a(ILcom/google/ads/interactivemedia/v3/internal/ro;)Z
    .locals 2

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qq;->a:Lcom/google/ads/interactivemedia/v3/internal/qs;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/qq;->b:Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/qs;->a(Ljava/lang/Object;Lcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/ro;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qq;->a:Lcom/google/ads/interactivemedia/v3/internal/qs;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/qq;->b:Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/qs;->a(Ljava/lang/Object;I)I

    move-result p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qq;->c:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 5
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/ry;->a:I

    if-ne v1, p1, :cond_2

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/ry;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 6
    invoke-static {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qq;->a:Lcom/google/ads/interactivemedia/v3/internal/qs;

    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/qk;->b(ILcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/ry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qq;->c:Lcom/google/ads/interactivemedia/v3/internal/ry;

    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qq;->d:Lcom/google/ads/interactivemedia/v3/internal/hn;

    .line 8
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/hn;->a:I

    if-ne v1, p1, :cond_4

    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/hn;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 9
    invoke-static {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/qq;->a:Lcom/google/ads/interactivemedia/v3/internal/qs;

    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/qk;->a(ILcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/hn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qq;->d:Lcom/google/ads/interactivemedia/v3/internal/hn;

    :cond_5
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final a(ILcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/qq;->a(ILcom/google/ads/interactivemedia/v3/internal/ro;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qq;->c:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 25
    invoke-static {p4}, Lcom/google/ads/interactivemedia/v3/internal/qq;->a(Lcom/google/ads/interactivemedia/v3/internal/rl;)Lcom/google/ads/interactivemedia/v3/internal/rl;

    move-result-object p2

    .line 26
    invoke-virtual {p1, p3, p2}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;)V

    :cond_0
    return-void
.end method

.method public final a(ILcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;Ljava/io/IOException;Z)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/qq;->a(ILcom/google/ads/interactivemedia/v3/internal/ro;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qq;->c:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 22
    invoke-static {p4}, Lcom/google/ads/interactivemedia/v3/internal/qq;->a(Lcom/google/ads/interactivemedia/v3/internal/rl;)Lcom/google/ads/interactivemedia/v3/internal/rl;

    move-result-object p2

    .line 23
    invoke-virtual {p1, p3, p2, p5, p6}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public final a(ILcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/rl;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/qq;->a(ILcom/google/ads/interactivemedia/v3/internal/ro;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qq;->c:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 28
    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/internal/qq;->a(Lcom/google/ads/interactivemedia/v3/internal/rl;)Lcom/google/ads/interactivemedia/v3/internal/rl;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Lcom/google/ads/interactivemedia/v3/internal/rl;)V

    :cond_0
    return-void
.end method

.method public final b(ILcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/qq;->a(ILcom/google/ads/interactivemedia/v3/internal/ro;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qq;->c:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 19
    invoke-static {p4}, Lcom/google/ads/interactivemedia/v3/internal/qq;->a(Lcom/google/ads/interactivemedia/v3/internal/rl;)Lcom/google/ads/interactivemedia/v3/internal/rl;

    move-result-object p2

    .line 20
    invoke-virtual {p1, p3, p2}, Lcom/google/ads/interactivemedia/v3/internal/ry;->b(Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;)V

    :cond_0
    return-void
.end method

.method public final b(ILcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/rl;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/qq;->a(ILcom/google/ads/interactivemedia/v3/internal/ro;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qq;->c:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 14
    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/internal/qq;->a(Lcom/google/ads/interactivemedia/v3/internal/rl;)Lcom/google/ads/interactivemedia/v3/internal/rl;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ry;->b(Lcom/google/ads/interactivemedia/v3/internal/rl;)V

    :cond_0
    return-void
.end method

.method public final c(ILcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/qq;->a(ILcom/google/ads/interactivemedia/v3/internal/ro;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/qq;->c:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 16
    invoke-static {p4}, Lcom/google/ads/interactivemedia/v3/internal/qq;->a(Lcom/google/ads/interactivemedia/v3/internal/rl;)Lcom/google/ads/interactivemedia/v3/internal/rl;

    move-result-object p2

    .line 17
    invoke-virtual {p1, p3, p2}, Lcom/google/ads/interactivemedia/v3/internal/ry;->c(Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;)V

    :cond_0
    return-void
.end method
