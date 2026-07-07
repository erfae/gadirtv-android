.class final Lcom/google/vr/sdk/widgets/video/deps/mg;
.super Ljava/lang/Object;
.source "SsaSubtitle.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/ll;


# instance fields
.field private final a:[Lcom/google/vr/sdk/widgets/video/deps/li;

.field private final b:[J


# direct methods
.method public constructor <init>([Lcom/google/vr/sdk/widgets/video/deps/li;[J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/mg;->a:[Lcom/google/vr/sdk/widgets/video/deps/li;

    .line 3
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/mg;->b:[J

    return-void
.end method


# virtual methods
.method public a(J)I
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mg;->b:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1, v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->b([JJZZ)I

    move-result p1

    .line 6
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/mg;->b:[J

    array-length p2, p2

    if-ge p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public a(I)J
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 8
    :goto_0
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Z)V

    .line 9
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/mg;->b:[J

    array-length v2, v2

    if-ge p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Z)V

    .line 10
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mg;->b:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public b()I
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mg;->b:[J

    array-length v0, v0

    return v0
.end method

.method public b(J)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/li;",
            ">;"
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/mg;->b:[J

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a([JJZZ)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 12
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/mg;->a:[Lcom/google/vr/sdk/widgets/video/deps/li;

    aget-object v0, p2, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    aget-object p1, p2, p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 13
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
