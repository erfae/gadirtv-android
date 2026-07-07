.class public final Lcom/google/ads/interactivemedia/v3/internal/mp;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/me;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private b:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private c:Z

.field private d:J

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 v1, 0xa

    .line 1
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->c:Z

    return-void
.end method

.method public final a(JI)V
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    iput-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->c:Z

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->d:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->e:I

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->f:I

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/abr;)V
    .locals 7

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->b:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 2
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v0

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->f:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_3

    rsub-int/lit8 v1, v1, 0xa

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 5
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v4

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v5

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->f:I

    .line 7
    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->f:I

    add-int/2addr v3, v1

    if-ne v3, v2, :cond_3

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v3, 0x0

    .line 8
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 9
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v1

    const/16 v4, 0x49

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v1

    const/16 v4, 0x44

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 10
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->f()I

    move-result v1

    const/16 v4, 0x33

    if-eq v1, v4, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v3, 0x3

    .line 12
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->a:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 13
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->s()I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->e:I

    goto :goto_1

    :cond_2
    :goto_0
    const-string p1, "Id3Reader"

    const-string v0, "Discarding invalid ID3 tag"

    .line 11
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->c:Z

    return-void

    .line 13
    :cond_3
    :goto_1
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->e:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->f:I

    sub-int/2addr v1, v2

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->b:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 15
    invoke-interface {v1, p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->f:I

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/nl;)V
    .locals 2

    .line 16
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->a()V

    .line 17
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->b()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->b:Lcom/google/ads/interactivemedia/v3/internal/ix;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 18
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    .line 19
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(Ljava/lang/String;)V

    const-string p2, "application/id3"

    .line 20
    invoke-virtual {v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object p2

    .line 18
    invoke-interface {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    return-void
.end method

.method public final b()V
    .locals 8

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->b:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 22
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->c:Z

    if-eqz v0, :cond_1

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->e:I

    if-eqz v5, :cond_1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->f:I

    if-eq v0, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->b:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->d:J

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 23
    invoke-interface/range {v1 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mp;->c:Z

    :cond_1
    :goto_0
    return-void
.end method
