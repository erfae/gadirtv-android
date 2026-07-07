.class final Lcom/google/vr/sdk/widgets/video/deps/gj;
.super Ljava/lang/Object;
.source "WavHeaderReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/gj$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/google/vr/sdk/widgets/video/deps/cs;)Lcom/google/vr/sdk/widgets/video/deps/gi;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    .line 3
    invoke-static {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gj$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/pe;)Lcom/google/vr/sdk/widgets/video/deps/gj$a;

    move-result-object v2

    .line 4
    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/gj$a;->a:I

    sget v3, Lcom/google/vr/sdk/widgets/video/deps/bj;->a:I

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    return-object v4

    .line 6
    :cond_0
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v3, 0x4

    const/4 v5, 0x0

    invoke-interface {p0, v2, v5, v3}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 7
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 8
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->p()I

    move-result v2

    .line 9
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/bj;->b:I

    const-string v6, "WavHeaderReader"

    if-eq v2, v3, :cond_1

    const/16 p0, 0x24

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unsupported RIFF format: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 12
    :cond_1
    invoke-static {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gj$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/pe;)Lcom/google/vr/sdk/widgets/video/deps/gj$a;

    move-result-object v2

    .line 13
    :goto_0
    iget v3, v2, Lcom/google/vr/sdk/widgets/video/deps/gj$a;->a:I

    sget v7, Lcom/google/vr/sdk/widgets/video/deps/bj;->c:I

    if-eq v3, v7, :cond_2

    .line 14
    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/gj$a;->b:J

    long-to-int v3, v2

    invoke-interface {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c(I)V

    .line 15
    invoke-static {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gj$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/pe;)Lcom/google/vr/sdk/widgets/video/deps/gj$a;

    move-result-object v2

    goto :goto_0

    .line 16
    :cond_2
    iget-wide v7, v2, Lcom/google/vr/sdk/widgets/video/deps/gj$a;->b:J

    const-wide/16 v9, 0x10

    cmp-long v3, v7, v9

    if-ltz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 17
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-interface {p0, v3, v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c([BII)V

    .line 18
    invoke-virtual {v0, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 19
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->j()I

    move-result v3

    .line 20
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->j()I

    move-result v8

    .line 21
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->w()I

    move-result v9

    .line 22
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->w()I

    move-result v10

    .line 23
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->j()I

    move-result v11

    .line 24
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->j()I

    move-result v12

    mul-int v0, v8, v12

    .line 25
    div-int/lit8 v0, v0, 0x8

    if-ne v11, v0, :cond_5

    .line 28
    invoke-static {v3, v12}, Lcom/google/vr/sdk/widgets/video/deps/bj;->a(II)I

    move-result v13

    if-nez v13, :cond_4

    const/16 p0, 0x40

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unsupported WAV format: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bit/sample, type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    .line 32
    :cond_4
    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/gj$a;->b:J

    long-to-int v0, v2

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c(I)V

    .line 33
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/gi;

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/gi;-><init>(IIIIII)V

    return-object p0

    .line 27
    :cond_5
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/s;

    const/16 v1, 0x37

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Expected block alignment: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "; got: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/gi;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 34
    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-interface {p0}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    .line 37
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    .line 38
    invoke-static {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gj$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/pe;)Lcom/google/vr/sdk/widgets/video/deps/gj$a;

    move-result-object v2

    .line 39
    :goto_0
    iget v3, v2, Lcom/google/vr/sdk/widgets/video/deps/gj$a;->a:I

    const-string v4, "data"

    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(Ljava/lang/String;)I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 40
    iget v3, v2, Lcom/google/vr/sdk/widgets/video/deps/gj$a;->a:I

    const/16 v4, 0x27

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Ignoring unknown WAV chunk: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WavHeaderReader"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x8

    .line 41
    iget-wide v5, v2, Lcom/google/vr/sdk/widgets/video/deps/gj$a;->b:J

    add-long/2addr v5, v3

    .line 42
    iget v3, v2, Lcom/google/vr/sdk/widgets/video/deps/gj$a;->a:I

    const-string v4, "RIFF"

    invoke-static {v4}, Lcom/google/vr/sdk/widgets/video/deps/ps;->h(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_0

    const-wide/16 v5, 0xc

    :cond_0
    const-wide/32 v3, 0x7fffffff

    cmp-long v7, v5, v3

    if-gtz v7, :cond_1

    long-to-int v2, v5

    .line 46
    invoke-interface {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    .line 47
    invoke-static {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/gj$a;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/pe;)Lcom/google/vr/sdk/widgets/video/deps/gj$a;

    move-result-object v2

    goto :goto_0

    .line 45
    :cond_1
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/s;

    iget p1, v2, Lcom/google/vr/sdk/widgets/video/deps/gj$a;->a:I

    const/16 v0, 0x33

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Chunk is too large (~2GB+) to skip; id: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p0

    .line 49
    :cond_2
    invoke-interface {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V

    .line 50
    invoke-interface {p0}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v0

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/gj$a;->b:J

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gi;->a(JJ)V

    return-void
.end method
