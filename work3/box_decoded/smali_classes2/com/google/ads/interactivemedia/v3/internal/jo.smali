.class final Lcom/google/ads/interactivemedia/v3/internal/jo;
.super Ljava/lang/Object;
.source "IMASDK"


# instance fields
.field private final a:[B

.field private final b:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/google/ads/interactivemedia/v3/internal/jn;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/jv;

.field private d:Lcom/google/ads/interactivemedia/v3/internal/jp;

.field private e:I

.field private f:I

.field private g:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->a:[B

    new-instance v0, Ljava/util/ArrayDeque;

    .line 1
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->b:Ljava/util/ArrayDeque;

    .line 2
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jv;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/jv;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->c:Lcom/google/ads/interactivemedia/v3/internal/jv;

    return-void
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/ie;I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->a:[B

    const/4 v1, 0x0

    .line 33
    invoke-virtual {p1, v0, v1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    const-wide/16 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    const/16 p1, 0x8

    shl-long/2addr v2, p1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->a:[B

    .line 34
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-long v4, p1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->e:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->b:Ljava/util/ArrayDeque;

    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->c:Lcom/google/ads/interactivemedia/v3/internal/jv;

    .line 36
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/jv;->a()V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/jp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->d:Lcom/google/ads/interactivemedia/v3/internal/jp;

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->d:Lcom/google/ads/interactivemedia/v3/internal/jp;

    .line 3
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->b:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/jn;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v2

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/jn;->a(Lcom/google/ads/interactivemedia/v3/internal/jn;)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gez v0, :cond_0

    goto :goto_1

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->d:Lcom/google/ads/interactivemedia/v3/internal/jp;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->b:Ljava/util/ArrayDeque;

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/jn;

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/jn;->b(Lcom/google/ads/interactivemedia/v3/internal/jn;)I

    move-result v0

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/jq;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/jq;->a:Lcom/google/ads/interactivemedia/v3/internal/jt;

    .line 32
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(I)V

    return v1

    .line 4
    :cond_1
    :goto_1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->e:I

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->c:Lcom/google/ads/interactivemedia/v3/internal/jv;

    .line 5
    invoke-virtual {v0, p1, v1, v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/jv;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;ZZI)J

    move-result-wide v5

    const-wide/16 v7, -0x2

    cmp-long v0, v5, v7

    if-nez v0, :cond_4

    .line 6
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    :goto_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->a:[B

    .line 7
    invoke-virtual {p1, v0, v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d([BII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->a:[B

    .line 8
    aget-byte v0, v0, v4

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/jv;->a(I)I

    move-result v0

    const/4 v5, -0x1

    if-eq v0, v5, :cond_3

    if-gt v0, v3, :cond_3

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->a:[B

    .line 9
    invoke-static {v5, v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/jv;->a([BIZ)J

    move-result-wide v5

    long-to-int v6, v5

    const v5, 0x1549a966

    if-eq v6, v5, :cond_2

    const v5, 0x1f43b675

    if-eq v6, v5, :cond_2

    const v5, 0x1c53bb6b

    if-eq v6, v5, :cond_2

    const v5, 0x1654ae6b

    if-ne v6, v5, :cond_3

    .line 11
    :cond_2
    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    int-to-long v5, v6

    goto :goto_3

    .line 10
    :cond_3
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    goto :goto_2

    :cond_4
    :goto_3
    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-nez v0, :cond_5

    return v4

    :cond_5
    long-to-int v0, v5

    .line 11
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->f:I

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->e:I

    goto :goto_4

    :cond_6
    if-ne v0, v1, :cond_7

    :goto_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->c:Lcom/google/ads/interactivemedia/v3/internal/jv;

    const/16 v5, 0x8

    .line 12
    invoke-virtual {v0, p1, v4, v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/jv;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;ZZI)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->g:J

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->e:I

    :cond_7
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->f:I

    const/4 v5, 0x3

    sparse-switch v0, :sswitch_data_0

    const/4 v6, 0x0

    goto :goto_5

    :sswitch_0
    const/4 v6, 0x5

    goto :goto_5

    :sswitch_1
    const/4 v6, 0x4

    goto :goto_5

    :sswitch_2
    const/4 v6, 0x1

    goto :goto_5

    :sswitch_3
    const/4 v6, 0x3

    goto :goto_5

    :sswitch_4
    const/4 v6, 0x2

    :goto_5
    if-eqz v6, :cond_13

    if-eq v6, v1, :cond_12

    const-wide/16 v7, 0x8

    if-eq v6, v2, :cond_10

    if-eq v6, v5, :cond_c

    if-eq v6, v3, :cond_b

    iget-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->g:J

    const-wide/16 v9, 0x4

    cmp-long v2, v5, v9

    if-eqz v2, :cond_9

    cmp-long v2, v5, v7

    if-nez v2, :cond_8

    goto :goto_6

    .line 10
    :cond_8
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    .line 18
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid float size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_9
    :goto_6
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->d:Lcom/google/ads/interactivemedia/v3/internal/jp;

    long-to-int v6, v5

    .line 14
    invoke-direct {p0, p1, v6}, Lcom/google/ads/interactivemedia/v3/internal/jo;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;I)J

    move-result-wide v7

    if-ne v6, v3, :cond_a

    long-to-int p1, v7

    .line 15
    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    float-to-double v5, p1

    goto :goto_7

    .line 16
    :cond_a
    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    .line 15
    :goto_7
    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/jq;

    iget-object p1, v2, Lcom/google/ads/interactivemedia/v3/internal/jq;->a:Lcom/google/ads/interactivemedia/v3/internal/jt;

    .line 17
    invoke-virtual {p1, v0, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(ID)V

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->e:I

    return v1

    .line 16
    :cond_b
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->d:Lcom/google/ads/interactivemedia/v3/internal/jp;

    iget-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->g:J

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/jq;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/jq;->a:Lcom/google/ads/interactivemedia/v3/internal/jt;

    long-to-int v3, v5

    .line 19
    invoke-virtual {v2, v0, v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(IILcom/google/ads/interactivemedia/v3/internal/ie;)V

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->e:I

    return v1

    .line 28
    :cond_c
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->g:J

    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v2, v5

    if-gtz v7, :cond_f

    .line 20
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->d:Lcom/google/ads/interactivemedia/v3/internal/jp;

    long-to-int v3, v2

    if-nez v3, :cond_d

    const-string p1, ""

    goto :goto_9

    .line 21
    :cond_d
    new-array v2, v3, [B

    .line 22
    invoke-virtual {p1, v2, v4, v3}, Lcom/google/ads/interactivemedia/v3/internal/ie;->b([BII)V

    :goto_8
    if-lez v3, :cond_e

    add-int/lit8 p1, v3, -0x1

    .line 23
    aget-byte v6, v2, p1

    if-nez v6, :cond_e

    move v3, p1

    goto :goto_8

    :cond_e
    new-instance p1, Ljava/lang/String;

    .line 24
    invoke-direct {p1, v2, v4, v3}, Ljava/lang/String;-><init>([BII)V

    .line 20
    :goto_9
    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/jq;

    iget-object v2, v5, Lcom/google/ads/interactivemedia/v3/internal/jq;->a:Lcom/google/ads/interactivemedia/v3/internal/jt;

    .line 25
    invoke-virtual {v2, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(ILjava/lang/String;)V

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->e:I

    return v1

    .line 28
    :cond_f
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "String element size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_10
    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->g:J

    cmp-long v5, v2, v7

    if-gtz v5, :cond_11

    .line 26
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->d:Lcom/google/ads/interactivemedia/v3/internal/jp;

    long-to-int v3, v2

    .line 27
    invoke-direct {p0, p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/jo;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;I)J

    move-result-wide v2

    check-cast v5, Lcom/google/ads/interactivemedia/v3/internal/jq;

    iget-object p1, v5, Lcom/google/ads/interactivemedia/v3/internal/jq;->a:Lcom/google/ads/interactivemedia/v3/internal/jt;

    .line 28
    invoke-virtual {p1, v0, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(IJ)V

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->e:I

    return v1

    .line 19
    :cond_11
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

    .line 26
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid integer size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_12
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v7

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->g:J

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->b:Ljava/util/ArrayDeque;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/jn;

    iget v5, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->f:I

    add-long/2addr v2, v7

    .line 29
    invoke-direct {v0, v5, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/jn;-><init>(IJ)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->d:Lcom/google/ads/interactivemedia/v3/internal/jp;

    iget v6, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->f:I

    iget-wide v9, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->g:J

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/jq;

    iget-object v5, p1, Lcom/google/ads/interactivemedia/v3/internal/jq;->a:Lcom/google/ads/interactivemedia/v3/internal/jt;

    .line 30
    invoke-virtual/range {v5 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/jt;->a(IJJ)V

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->e:I

    return v1

    :cond_13
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->g:J

    long-to-int v1, v0

    .line 13
    invoke-virtual {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    iput v4, p0, Lcom/google/ads/interactivemedia/v3/internal/jo;->e:I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xa5 -> :sswitch_1
        0xa6 -> :sswitch_2
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xee -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x536e -> :sswitch_3
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x55ee -> :sswitch_4
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x75a1 -> :sswitch_2
        0x7670 -> :sswitch_2
        0x7671 -> :sswitch_4
        0x7672 -> :sswitch_1
        0x7673 -> :sswitch_0
        0x7674 -> :sswitch_0
        0x7675 -> :sswitch_0
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch
.end method
