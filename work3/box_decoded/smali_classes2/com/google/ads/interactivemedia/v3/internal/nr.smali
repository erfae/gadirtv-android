.class public final Lcom/google/ads/interactivemedia/v3/internal/nr;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ih;


# instance fields
.field private a:Lcom/google/ads/interactivemedia/v3/internal/ii;

.field private b:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private c:Lcom/google/ads/interactivemedia/v3/internal/np;

.field private d:I

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->d:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->e:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/ir;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->b:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 3
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget p2, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->c:Lcom/google/ads/interactivemedia/v3/internal/np;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_8

    .line 5
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/nu;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Lcom/google/ads/interactivemedia/v3/internal/ns;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 6
    iget p2, v5, Lcom/google/ads/interactivemedia/v3/internal/ns;->a:I

    const/16 v2, 0x11

    if-ne p2, v2, :cond_0

    .line 7
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/no;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->b:Lcom/google/ads/interactivemedia/v3/internal/ix;

    invoke-direct {p2, v2, v3, v5}, Lcom/google/ads/interactivemedia/v3/internal/no;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/ix;Lcom/google/ads/interactivemedia/v3/internal/ns;)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->c:Lcom/google/ads/interactivemedia/v3/internal/np;

    goto/16 :goto_1

    :cond_0
    const/4 v2, 0x6

    if-ne p2, v2, :cond_1

    .line 27
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/nq;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->b:Lcom/google/ads/interactivemedia/v3/internal/ix;

    const/4 v7, -0x1

    const-string v6, "audio/g711-alaw"

    move-object v2, p2

    .line 8
    invoke-direct/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/nq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/ix;Lcom/google/ads/interactivemedia/v3/internal/ns;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->c:Lcom/google/ads/interactivemedia/v3/internal/np;

    goto :goto_1

    :cond_1
    const/4 v2, 0x7

    if-ne p2, v2, :cond_2

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/nq;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->b:Lcom/google/ads/interactivemedia/v3/internal/ix;

    const/4 v7, -0x1

    const-string v6, "audio/g711-mlaw"

    move-object v2, p2

    .line 9
    invoke-direct/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/nq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/ix;Lcom/google/ads/interactivemedia/v3/internal/ns;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->c:Lcom/google/ads/interactivemedia/v3/internal/np;

    goto :goto_1

    :cond_2
    iget v2, v5, Lcom/google/ads/interactivemedia/v3/internal/ns;->e:I

    if-eq p2, v0, :cond_5

    const/4 v3, 0x3

    if-eq p2, v3, :cond_4

    const v3, 0xfffe

    if-eq p2, v3, :cond_5

    :cond_3
    const/4 v7, 0x0

    goto :goto_0

    :cond_4
    const/16 p2, 0x20

    if-ne v2, p2, :cond_3

    const/4 p2, 0x4

    const/4 v7, 0x4

    goto :goto_0

    .line 11
    :cond_5
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->c(I)I

    move-result p2

    move v7, p2

    :goto_0
    if-eqz v7, :cond_6

    .line 10
    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/nq;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->b:Lcom/google/ads/interactivemedia/v3/internal/ix;

    const-string v6, "audio/raw"

    move-object v2, p2

    .line 11
    invoke-direct/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/nq;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/ix;Lcom/google/ads/interactivemedia/v3/internal/ns;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->c:Lcom/google/ads/interactivemedia/v3/internal/np;

    goto :goto_1

    .line 9
    :cond_6
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    iget p2, v5, Lcom/google/ads/interactivemedia/v3/internal/ns;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unsupported WAV format type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_7
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string p2, "Unsupported or unrecognized wav header."

    .line 6
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_8
    :goto_1
    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->d:I

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    if-ne p2, v4, :cond_e

    .line 12
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a()V

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/16 v5, 0x8

    .line 13
    invoke-direct {p2, v5}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>(I)V

    .line 14
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/nt;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/abr;)Lcom/google/ads/interactivemedia/v3/internal/nt;

    move-result-object v6

    :goto_2
    iget v7, v6, Lcom/google/ads/interactivemedia/v3/internal/nt;->a:I

    const v8, 0x64617461

    const-string v9, "WavHeaderReader"

    if-eq v7, v8, :cond_c

    const v8, 0x52494646

    if-eq v7, v8, :cond_9

    const v10, 0x666d7420

    if-eq v7, v10, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v11, 0x27

    .line 15
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v11, "Ignoring unknown WAV chunk: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-static {v9, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-wide v9, v6, Lcom/google/ads/interactivemedia/v3/internal/nt;->b:J

    const-wide/16 v11, 0x8

    add-long/2addr v9, v11

    iget v6, v6, Lcom/google/ads/interactivemedia/v3/internal/nt;->a:I

    if-ne v6, v8, :cond_a

    const-wide/16 v9, 0xc

    :cond_a
    const-wide/32 v7, 0x7fffffff

    cmp-long v11, v9, v7

    if-gtz v11, :cond_b

    long-to-int v6, v9

    .line 17
    invoke-virtual {p1, v6}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    .line 18
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/nt;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;Lcom/google/ads/interactivemedia/v3/internal/abr;)Lcom/google/ads/interactivemedia/v3/internal/nt;

    move-result-object v6

    goto :goto_2

    .line 16
    :cond_b
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/dt;

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v0, 0x33

    .line 19
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Chunk is too large (~2GB+) to skip; id: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw p1

    .line 20
    :cond_c
    invoke-virtual {p1, v5}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v7

    iget-wide v5, v6, Lcom/google/ads/interactivemedia/v3/internal/nt;->b:J

    add-long/2addr v5, v7

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->d()J

    move-result-wide v10

    cmp-long p2, v10, v2

    if-eqz p2, :cond_d

    cmp-long p2, v5, v10

    if-lez p2, :cond_d

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 v12, 0x45

    .line 21
    invoke-direct {p2, v12}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v12, "Data exceeds input length: "

    invoke-virtual {p2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-static {v9, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v5, v10

    .line 23
    :cond_d
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    .line 24
    iget-object v5, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v5

    iput v5, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->d:I

    .line 25
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->e:J

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->c:Lcom/google/ads/interactivemedia/v3/internal/np;

    iget v7, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->d:I

    .line 26
    invoke-interface {p2, v7, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/np;->a(IJ)V

    goto :goto_3

    .line 29
    :cond_e
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long p2, v5, v7

    if-nez p2, :cond_f

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->d:I

    .line 27
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ie;->a(I)V

    .line 26
    :cond_f
    :goto_3
    iget-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->e:J

    cmp-long p2, v5, v2

    if-eqz p2, :cond_10

    goto :goto_4

    :cond_10
    const/4 v0, 0x0

    .line 28
    :goto_4
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->e:J

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ie;->c()J

    move-result-wide v5

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->c:Lcom/google/ads/interactivemedia/v3/internal/np;

    sub-long/2addr v2, v5

    .line 29
    invoke-interface {p2, p1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/np;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;J)Z

    move-result p1

    if-eqz p1, :cond_11

    return v4

    :cond_11
    return v1
.end method

.method public final a(JJ)V
    .locals 0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->c:Lcom/google/ads/interactivemedia/v3/internal/np;

    if-eqz p1, :cond_0

    .line 30
    invoke-interface {p1, p3, p4}, Lcom/google/ads/interactivemedia/v3/internal/np;->a(J)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ii;)V
    .locals 2

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->a:Lcom/google/ads/interactivemedia/v3/internal/ii;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-interface {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/nr;->b:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 2
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->w()V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/nu;->a(Lcom/google/ads/interactivemedia/v3/internal/ie;)Lcom/google/ads/interactivemedia/v3/internal/ns;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c()V
    .locals 0

    return-void
.end method
