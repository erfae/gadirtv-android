.class public final Lcom/google/vr/sdk/widgets/video/deps/gg;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/cr;


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/cu;


# instance fields
.field private b:Lcom/google/vr/sdk/widgets/video/deps/ct;

.field private c:Lcom/google/vr/sdk/widgets/video/deps/dc;

.field private d:Lcom/google/vr/sdk/widgets/video/deps/gi;

.field private e:I

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/gh;->a:Lcom/google/vr/sdk/widgets/video/deps/cu;

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/gg;->a:Lcom/google/vr/sdk/widgets/video/deps/cu;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final synthetic a()[Lcom/google/vr/sdk/widgets/video/deps/cr;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/cr;

    .line 40
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/gg;

    invoke-direct {v1}, Lcom/google/vr/sdk/widgets/video/deps/gg;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 11
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->d:Lcom/google/vr/sdk/widgets/video/deps/gi;

    if-nez p2, :cond_1

    .line 12
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gj;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;)Lcom/google/vr/sdk/widgets/video/deps/gi;

    move-result-object p2

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->d:Lcom/google/vr/sdk/widgets/video/deps/gi;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 16
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gi;->f()I

    move-result v3

    const v4, 0x8000

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->d:Lcom/google/vr/sdk/widgets/video/deps/gi;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gi;->h()I

    move-result v5

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->d:Lcom/google/vr/sdk/widgets/video/deps/gi;

    .line 17
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gi;->g()I

    move-result v6

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->d:Lcom/google/vr/sdk/widgets/video/deps/gi;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gi;->i()I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v1, "audio/raw"

    .line 18
    invoke-static/range {v0 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object p2

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->c:Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-interface {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    .line 20
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->d:Lcom/google/vr/sdk/widgets/video/deps/gi;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gi;->e()I

    move-result p2

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->e:I

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/s;

    const-string p2, "Unsupported or unrecognized wav header."

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/s;-><init>(Ljava/lang/String;)V

    throw p1

    .line 21
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->d:Lcom/google/vr/sdk/widgets/video/deps/gi;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gi;->d()Z

    move-result p2

    if-nez p2, :cond_2

    .line 22
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->d:Lcom/google/vr/sdk/widgets/video/deps/gi;

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gj;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/gi;)V

    .line 23
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->b:Lcom/google/vr/sdk/widgets/video/deps/ct;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->d:Lcom/google/vr/sdk/widgets/video/deps/gi;

    invoke-interface {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(Lcom/google/vr/sdk/widgets/video/deps/da;)V

    .line 24
    :cond_2
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->d:Lcom/google/vr/sdk/widgets/video/deps/gi;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gi;->c()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    const/4 p2, 0x1

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 25
    :goto_1
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 26
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    const/4 v5, -0x1

    cmp-long v6, v0, v2

    if-gtz v6, :cond_4

    return v5

    :cond_4
    const v2, 0x8000

    .line 29
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->f:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    .line 30
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->c:Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-interface {v0, p1, v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;IZ)I

    move-result p2

    if-eq p2, v5, :cond_5

    .line 32
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->f:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->f:I

    .line 33
    :cond_5
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->f:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->e:I

    div-int/2addr v0, v1

    if-lez v0, :cond_6

    .line 35
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->d:Lcom/google/vr/sdk/widgets/video/deps/gi;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v2

    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->f:I

    int-to-long v6, p1

    sub-long/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/gi;->b(J)J

    move-result-wide v7

    .line 36
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->e:I

    mul-int v10, v0, p1

    .line 37
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->f:I

    sub-int v11, p1, v10

    iput v11, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->f:I

    .line 38
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->c:Lcom/google/vr/sdk/widgets/video/deps/dc;

    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-interface/range {v6 .. v12}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V

    :cond_6
    if-ne p2, v5, :cond_7

    const/4 v4, -0x1

    :cond_7
    return v4
.end method

.method public a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->f:I

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ct;)V
    .locals 2

    .line 3
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->b:Lcom/google/vr/sdk/widgets/video/deps/ct;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 4
    invoke-interface {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->c:Lcom/google/vr/sdk/widgets/video/deps/dc;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gg;->d:Lcom/google/vr/sdk/widgets/video/deps/gi;

    .line 6
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a()V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/gj;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;)Lcom/google/vr/sdk/widgets/video/deps/gi;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()V
    .locals 0

    return-void
.end method
