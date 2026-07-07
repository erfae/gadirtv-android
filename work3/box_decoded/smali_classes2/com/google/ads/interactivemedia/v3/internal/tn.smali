.class public final Lcom/google/ads/interactivemedia/v3/internal/tn;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/st;


# instance fields
.field public final a:Lcom/google/ads/interactivemedia/v3/internal/tp;

.field final synthetic b:Lcom/google/ads/interactivemedia/v3/internal/tp;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/ss;

.field private final d:I

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/tp;Lcom/google/ads/interactivemedia/v3/internal/tp;Lcom/google/ads/interactivemedia/v3/internal/ss;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->b:Lcom/google/ads/interactivemedia/v3/internal/tp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->a:Lcom/google/ads/interactivemedia/v3/internal/tp;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->c:Lcom/google/ads/interactivemedia/v3/internal/ss;

    iput p4, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->d:I

    return-void
.end method

.method private final d()V
    .locals 8

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->b:Lcom/google/ads/interactivemedia/v3/internal/tp;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->f(Lcom/google/ads/interactivemedia/v3/internal/tp;)Lcom/google/ads/interactivemedia/v3/internal/ry;

    move-result-object v1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->b:Lcom/google/ads/interactivemedia/v3/internal/tp;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->c(Lcom/google/ads/interactivemedia/v3/internal/tp;)[I

    move-result-object v0

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->d:I

    .line 2
    aget v2, v0, v2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->b:Lcom/google/ads/interactivemedia/v3/internal/tp;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->d(Lcom/google/ads/interactivemedia/v3/internal/tp;)[Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v0

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->d:I

    .line 3
    aget-object v3, v0, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->b:Lcom/google/ads/interactivemedia/v3/internal/tp;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->e(Lcom/google/ads/interactivemedia/v3/internal/tp;)J

    move-result-wide v6

    .line 4
    invoke-virtual/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(ILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->e:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->b:Lcom/google/ads/interactivemedia/v3/internal/tp;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->c:Lcom/google/ads/interactivemedia/v3/internal/ss;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->b:Lcom/google/ads/interactivemedia/v3/internal/tp;

    iget-boolean v1, v1, Lcom/google/ads/interactivemedia/v3/internal/tp;->b:Z

    .line 11
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->b(JZ)I

    move-result p1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->b:Lcom/google/ads/interactivemedia/v3/internal/tp;

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/tp;->a(Lcom/google/ads/interactivemedia/v3/internal/tp;)Lcom/google/ads/interactivemedia/v3/internal/tg;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->b:Lcom/google/ads/interactivemedia/v3/internal/tp;

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/tp;->a(Lcom/google/ads/interactivemedia/v3/internal/tp;)Lcom/google/ads/interactivemedia/v3/internal/tg;

    move-result-object p2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->d:I

    add-int/lit8 v0, v0, 0x1

    .line 12
    invoke-virtual {p2, v0}, Lcom/google/ads/interactivemedia/v3/internal/tg;->a(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->c:Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 13
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->h()I

    move-result v0

    sub-int/2addr p2, v0

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_1
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->c:Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 15
    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->d(I)V

    if-lez p1, :cond_2

    .line 16
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/tn;->d()V

    :cond_2
    return p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/da;Lcom/google/ads/interactivemedia/v3/internal/he;Z)I
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->b:Lcom/google/ads/interactivemedia/v3/internal/tp;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->g()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->b:Lcom/google/ads/interactivemedia/v3/internal/tp;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->a(Lcom/google/ads/interactivemedia/v3/internal/tp;)Lcom/google/ads/interactivemedia/v3/internal/tg;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->b:Lcom/google/ads/interactivemedia/v3/internal/tp;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->a(Lcom/google/ads/interactivemedia/v3/internal/tp;)Lcom/google/ads/interactivemedia/v3/internal/tg;

    move-result-object v0

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->d:I

    add-int/lit8 v2, v2, 0x1

    .line 5
    invoke-virtual {v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/tg;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->c:Lcom/google/ads/interactivemedia/v3/internal/ss;

    .line 6
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/ss;->h()I

    move-result v2

    if-gt v0, v2, :cond_1

    return v1

    .line 7
    :cond_1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/tn;->d()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->c:Lcom/google/ads/interactivemedia/v3/internal/ss;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->b:Lcom/google/ads/interactivemedia/v3/internal/tp;

    iget-boolean v1, v1, Lcom/google/ads/interactivemedia/v3/internal/tp;->b:Z

    .line 8
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(Lcom/google/ads/interactivemedia/v3/internal/da;Lcom/google/ads/interactivemedia/v3/internal/he;ZZ)I

    move-result p1

    return p1
.end method

.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->b:Lcom/google/ads/interactivemedia/v3/internal/tp;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->b(Lcom/google/ads/interactivemedia/v3/internal/tp;)[Z

    move-result-object v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->d:I

    .line 9
    aget-boolean v0, v0, v1

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->b:Lcom/google/ads/interactivemedia/v3/internal/tp;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->b(Lcom/google/ads/interactivemedia/v3/internal/tp;)[Z

    move-result-object v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->d:I

    const/4 v2, 0x0

    .line 10
    aput-boolean v2, v0, v1

    return-void
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->b:Lcom/google/ads/interactivemedia/v3/internal/tp;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/tp;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->c:Lcom/google/ads/interactivemedia/v3/internal/ss;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/tn;->b:Lcom/google/ads/interactivemedia/v3/internal/tp;

    iget-boolean v1, v1, Lcom/google/ads/interactivemedia/v3/internal/tp;->b:Z

    .line 1
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 0

    return-void
.end method
