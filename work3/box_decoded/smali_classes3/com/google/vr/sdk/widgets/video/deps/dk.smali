.class final Lcom/google/vr/sdk/widgets/video/deps/dk;
.super Lcom/google/vr/sdk/widgets/video/deps/dj;
.source "VideoTagPayloadReader.java"


# instance fields
.field private final b:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private d:I

.field private e:Z

.field private f:I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dc;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dj;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dc;)V

    .line 2
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/pc;->a:[B

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>([B)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dk;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 3
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dk;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/vr/sdk/widgets/video/deps/pe;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/s;
        }
    .end annotation

    .line 12
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result v0

    .line 13
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->m()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    add-long v4, p2, v1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez v0, :cond_0

    .line 15
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/dk;->e:Z

    if-nez v1, :cond_0

    .line 16
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v1

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>([B)V

    .line 17
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v2

    invoke-virtual {p1, v1, p3, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BII)V

    .line 18
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/pv;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;)Lcom/google/vr/sdk/widgets/video/deps/pv;

    move-result-object p1

    .line 19
    iget p3, p1, Lcom/google/vr/sdk/widgets/video/deps/pv;->b:I

    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dk;->d:I

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    .line 20
    iget v5, p1, Lcom/google/vr/sdk/widgets/video/deps/pv;->c:I

    iget v6, p1, Lcom/google/vr/sdk/widgets/video/deps/pv;->d:I

    const/high16 v7, -0x40800000    # -1.0f

    iget-object v8, p1, Lcom/google/vr/sdk/widgets/video/deps/pv;->a:Ljava/util/List;

    const/4 v9, -0x1

    iget v10, p1, Lcom/google/vr/sdk/widgets/video/deps/pv;->e:F

    const/4 v11, 0x0

    const-string v1, "video/avc"

    invoke-static/range {v0 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object p1

    .line 21
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/dk;->a:Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-interface {p3, p1}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    .line 22
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/dk;->e:Z

    goto :goto_2

    :cond_0
    if-ne v0, p2, :cond_3

    .line 23
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dk;->e:Z

    if-eqz v0, :cond_3

    .line 24
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dk;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    .line 25
    aput-byte p3, v0, p3

    .line 26
    aput-byte p3, v0, p2

    const/4 v1, 0x2

    .line 27
    aput-byte p3, v0, v1

    .line 28
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dk;->d:I

    const/4 v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    const/4 v7, 0x0

    .line 30
    :goto_0
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v2

    if-lez v2, :cond_1

    .line 31
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dk;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dk;->d:I

    invoke-virtual {p1, v2, v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BII)V

    .line 32
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dk;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v2, p3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 33
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/dk;->c:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v2

    .line 34
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dk;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v3, p3}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 35
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dk;->a:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/dk;->b:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-interface {v3, v6, v1}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    add-int/lit8 v7, v7, 0x4

    .line 37
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dk;->a:Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-interface {v3, p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    add-int/2addr v7, v2

    goto :goto_0

    .line 39
    :cond_1
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/dk;->a:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/dk;->f:I

    if-ne p1, p2, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V

    :cond_3
    :goto_2
    return-void
.end method

.method protected a(Lcom/google/vr/sdk/widgets/video/deps/pe;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/dj$a;
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->h()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 10
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/dk;->f:I

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 9
    :cond_1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/dj$a;

    const/16 v1, 0x27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Video format not supported: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/dj$a;-><init>(Ljava/lang/String;)V

    throw v0
.end method
