.class public final Lcom/google/vr/sdk/widgets/video/deps/iy;
.super Ljava/lang/Object;
.source "AdPlaybackState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/iy$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/iy;


# instance fields
.field public final b:I

.field public final c:[J

.field public final d:[Lcom/google/vr/sdk/widgets/video/deps/iy$a;

.field public final e:J

.field public final f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/iy;

    const/4 v1, 0x0

    new-array v1, v1, [J

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/iy;-><init>([J)V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/iy;->a:Lcom/google/vr/sdk/widgets/video/deps/iy;

    return-void
.end method

.method public varargs constructor <init>([J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    .line 3
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iy;->b:I

    .line 4
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iy;->c:[J

    .line 5
    new-array p1, v0, [Lcom/google/vr/sdk/widgets/video/deps/iy$a;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iy;->d:[Lcom/google/vr/sdk/widgets/video/deps/iy$a;

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iy;->d:[Lcom/google/vr/sdk/widgets/video/deps/iy$a;

    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/iy$a;

    invoke-direct {v2}, Lcom/google/vr/sdk/widgets/video/deps/iy$a;-><init>()V

    aput-object v2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iy;->e:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iy;->f:J

    return-void
.end method

.method private a(JI)Z
    .locals 6

    .line 36
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iy;->c:[J

    aget-wide v1, v0, p3

    const/4 p3, 0x1

    const/4 v0, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 38
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iy;->f:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    cmp-long v3, p1, v1

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :cond_1
    :goto_0
    return p3

    :cond_2
    cmp-long v3, p1, v1

    if-gez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    :goto_1
    return p3
.end method


# virtual methods
.method public a(J)I
    .locals 2

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iy;->c:[J

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 13
    invoke-direct {p0, p1, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/iy;->a(JI)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_1

    .line 15
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iy;->d:[Lcom/google/vr/sdk/widgets/video/deps/iy$a;

    aget-object p1, p1, v0

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/iy$a;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public b(J)I
    .locals 7

    const/4 v0, 0x0

    .line 17
    :goto_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iy;->c:[J

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-wide v2, v1, v0

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1

    aget-wide v2, v1, v0

    cmp-long v1, p1, v2

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iy;->d:[Lcom/google/vr/sdk/widgets/video/deps/iy$a;

    aget-object v1, v1, v0

    .line 18
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/iy$a;->b()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 20
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iy;->c:[J

    array-length p1, p1

    if-ge v0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 25
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/iy;

    .line 26
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/iy;->b:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/iy;->b:I

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/iy;->e:J

    iget-wide v4, p1, Lcom/google/vr/sdk/widgets/video/deps/iy;->e:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/iy;->f:J

    iget-wide v4, p1, Lcom/google/vr/sdk/widgets/video/deps/iy;->f:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/iy;->c:[J

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/iy;->c:[J

    .line 27
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/iy;->d:[Lcom/google/vr/sdk/widgets/video/deps/iy$a;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/iy;->d:[Lcom/google/vr/sdk/widgets/video/deps/iy$a;

    .line 28
    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 30
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iy;->b:I

    mul-int/lit8 v0, v0, 0x1f

    .line 31
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iy;->e:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 32
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iy;->f:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 33
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iy;->c:[J

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 34
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iy;->d:[Lcom/google/vr/sdk/widgets/video/deps/iy$a;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
