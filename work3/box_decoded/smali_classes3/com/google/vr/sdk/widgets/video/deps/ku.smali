.class final Lcom/google/vr/sdk/widgets/video/deps/ku;
.super Ljava/lang/Object;
.source "HlsSampleStream.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/is;


# instance fields
.field private final a:I

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/kv;

.field private c:I


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/kv;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ku;->b:Lcom/google/vr/sdk/widgets/video/deps/kv;

    .line 3
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ku;->a:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ku;->c:I

    return-void
.end method

.method private e()Z
    .locals 2

    .line 29
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ku;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;Z)I
    .locals 2

    .line 21
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ku;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ku;->b:Lcom/google/vr/sdk/widgets/video/deps/kv;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ku;->c:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/kv;->a(ILcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;Z)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x3

    :goto_0
    return p1
.end method

.method public a()V
    .locals 2

    .line 6
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ku;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Z)V

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ku;->b:Lcom/google/vr/sdk/widgets/video/deps/kv;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ku;->a:I

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/kv;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ku;->c:I

    return-void
.end method

.method public b()Z
    .locals 2

    .line 13
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ku;->c:I

    const/4 v1, -0x3

    if-eq v0, v1, :cond_1

    .line 14
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ku;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ku;->b:Lcom/google/vr/sdk/widgets/video/deps/kv;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ku;->c:I

    invoke-virtual {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/kv;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public b_(J)I
    .locals 2

    .line 25
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ku;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ku;->b:Lcom/google/vr/sdk/widgets/video/deps/kv;

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ku;->c:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/kv;->a(IJ)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ku;->c:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ku;->b:Lcom/google/vr/sdk/widgets/video/deps/kv;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/kv;->i()V

    return-void

    .line 17
    :cond_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ky;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ku;->b:Lcom/google/vr/sdk/widgets/video/deps/kv;

    .line 18
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/kv;->f()Lcom/google/vr/sdk/widgets/video/deps/iw;

    move-result-object v1

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ku;->a:I

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/iw;->a(I)Lcom/google/vr/sdk/widgets/video/deps/iv;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v1

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/l;->g:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ky;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()V
    .locals 3

    .line 9
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ku;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ku;->b:Lcom/google/vr/sdk/widgets/video/deps/kv;

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ku;->a:I

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/kv;->b(I)V

    .line 11
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ku;->c:I

    :cond_0
    return-void
.end method
