.class final Lcom/google/ads/interactivemedia/v3/internal/sp;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:I

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/abr;

.field private c:Lcom/google/ads/interactivemedia/v3/internal/so;

.field private d:Lcom/google/ads/interactivemedia/v3/internal/so;

.field private e:Lcom/google/ads/interactivemedia/v3/internal/so;

.field private f:J

.field private final g:Lcom/google/ads/interactivemedia/v3/internal/zt;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zt;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->g:Lcom/google/ads/interactivemedia/v3/internal/zt;

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zt;->e()I

    move-result p1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->a:I

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 v1, 0x20

    .line 2
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/so;

    const-wide/16 v1, 0x0

    .line 3
    invoke-direct {v0, v1, v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/so;-><init>(JI)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->c:Lcom/google/ads/interactivemedia/v3/internal/so;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->d:Lcom/google/ads/interactivemedia/v3/internal/so;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->e:Lcom/google/ads/interactivemedia/v3/internal/so;

    return-void
.end method

.method private final a(I)I
    .locals 6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->e:Lcom/google/ads/interactivemedia/v3/internal/so;

    .line 29
    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->c:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->g:Lcom/google/ads/interactivemedia/v3/internal/zt;

    .line 30
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/zt;->b()Lcom/google/ads/interactivemedia/v3/internal/za;

    move-result-object v1

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/so;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->e:Lcom/google/ads/interactivemedia/v3/internal/so;

    iget-wide v3, v3, Lcom/google/ads/interactivemedia/v3/internal/so;->b:J

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->a:I

    invoke-direct {v2, v3, v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/so;-><init>(JI)V

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->d:Lcom/google/ads/interactivemedia/v3/internal/za;

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->e:Lcom/google/ads/interactivemedia/v3/internal/so;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->c:Z

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->e:Lcom/google/ads/interactivemedia/v3/internal/so;

    .line 31
    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->b:J

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->f:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private final a(JLjava/nio/ByteBuffer;I)V
    .locals 4

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/sp;->c(J)V

    :cond_0
    :goto_0
    if-lez p4, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->d:Lcom/google/ads/interactivemedia/v3/internal/so;

    .line 33
    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->b:J

    sub-long/2addr v0, p1

    long-to-int v1, v0

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->d:Lcom/google/ads/interactivemedia/v3/internal/so;

    .line 34
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/so;->d:Lcom/google/ads/interactivemedia/v3/internal/za;

    .line 35
    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/za;->a:[B

    invoke-virtual {v1, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/so;->a(J)I

    move-result v1

    invoke-virtual {p3, v2, v1, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->d:Lcom/google/ads/interactivemedia/v3/internal/so;

    .line 36
    iget-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->b:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 37
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->e:Lcom/google/ads/interactivemedia/v3/internal/so;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->d:Lcom/google/ads/interactivemedia/v3/internal/so;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final a(J[BI)V
    .locals 5

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/sp;->c(J)V

    move v0, p4

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->d:Lcom/google/ads/interactivemedia/v3/internal/so;

    .line 39
    iget-wide v1, v1, Lcom/google/ads/interactivemedia/v3/internal/so;->b:J

    sub-long/2addr v1, p1

    long-to-int v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->d:Lcom/google/ads/interactivemedia/v3/internal/so;

    .line 40
    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/so;->d:Lcom/google/ads/interactivemedia/v3/internal/za;

    .line 41
    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/za;->a:[B

    .line 42
    invoke-virtual {v2, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/so;->a(J)I

    move-result v2

    sub-int v4, p4, v0

    .line 41
    invoke-static {v3, v2, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->d:Lcom/google/ads/interactivemedia/v3/internal/so;

    .line 43
    iget-wide v2, v1, Lcom/google/ads/interactivemedia/v3/internal/so;->b:J

    cmp-long v4, p1, v2

    if-nez v4, :cond_0

    .line 44
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/so;->e:Lcom/google/ads/interactivemedia/v3/internal/so;

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->d:Lcom/google/ads/interactivemedia/v3/internal/so;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/so;)V
    .locals 6

    .line 6
    iget-boolean v0, p1, Lcom/google/ads/interactivemedia/v3/internal/so;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->e:Lcom/google/ads/interactivemedia/v3/internal/so;

    .line 7
    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->c:Z

    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->a:J

    iget-wide v4, p1, Lcom/google/ads/interactivemedia/v3/internal/so;->a:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->a:I

    div-int/2addr v0, v2

    add-int/2addr v1, v0

    .line 8
    new-array v0, v1, [Lcom/google/ads/interactivemedia/v3/internal/za;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    iget-object v3, p1, Lcom/google/ads/interactivemedia/v3/internal/so;->d:Lcom/google/ads/interactivemedia/v3/internal/za;

    aput-object v3, v0, v2

    .line 10
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/so;->a()Lcom/google/ads/interactivemedia/v3/internal/so;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->g:Lcom/google/ads/interactivemedia/v3/internal/zt;

    .line 11
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zt;->a([Lcom/google/ads/interactivemedia/v3/internal/za;)V

    return-void
.end method

.method private final b(I)V
    .locals 5

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->f:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->f:J

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->e:Lcom/google/ads/interactivemedia/v3/internal/so;

    .line 27
    iget-wide v2, p1, Lcom/google/ads/interactivemedia/v3/internal/so;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 28
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/so;->e:Lcom/google/ads/interactivemedia/v3/internal/so;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->e:Lcom/google/ads/interactivemedia/v3/internal/so;

    :cond_0
    return-void
.end method

.method private final c(J)V
    .locals 4

    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->d:Lcom/google/ads/interactivemedia/v3/internal/so;

    .line 4
    iget-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->b:J

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    .line 5
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->e:Lcom/google/ads/interactivemedia/v3/internal/so;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->d:Lcom/google/ads/interactivemedia/v3/internal/so;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/zl;IZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/sp;->a(I)I

    move-result p2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->e:Lcom/google/ads/interactivemedia/v3/internal/so;

    .line 83
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->d:Lcom/google/ads/interactivemedia/v3/internal/za;

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/za;->a:[B

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->f:J

    .line 84
    invoke-virtual {v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/so;->a(J)I

    move-result v0

    .line 85
    invoke-interface {p1, v1, v0, p2}, Lcom/google/ads/interactivemedia/v3/internal/zl;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    .line 86
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 87
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/sp;->b(I)V

    return p1
.end method

.method public final a()V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->c:Lcom/google/ads/interactivemedia/v3/internal/so;

    .line 79
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/sp;->a(Lcom/google/ads/interactivemedia/v3/internal/so;)V

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/so;

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->a:I

    const-wide/16 v2, 0x0

    .line 80
    invoke-direct {v0, v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/so;-><init>(JI)V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->c:Lcom/google/ads/interactivemedia/v3/internal/so;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->d:Lcom/google/ads/interactivemedia/v3/internal/so;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->e:Lcom/google/ads/interactivemedia/v3/internal/so;

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->f:J

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->g:Lcom/google/ads/interactivemedia/v3/internal/zt;

    .line 81
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zt;->c()V

    return-void
.end method

.method public final a(J)V
    .locals 5

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->f:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->c:Lcom/google/ads/interactivemedia/v3/internal/so;

    .line 16
    iget-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->a:J

    cmp-long v3, p1, v1

    if-eqz v3, :cond_3

    :goto_0
    iget-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->f:J

    .line 17
    iget-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->b:J

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    .line 18
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->e:Lcom/google/ads/interactivemedia/v3/internal/so;

    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->e:Lcom/google/ads/interactivemedia/v3/internal/so;

    .line 20
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/sp;->a(Lcom/google/ads/interactivemedia/v3/internal/so;)V

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/so;

    .line 21
    iget-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->b:J

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->a:I

    invoke-direct {p2, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/so;-><init>(JI)V

    iput-object p2, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->e:Lcom/google/ads/interactivemedia/v3/internal/so;

    iget-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->f:J

    .line 22
    iget-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->b:J

    cmp-long p2, v1, v3

    if-nez p2, :cond_1

    .line 23
    iget-object p2, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->e:Lcom/google/ads/interactivemedia/v3/internal/so;

    goto :goto_1

    :cond_1
    move-object p2, v0

    :goto_1
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->e:Lcom/google/ads/interactivemedia/v3/internal/so;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->d:Lcom/google/ads/interactivemedia/v3/internal/so;

    if-ne p2, p1, :cond_2

    .line 24
    iget-object p1, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->e:Lcom/google/ads/interactivemedia/v3/internal/so;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->d:Lcom/google/ads/interactivemedia/v3/internal/so;

    :cond_2
    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->c:Lcom/google/ads/interactivemedia/v3/internal/so;

    .line 25
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/sp;->a(Lcom/google/ads/interactivemedia/v3/internal/so;)V

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/so;

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->f:J

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->a:I

    .line 26
    invoke-direct {p1, v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/so;-><init>(JI)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->c:Lcom/google/ads/interactivemedia/v3/internal/so;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->d:Lcom/google/ads/interactivemedia/v3/internal/so;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->e:Lcom/google/ads/interactivemedia/v3/internal/so;

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V
    .locals 5

    :goto_0
    if-lez p2, :cond_0

    .line 88
    invoke-direct {p0, p2}, Lcom/google/ads/interactivemedia/v3/internal/sp;->a(I)I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->e:Lcom/google/ads/interactivemedia/v3/internal/so;

    .line 89
    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/so;->d:Lcom/google/ads/interactivemedia/v3/internal/za;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/za;->a:[B

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->f:J

    .line 90
    invoke-virtual {v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/so;->a(J)I

    move-result v1

    .line 89
    invoke-virtual {p1, v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BII)V

    sub-int/2addr p2, v0

    .line 91
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/sp;->b(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/he;Lcom/google/ads/interactivemedia/v3/internal/sq;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/he;->g()Z

    move-result v3

    if-eqz v3, :cond_8

    iget-wide v3, v2, Lcom/google/ads/interactivemedia/v3/internal/sq;->b:J

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/sp;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v6, 0x1

    .line 46
    invoke-virtual {v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/sp;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v5

    .line 47
    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/sp;->a(J[BI)V

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/sp;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v5

    const/4 v7, 0x0

    .line 48
    aget-byte v5, v5, v7

    and-int/lit16 v8, v5, 0x80

    and-int/lit8 v5, v5, 0x7f

    .line 49
    iget-object v9, v1, Lcom/google/ads/interactivemedia/v3/internal/he;->a:Lcom/google/ads/interactivemedia/v3/internal/hb;

    .line 50
    iget-object v10, v9, Lcom/google/ads/interactivemedia/v3/internal/hb;->a:[B

    if-nez v10, :cond_0

    const/16 v10, 0x10

    new-array v10, v10, [B

    iput-object v10, v9, Lcom/google/ads/interactivemedia/v3/internal/hb;->a:[B

    goto :goto_0

    .line 51
    :cond_0
    invoke-static {v10, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 52
    :goto_0
    iget-object v10, v9, Lcom/google/ads/interactivemedia/v3/internal/hb;->a:[B

    invoke-direct {v0, v3, v4, v10, v5}, Lcom/google/ads/interactivemedia/v3/internal/sp;->a(J[BI)V

    int-to-long v10, v5

    add-long/2addr v3, v10

    if-eqz v8, :cond_1

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/sp;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v6, 0x2

    .line 53
    invoke-virtual {v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/sp;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v5

    .line 54
    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/sp;->a(J[BI)V

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/sp;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 55
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->g()I

    move-result v6

    move v10, v6

    goto :goto_1

    :cond_1
    const/4 v10, 0x1

    .line 56
    :goto_1
    iget-object v5, v9, Lcom/google/ads/interactivemedia/v3/internal/hb;->b:[I

    if-eqz v5, :cond_2

    array-length v6, v5

    if-ge v6, v10, :cond_3

    :cond_2
    new-array v5, v10, [I

    :cond_3
    move-object v11, v5

    .line 57
    iget-object v5, v9, Lcom/google/ads/interactivemedia/v3/internal/hb;->c:[I

    if-eqz v5, :cond_4

    array-length v6, v5

    if-ge v6, v10, :cond_5

    :cond_4
    new-array v5, v10, [I

    :cond_5
    move-object v12, v5

    if-eqz v8, :cond_6

    mul-int/lit8 v5, v10, 0x6

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/sp;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 58
    invoke-virtual {v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/sp;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v6}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v6

    .line 59
    invoke-direct {v0, v3, v4, v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/sp;->a(J[BI)V

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/sp;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 60
    invoke-virtual {v5, v7}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c(I)V

    :goto_2
    if-ge v7, v10, :cond_7

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/sp;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 61
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->g()I

    move-result v5

    aput v5, v11, v7

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/sp;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 62
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;->t()I

    move-result v5

    aput v5, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 63
    :cond_6
    aput v7, v11, v7

    iget v5, v2, Lcom/google/ads/interactivemedia/v3/internal/sq;->a:I

    iget-wide v13, v2, Lcom/google/ads/interactivemedia/v3/internal/sq;->b:J

    sub-long v13, v3, v13

    long-to-int v6, v13

    sub-int/2addr v5, v6

    .line 64
    aput v5, v12, v7

    .line 62
    :cond_7
    iget-object v5, v2, Lcom/google/ads/interactivemedia/v3/internal/sq;->c:Lcom/google/ads/interactivemedia/v3/internal/iw;

    .line 65
    sget v6, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    .line 66
    iget-object v13, v5, Lcom/google/ads/interactivemedia/v3/internal/iw;->b:[B

    iget-object v14, v9, Lcom/google/ads/interactivemedia/v3/internal/hb;->a:[B

    iget v15, v5, Lcom/google/ads/interactivemedia/v3/internal/iw;->a:I

    iget v6, v5, Lcom/google/ads/interactivemedia/v3/internal/iw;->c:I

    iget v5, v5, Lcom/google/ads/interactivemedia/v3/internal/iw;->d:I

    move/from16 v16, v6

    move/from16 v17, v5

    invoke-virtual/range {v9 .. v17}, Lcom/google/ads/interactivemedia/v3/internal/hb;->a(I[I[I[B[BIII)V

    iget-wide v5, v2, Lcom/google/ads/interactivemedia/v3/internal/sq;->b:J

    sub-long/2addr v3, v5

    long-to-int v4, v3

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, v2, Lcom/google/ads/interactivemedia/v3/internal/sq;->b:J

    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/sq;->a:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/google/ads/interactivemedia/v3/internal/sq;->a:I

    .line 67
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/gz;->e()Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/sp;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v4, 0x4

    .line 68
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a(I)V

    iget-wide v5, v2, Lcom/google/ads/interactivemedia/v3/internal/sq;->b:J

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/sp;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v3

    .line 69
    invoke-direct {v0, v5, v6, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/sp;->a(J[BI)V

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/sp;->b:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 70
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abr;->t()I

    move-result v3

    iget-wide v4, v2, Lcom/google/ads/interactivemedia/v3/internal/sq;->b:J

    const-wide/16 v6, 0x4

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/google/ads/interactivemedia/v3/internal/sq;->b:J

    iget v4, v2, Lcom/google/ads/interactivemedia/v3/internal/sq;->a:I

    add-int/lit8 v4, v4, -0x4

    iput v4, v2, Lcom/google/ads/interactivemedia/v3/internal/sq;->a:I

    .line 71
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/he;->d(I)V

    iget-wide v4, v2, Lcom/google/ads/interactivemedia/v3/internal/sq;->b:J

    .line 72
    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/he;->b:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v4, v5, v6, v3}, Lcom/google/ads/interactivemedia/v3/internal/sp;->a(JLjava/nio/ByteBuffer;I)V

    iget-wide v4, v2, Lcom/google/ads/interactivemedia/v3/internal/sq;->b:J

    int-to-long v6, v3

    add-long/2addr v4, v6

    iput-wide v4, v2, Lcom/google/ads/interactivemedia/v3/internal/sq;->b:J

    iget v4, v2, Lcom/google/ads/interactivemedia/v3/internal/sq;->a:I

    sub-int/2addr v4, v3

    iput v4, v2, Lcom/google/ads/interactivemedia/v3/internal/sq;->a:I

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/he;->e:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_a

    .line 73
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v4, :cond_9

    goto :goto_3

    .line 76
    :cond_9
    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/he;->e:Ljava/nio/ByteBuffer;

    .line 75
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_4

    .line 74
    :cond_a
    :goto_3
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/he;->e:Ljava/nio/ByteBuffer;

    :goto_4
    iget-wide v3, v2, Lcom/google/ads/interactivemedia/v3/internal/sq;->b:J

    .line 76
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/he;->e:Ljava/nio/ByteBuffer;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/sq;->a:I

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/sp;->a(JLjava/nio/ByteBuffer;I)V

    return-void

    .line 75
    :cond_b
    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/sq;->a:I

    .line 77
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/he;->d(I)V

    iget-wide v3, v2, Lcom/google/ads/interactivemedia/v3/internal/sq;->b:J

    .line 78
    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/he;->b:Ljava/nio/ByteBuffer;

    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/sq;->a:I

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/sp;->a(JLjava/nio/ByteBuffer;I)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->c:Lcom/google/ads/interactivemedia/v3/internal/so;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->d:Lcom/google/ads/interactivemedia/v3/internal/so;

    return-void
.end method

.method public final b(J)V
    .locals 4

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->c:Lcom/google/ads/interactivemedia/v3/internal/so;

    .line 12
    iget-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->b:J

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->g:Lcom/google/ads/interactivemedia/v3/internal/zt;

    .line 13
    iget-object v0, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->d:Lcom/google/ads/interactivemedia/v3/internal/za;

    invoke-virtual {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zt;->a(Lcom/google/ads/interactivemedia/v3/internal/za;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->c:Lcom/google/ads/interactivemedia/v3/internal/so;

    .line 14
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/so;->a()Lcom/google/ads/interactivemedia/v3/internal/so;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->c:Lcom/google/ads/interactivemedia/v3/internal/so;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->d:Lcom/google/ads/interactivemedia/v3/internal/so;

    .line 15
    iget-wide p1, p1, Lcom/google/ads/interactivemedia/v3/internal/so;->a:J

    iget-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/so;->a:J

    cmp-long v3, p1, v1

    if-gez v3, :cond_1

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->d:Lcom/google/ads/interactivemedia/v3/internal/so;

    :cond_1
    return-void
.end method

.method public final c()J
    .locals 2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/sp;->f:J

    return-wide v0
.end method
