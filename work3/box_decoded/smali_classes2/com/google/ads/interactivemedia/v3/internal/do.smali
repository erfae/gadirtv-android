.class final Lcom/google/ads/interactivemedia/v3/internal/do;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/rz;
.implements Lcom/google/ads/interactivemedia/v3/internal/ho;


# instance fields
.field final synthetic a:Lcom/google/ads/interactivemedia/v3/internal/ds;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/dq;

.field private c:Lcom/google/ads/interactivemedia/v3/internal/ry;

.field private d:Lcom/google/ads/interactivemedia/v3/internal/hn;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/ds;Lcom/google/ads/interactivemedia/v3/internal/dq;)V
    .locals 1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->a:Lcom/google/ads/interactivemedia/v3/internal/ds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ds;->a(Lcom/google/ads/interactivemedia/v3/internal/ds;)Lcom/google/ads/interactivemedia/v3/internal/ry;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->c:Lcom/google/ads/interactivemedia/v3/internal/ry;

    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ds;->b(Lcom/google/ads/interactivemedia/v3/internal/ds;)Lcom/google/ads/interactivemedia/v3/internal/hn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->d:Lcom/google/ads/interactivemedia/v3/internal/hn;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->b:Lcom/google/ads/interactivemedia/v3/internal/dq;

    return-void
.end method

.method private final a(ILcom/google/ads/interactivemedia/v3/internal/ro;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->b:Lcom/google/ads/interactivemedia/v3/internal/dq;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1
    :goto_0
    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/dq;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 2
    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/dq;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/ads/interactivemedia/v3/internal/ro;

    iget-wide v4, v4, Lcom/google/ads/interactivemedia/v3/internal/ro;->d:J

    iget-wide v6, p2, Lcom/google/ads/interactivemedia/v3/internal/ro;->d:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    iget-object v0, p2, Lcom/google/ads/interactivemedia/v3/internal/ro;->a:Ljava/lang/Object;

    .line 3
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/dq;->b:Ljava/lang/Object;

    .line 4
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 5
    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/ro;->a(Ljava/lang/Object;)Lcom/google/ads/interactivemedia/v3/internal/ro;

    move-result-object p2

    move-object v0, p2

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->b:Lcom/google/ads/interactivemedia/v3/internal/dq;

    .line 6
    iget p2, p2, Lcom/google/ads/interactivemedia/v3/internal/dq;->d:I

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->c:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 7
    iget v1, p2, Lcom/google/ads/interactivemedia/v3/internal/ry;->a:I

    if-ne v1, p1, :cond_4

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/ry;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 8
    invoke-static {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :cond_4
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->a:Lcom/google/ads/interactivemedia/v3/internal/ds;

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/ds;->a(Lcom/google/ads/interactivemedia/v3/internal/ds;)Lcom/google/ads/interactivemedia/v3/internal/ry;

    move-result-object p2

    const-wide/16 v1, 0x0

    .line 9
    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(ILcom/google/ads/interactivemedia/v3/internal/ro;J)Lcom/google/ads/interactivemedia/v3/internal/ry;

    move-result-object p2

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->c:Lcom/google/ads/interactivemedia/v3/internal/ry;

    :cond_5
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->d:Lcom/google/ads/interactivemedia/v3/internal/hn;

    .line 10
    iget v1, p2, Lcom/google/ads/interactivemedia/v3/internal/hn;->a:I

    if-ne v1, p1, :cond_6

    iget-object p2, p2, Lcom/google/ads/interactivemedia/v3/internal/hn;->b:Lcom/google/ads/interactivemedia/v3/internal/ro;

    .line 11
    invoke-static {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    :cond_6
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->a:Lcom/google/ads/interactivemedia/v3/internal/ds;

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/ds;->b(Lcom/google/ads/interactivemedia/v3/internal/ds;)Lcom/google/ads/interactivemedia/v3/internal/hn;

    move-result-object p2

    .line 12
    invoke-virtual {p2, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/hn;->a(ILcom/google/ads/interactivemedia/v3/internal/ro;)Lcom/google/ads/interactivemedia/v3/internal/hn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->d:Lcom/google/ads/interactivemedia/v3/internal/hn;

    :cond_7
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final a(ILcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/do;->a(ILcom/google/ads/interactivemedia/v3/internal/ro;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->c:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 22
    invoke-virtual {p1, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;)V

    :cond_0
    return-void
.end method

.method public final a(ILcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;Ljava/io/IOException;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/do;->a(ILcom/google/ads/interactivemedia/v3/internal/ro;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->c:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 20
    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;Ljava/io/IOException;Z)V

    :cond_0
    return-void
.end method

.method public final a(ILcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/rl;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/do;->a(ILcom/google/ads/interactivemedia/v3/internal/ro;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->c:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 24
    invoke-virtual {p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Lcom/google/ads/interactivemedia/v3/internal/rl;)V

    :cond_0
    return-void
.end method

.method public final b(ILcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/do;->a(ILcom/google/ads/interactivemedia/v3/internal/ro;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->c:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 18
    invoke-virtual {p1, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/ry;->b(Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;)V

    :cond_0
    return-void
.end method

.method public final b(ILcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/rl;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/do;->a(ILcom/google/ads/interactivemedia/v3/internal/ro;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->c:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 14
    invoke-virtual {p1, p3}, Lcom/google/ads/interactivemedia/v3/internal/ry;->b(Lcom/google/ads/interactivemedia/v3/internal/rl;)V

    :cond_0
    return-void
.end method

.method public final c(ILcom/google/ads/interactivemedia/v3/internal/ro;Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/do;->a(ILcom/google/ads/interactivemedia/v3/internal/ro;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/do;->c:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 16
    invoke-virtual {p1, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/ry;->c(Lcom/google/ads/interactivemedia/v3/internal/rg;Lcom/google/ads/interactivemedia/v3/internal/rl;)V

    :cond_0
    return-void
.end method
