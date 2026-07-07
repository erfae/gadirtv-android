.class public abstract Lcom/google/vr/sdk/widgets/video/deps/ne;
.super Lcom/google/vr/sdk/widgets/video/deps/ni;
.source "MappingTrackSelector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/ne$a;
    }
.end annotation


# instance fields
.field private a:Lcom/google/vr/sdk/widgets/video/deps/ne$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ni;-><init>()V

    return-void
.end method

.method private static a([Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/iv;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 40
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 42
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_3

    .line 43
    aget-object v4, p0, v2

    const/4 v5, 0x0

    .line 44
    :goto_1
    iget v6, p1, Lcom/google/vr/sdk/widgets/video/deps/iv;->a:I

    if-ge v5, v6, :cond_2

    .line 45
    invoke-virtual {p1, v5}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v6

    invoke-interface {v4, v6}, Lcom/google/vr/sdk/widgets/video/deps/aa;->supportsFormat(Lcom/google/vr/sdk/widgets/video/deps/l;)I

    move-result v6

    and-int/lit8 v6, v6, 0x7

    if-le v6, v3, :cond_1

    const/4 v0, 0x4

    if-ne v6, v0, :cond_0

    return v2

    :cond_0
    move v0, v2

    move v3, v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/iv;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 54
    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/iv;->a:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 55
    :goto_0
    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/iv;->a:I

    if-ge v1, v2, :cond_0

    .line 56
    invoke-virtual {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/iv;->a(I)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v2

    invoke-interface {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/aa;->supportsFormat(Lcom/google/vr/sdk/widgets/video/deps/l;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static a([Lcom/google/vr/sdk/widgets/video/deps/aa;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 59
    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 61
    aget-object v3, p0, v2

    invoke-interface {v3}, Lcom/google/vr/sdk/widgets/video/deps/aa;->supportsMixedMimeTypeAdaptation()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method protected abstract a(Lcom/google/vr/sdk/widgets/video/deps/ne$a;[[[I[I)Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/ne$a;",
            "[[[I[I)",
            "Landroid/util/Pair<",
            "[",
            "Lcom/google/vr/sdk/widgets/video/deps/ab;",
            "[",
            "Lcom/google/vr/sdk/widgets/video/deps/nf;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation
.end method

.method public final a([Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/iw;)Lcom/google/vr/sdk/widgets/video/deps/nj;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/f;
        }
    .end annotation

    .line 4
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    .line 5
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    new-array v2, v1, [[Lcom/google/vr/sdk/widgets/video/deps/iv;

    .line 6
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    new-array v3, v3, [[[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    .line 8
    iget v6, p2, Lcom/google/vr/sdk/widgets/video/deps/iw;->b:I

    new-array v6, v6, [Lcom/google/vr/sdk/widgets/video/deps/iv;

    aput-object v6, v2, v5

    .line 9
    iget v6, p2, Lcom/google/vr/sdk/widgets/video/deps/iw;->b:I

    new-array v6, v6, [[I

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ne;->a([Lcom/google/vr/sdk/widgets/video/deps/aa;)[I

    move-result-object v1

    const/4 v5, 0x0

    .line 13
    :goto_1
    iget v6, p2, Lcom/google/vr/sdk/widgets/video/deps/iw;->b:I

    if-ge v5, v6, :cond_2

    .line 14
    invoke-virtual {p2, v5}, Lcom/google/vr/sdk/widgets/video/deps/iw;->a(I)Lcom/google/vr/sdk/widgets/video/deps/iv;

    move-result-object v6

    .line 15
    invoke-static {p1, v6}, Lcom/google/vr/sdk/widgets/video/deps/ne;->a([Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/iv;)I

    move-result v7

    .line 16
    array-length v8, p1

    if-ne v7, v8, :cond_1

    .line 17
    iget v8, v6, Lcom/google/vr/sdk/widgets/video/deps/iv;->a:I

    new-array v8, v8, [I

    goto :goto_2

    :cond_1
    aget-object v8, p1, v7

    invoke-static {v8, v6}, Lcom/google/vr/sdk/widgets/video/deps/ne;->a(Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/iv;)[I

    move-result-object v8

    .line 18
    :goto_2
    aget v9, v0, v7

    .line 19
    aget-object v10, v2, v7

    aput-object v6, v10, v9

    .line 20
    aget-object v6, v3, v7

    aput-object v8, v6, v9

    .line 21
    aget v6, v0, v7

    add-int/lit8 v6, v6, 0x1

    aput v6, v0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 23
    :cond_2
    array-length p2, p1

    new-array v6, p2, [Lcom/google/vr/sdk/widgets/video/deps/iw;

    .line 24
    array-length p2, p1

    new-array v5, p2, [I

    .line 25
    :goto_3
    array-length p2, p1

    if-ge v4, p2, :cond_3

    .line 26
    aget p2, v0, v4

    .line 27
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/iw;

    aget-object v8, v2, v4

    .line 28
    invoke-static {v8, p2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/google/vr/sdk/widgets/video/deps/iv;

    invoke-direct {v7, v8}, Lcom/google/vr/sdk/widgets/video/deps/iw;-><init>([Lcom/google/vr/sdk/widgets/video/deps/iv;)V

    aput-object v7, v6, v4

    .line 29
    aget-object v7, v3, v4

    .line 30
    invoke-static {v7, p2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[I

    aput-object p2, v3, v4

    .line 31
    aget-object p2, p1, v4

    invoke-interface {p2}, Lcom/google/vr/sdk/widgets/video/deps/aa;->getTrackType()I

    move-result p2

    aput p2, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 33
    :cond_3
    array-length p2, p1

    aget p2, v0, p2

    .line 34
    new-instance v9, Lcom/google/vr/sdk/widgets/video/deps/iw;

    array-length p1, p1

    aget-object p1, v2, p1

    .line 35
    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/vr/sdk/widgets/video/deps/iv;

    invoke-direct {v9, p1}, Lcom/google/vr/sdk/widgets/video/deps/iw;-><init>([Lcom/google/vr/sdk/widgets/video/deps/iv;)V

    .line 36
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ne$a;

    move-object v4, p1

    move-object v7, v1

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/ne$a;-><init>([I[Lcom/google/vr/sdk/widgets/video/deps/iw;[I[[[ILcom/google/vr/sdk/widgets/video/deps/iw;)V

    .line 38
    invoke-virtual {p0, p1, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/ne;->a(Lcom/google/vr/sdk/widgets/video/deps/ne$a;[[[I[I)Landroid/util/Pair;

    move-result-object p2

    .line 39
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/nj;

    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [Lcom/google/vr/sdk/widgets/video/deps/ab;

    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, [Lcom/google/vr/sdk/widgets/video/deps/nf;

    invoke-direct {v0, v1, p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/nj;-><init>([Lcom/google/vr/sdk/widgets/video/deps/ab;[Lcom/google/vr/sdk/widgets/video/deps/nf;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ne$a;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ne;->a:Lcom/google/vr/sdk/widgets/video/deps/ne$a;

    return-void
.end method
