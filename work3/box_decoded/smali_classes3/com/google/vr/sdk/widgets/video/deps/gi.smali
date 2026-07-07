.class final Lcom/google/vr/sdk/widgets/video/deps/gi;
.super Ljava/lang/Object;
.source "WavHeader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/da;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:J

.field private h:J


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->a:I

    .line 3
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->b:I

    .line 4
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->c:I

    .line 5
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->d:I

    .line 6
    iput p5, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->e:I

    .line 7
    iput p6, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->f:I

    return-void
.end method


# virtual methods
.method public a(J)Lcom/google/vr/sdk/widgets/video/deps/da$a;
    .locals 11

    .line 17
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->c:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 18
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->d:I

    int-to-long v3, v2

    div-long/2addr v0, v3

    int-to-long v3, v2

    mul-long v5, v0, v3

    .line 19
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->h:J

    int-to-long v2, v2

    sub-long v9, v0, v2

    const-wide/16 v7, 0x0

    invoke-static/range {v5 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(JJJ)J

    move-result-wide v0

    .line 20
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->g:J

    add-long/2addr v2, v0

    .line 21
    invoke-virtual {p0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gi;->b(J)J

    move-result-wide v4

    .line 22
    new-instance v6, Lcom/google/vr/sdk/widgets/video/deps/db;

    invoke-direct {v6, v4, v5, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/db;-><init>(JJ)V

    cmp-long v7, v4, p1

    if-gez v7, :cond_1

    .line 23
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->h:J

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->d:I

    int-to-long v7, v4

    sub-long/2addr p1, v7

    cmp-long v5, v0, p1

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    int-to-long p1, v4

    add-long/2addr v2, p1

    .line 26
    invoke-virtual {p0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gi;->b(J)J

    move-result-wide p1

    .line 27
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/db;

    invoke-direct {v0, p1, p2, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/db;-><init>(JJ)V

    .line 28
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;

    invoke-direct {p1, v6, v0}, Lcom/google/vr/sdk/widgets/video/deps/da$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/db;Lcom/google/vr/sdk/widgets/video/deps/db;)V

    return-object p1

    .line 24
    :cond_1
    :goto_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/da$a;

    invoke-direct {p1, v6}, Lcom/google/vr/sdk/widgets/video/deps/da$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/db;)V

    return-object p1
.end method

.method public a(JJ)V
    .locals 0

    .line 9
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->g:J

    .line 10
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->h:J

    return-void
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b()J
    .locals 4

    .line 15
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->h:J

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->d:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    .line 16
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->b:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public b(J)J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->g:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 30
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->c:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public c()J
    .locals 4

    .line 12
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gi;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->g:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->h:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public d()Z
    .locals 5

    .line 13
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->h:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->d:I

    return v0
.end method

.method public f()I
    .locals 2

    .line 32
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->b:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->e:I

    mul-int v0, v0, v1

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->a:I

    mul-int v0, v0, v1

    return v0
.end method

.method public g()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->b:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->a:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gi;->f:I

    return v0
.end method
