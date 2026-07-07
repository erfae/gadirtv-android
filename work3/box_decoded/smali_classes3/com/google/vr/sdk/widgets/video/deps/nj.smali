.class public final Lcom/google/vr/sdk/widgets/video/deps/nj;
.super Ljava/lang/Object;
.source "TrackSelectorResult.java"


# instance fields
.field public final a:I

.field public final b:[Lcom/google/vr/sdk/widgets/video/deps/ab;

.field public final c:Lcom/google/vr/sdk/widgets/video/deps/nh;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>([Lcom/google/vr/sdk/widgets/video/deps/ab;[Lcom/google/vr/sdk/widgets/video/deps/nf;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nj;->b:[Lcom/google/vr/sdk/widgets/video/deps/ab;

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/nh;

    invoke-direct {v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/nh;-><init>([Lcom/google/vr/sdk/widgets/video/deps/nf;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nj;->c:Lcom/google/vr/sdk/widgets/video/deps/nh;

    .line 4
    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/nj;->d:Ljava/lang/Object;

    .line 5
    array-length p1, p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nj;->a:I

    return-void
.end method


# virtual methods
.method public a(I)Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nj;->b:[Lcom/google/vr/sdk/widgets/video/deps/ab;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/nj;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 8
    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/nj;->c:Lcom/google/vr/sdk/widgets/video/deps/nh;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/nh;->a:I

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nj;->c:Lcom/google/vr/sdk/widgets/video/deps/nh;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/nh;->a:I

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nj;->c:Lcom/google/vr/sdk/widgets/video/deps/nh;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/nh;->a:I

    if-ge v1, v2, :cond_2

    .line 11
    invoke-virtual {p0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/nj;->a(Lcom/google/vr/sdk/widgets/video/deps/nj;I)Z

    move-result v2

    if-nez v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/nj;I)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 17
    :cond_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nj;->b:[Lcom/google/vr/sdk/widgets/video/deps/ab;

    aget-object v1, v1, p2

    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/nj;->b:[Lcom/google/vr/sdk/widgets/video/deps/ab;

    aget-object v2, v2, p2

    invoke-static {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nj;->c:Lcom/google/vr/sdk/widgets/video/deps/nh;

    .line 18
    invoke-virtual {v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/nh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/nf;

    move-result-object v1

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/nj;->c:Lcom/google/vr/sdk/widgets/video/deps/nh;

    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/nh;->a(I)Lcom/google/vr/sdk/widgets/video/deps/nf;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
