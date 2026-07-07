.class final Lcom/google/vr/sdk/widgets/video/deps/iq;
.super Ljava/lang/Object;
.source "SampleMetadataQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/iq$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:[I

.field private c:[J

.field private d:[I

.field private e:[I

.field private f:[J

.field private g:[Lcom/google/vr/sdk/widgets/video/deps/dc$a;

.field private h:[Lcom/google/vr/sdk/widgets/video/deps/l;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:J

.field private n:J

.field private o:Z

.field private p:Z

.field private q:Lcom/google/vr/sdk/widgets/video/deps/l;

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 2
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->a:I

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->b:[I

    new-array v1, v0, [J

    .line 4
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->c:[J

    new-array v1, v0, [J

    .line 5
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->f:[J

    new-array v1, v0, [I

    .line 6
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->e:[I

    new-array v1, v0, [I

    .line 7
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->d:[I

    new-array v1, v0, [Lcom/google/vr/sdk/widgets/video/deps/dc$a;

    .line 8
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->g:[Lcom/google/vr/sdk/widgets/video/deps/dc$a;

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 9
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->h:[Lcom/google/vr/sdk/widgets/video/deps/l;

    const-wide/high16 v0, -0x8000000000000000L

    .line 10
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->m:J

    .line 11
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->n:J

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->p:Z

    .line 13
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->o:Z

    return-void
.end method

.method private a(IIJZ)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_3

    .line 175
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->f:[J

    aget-wide v4, v3, p1

    cmp-long v3, v4, p3

    if-gtz v3, :cond_3

    if-eqz p5, :cond_0

    .line 176
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->e:[I

    aget v3, v3, p1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 179
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->a:I

    if-ne p1, v3, :cond_2

    const/4 p1, 0x0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private d(I)J
    .locals 4

    .line 183
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->m:J

    .line 184
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/iq;->e(I)J

    move-result-wide v2

    .line 185
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->m:J

    .line 186
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->i:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->i:I

    .line 187
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->j:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->j:I

    .line 188
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->k:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->k:I

    .line 189
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->a:I

    if-lt v1, v2, :cond_0

    sub-int/2addr v1, v2

    .line 190
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->k:I

    .line 191
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->l:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->l:I

    if-gez v1, :cond_1

    const/4 p1, 0x0

    .line 193
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->l:I

    :cond_1
    if-nez v0, :cond_3

    .line 195
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->k:I

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, p1

    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 196
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->c:[J

    aget-wide v0, p1, v2

    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->d:[I

    aget p1, p1, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0

    .line 197
    :cond_3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->c:[J

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->k:I

    aget-wide v0, p1, v0

    return-wide v0
.end method

.method private e(I)J
    .locals 7

    const-wide/high16 v0, -0x8000000000000000L

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    .line 201
    invoke-direct {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/iq;->f(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_3

    .line 203
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->f:[J

    aget-wide v5, v4, v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 204
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->e:[I

    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 208
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->a:I

    add-int/lit8 v2, v2, -0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-wide v0
.end method

.method private f(I)I
    .locals 1

    .line 211
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->k:I

    add-int/2addr v0, p1

    .line 212
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->a:I

    if-ge v0, p1, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p1

    :goto_0
    return v0
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 26
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->j:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->i:I

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized a(JZZ)I
    .locals 8

    monitor-enter p0

    .line 68
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->l:I

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/iq;->f(I)I

    move-result v2

    .line 69
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/iq;->e()Z

    move-result v0

    const/4 v7, -0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->f:[J

    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->n:J

    cmp-long v3, p1, v0

    if-lez v3, :cond_0

    if-nez p4, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    iget p4, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->i:I

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->l:I

    sub-int v3, p4, v0

    move-object v1, p0

    move-wide v4, p1

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/iq;->a(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v7, :cond_1

    .line 73
    monitor-exit p0

    return v7

    .line 74
    :cond_1
    :try_start_1
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->l:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    monitor-exit p0

    return p1

    .line 70
    :cond_2
    :goto_0
    monitor-exit p0

    return v7

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;ZZLcom/google/vr/sdk/widgets/video/deps/l;Lcom/google/vr/sdk/widgets/video/deps/iq$a;)I
    .locals 4

    monitor-enter p0

    .line 47
    :try_start_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/iq;->e()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x3

    const/4 v3, -0x4

    if-nez v0, :cond_3

    if-eqz p4, :cond_0

    const/4 p1, 0x4

    .line 49
    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a_(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return v3

    .line 51
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->q:Lcom/google/vr/sdk/widgets/video/deps/l;

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    if-eq p2, p5, :cond_2

    .line 52
    :cond_1
    iput-object p2, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->a:Lcom/google/vr/sdk/widgets/video/deps/l;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    monitor-exit p0

    return v1

    .line 54
    :cond_2
    monitor-exit p0

    return v2

    .line 55
    :cond_3
    :try_start_2
    iget p4, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->l:I

    invoke-direct {p0, p4}, Lcom/google/vr/sdk/widgets/video/deps/iq;->f(I)I

    move-result p4

    if-nez p3, :cond_6

    .line 56
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->h:[Lcom/google/vr/sdk/widgets/video/deps/l;

    aget-object p3, p3, p4

    if-eq p3, p5, :cond_4

    goto :goto_0

    .line 59
    :cond_4
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bo;->f()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_5

    .line 60
    monitor-exit p0

    return v2

    .line 61
    :cond_5
    :try_start_3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->f:[J

    aget-wide v0, p1, p4

    iput-wide v0, p2, Lcom/google/vr/sdk/widgets/video/deps/bo;->c:J

    .line 62
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->e:[I

    aget p1, p1, p4

    invoke-virtual {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/bo;->a_(I)V

    .line 63
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->d:[I

    aget p1, p1, p4

    iput p1, p6, Lcom/google/vr/sdk/widgets/video/deps/iq$a;->a:I

    .line 64
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->c:[J

    aget-wide p2, p1, p4

    iput-wide p2, p6, Lcom/google/vr/sdk/widgets/video/deps/iq$a;->b:J

    .line 65
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->g:[Lcom/google/vr/sdk/widgets/video/deps/dc$a;

    aget-object p1, p1, p4

    iput-object p1, p6, Lcom/google/vr/sdk/widgets/video/deps/iq$a;->c:Lcom/google/vr/sdk/widgets/video/deps/dc$a;

    .line 66
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->l:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->l:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 67
    monitor-exit p0

    return v3

    .line 57
    :cond_6
    :goto_0
    :try_start_4
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->h:[Lcom/google/vr/sdk/widgets/video/deps/l;

    aget-object p2, p2, p4

    iput-object p2, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->a:Lcom/google/vr/sdk/widgets/video/deps/l;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 58
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(I)J
    .locals 5

    .line 27
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/iq;->a()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    if-ltz v0, :cond_0

    .line 28
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->i:I

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->l:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Z)V

    .line 29
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->i:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->i:I

    .line 30
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->m:J

    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/iq;->e(I)J

    move-result-wide v0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->n:J

    .line 31
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->i:I

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_1
    sub-int/2addr v0, p1

    .line 33
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/iq;->f(I)I

    move-result p1

    .line 34
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->c:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->d:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public declared-synchronized a(J)V
    .locals 2

    monitor-enter p0

    .line 155
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->n:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(JIJILcom/google/vr/sdk/widgets/video/deps/dc$a;)V
    .locals 5

    monitor-enter p0

    .line 104
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_0

    .line 106
    monitor-exit p0

    return-void

    .line 107
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->o:Z

    .line 108
    :cond_1
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->p:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/iq;->a(J)V

    .line 110
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->i:I

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/iq;->f(I)I

    move-result v0

    .line 111
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->f:[J

    aput-wide p1, v3, v0

    .line 112
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->c:[J

    aput-wide p4, p1, v0

    .line 113
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->d:[I

    aput p6, p2, v0

    .line 114
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->e:[I

    aput p3, p2, v0

    .line 115
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->g:[Lcom/google/vr/sdk/widgets/video/deps/dc$a;

    aput-object p7, p2, v0

    .line 116
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->h:[Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->q:Lcom/google/vr/sdk/widgets/video/deps/l;

    aput-object p3, p2, v0

    .line 117
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->b:[I

    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->r:I

    aput p3, p2, v0

    .line 118
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->i:I

    add-int/2addr p2, v2

    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->i:I

    .line 119
    iget p3, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->a:I

    if-ne p2, p3, :cond_3

    add-int/lit16 p2, p3, 0x3e8

    .line 121
    new-array p4, p2, [I

    .line 122
    new-array p5, p2, [J

    .line 123
    new-array p6, p2, [J

    .line 124
    new-array p7, p2, [I

    .line 125
    new-array v0, p2, [I

    .line 126
    new-array v2, p2, [Lcom/google/vr/sdk/widgets/video/deps/dc$a;

    .line 127
    new-array v3, p2, [Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 128
    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->k:I

    sub-int/2addr p3, v4

    .line 129
    invoke-static {p1, v4, p5, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->f:[J

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->k:I

    invoke-static {p1, v4, p6, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->e:[I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->k:I

    invoke-static {p1, v4, p7, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 132
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->d:[I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->k:I

    invoke-static {p1, v4, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->g:[Lcom/google/vr/sdk/widgets/video/deps/dc$a;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->k:I

    invoke-static {p1, v4, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->h:[Lcom/google/vr/sdk/widgets/video/deps/l;

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->k:I

    invoke-static {p1, v4, v3, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->b:[I

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->k:I

    invoke-static {p1, v4, p4, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->k:I

    .line 137
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->c:[J

    invoke-static {v4, v1, p5, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 138
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->f:[J

    invoke-static {v4, v1, p6, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->e:[I

    invoke-static {v4, v1, p7, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->d:[I

    invoke-static {v4, v1, v0, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->g:[Lcom/google/vr/sdk/widgets/video/deps/dc$a;

    invoke-static {v4, v1, v2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->h:[Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-static {v4, v1, v3, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->b:[I

    invoke-static {v4, v1, p4, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 144
    iput-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->c:[J

    .line 145
    iput-object p6, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->f:[J

    .line 146
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->e:[I

    .line 147
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->d:[I

    .line 148
    iput-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->g:[Lcom/google/vr/sdk/widgets/video/deps/dc$a;

    .line 149
    iput-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->h:[Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 150
    iput-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->b:[I

    .line 151
    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->k:I

    .line 152
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->a:I

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->i:I

    .line 153
    iput p2, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->i:I

    .line 16
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->j:I

    .line 17
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->k:I

    .line 18
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->l:I

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->o:Z

    const-wide/high16 v1, -0x8000000000000000L

    .line 20
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->m:J

    .line 21
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->n:J

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 23
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->q:Lcom/google/vr/sdk/widgets/video/deps/l;

    .line 24
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->p:Z

    :cond_0
    return-void
.end method

.method public declared-synchronized a(Lcom/google/vr/sdk/widgets/video/deps/l;)Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 97
    :try_start_0
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return v1

    .line 99
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->p:Z

    .line 100
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->q:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-static {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 101
    monitor-exit p0

    return v1

    .line 102
    :cond_1
    :try_start_2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->q:Lcom/google/vr/sdk/widgets/video/deps/l;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->j:I

    return v0
.end method

.method public declared-synchronized b(JZZ)J
    .locals 10

    monitor-enter p0

    .line 83
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->i:I

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->f:[J

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->k:I

    aget-wide v6, v3, v5

    cmp-long v3, p1, v6

    if-gez v3, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 85
    iget p4, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->l:I

    if-eq p4, v0, :cond_1

    add-int/lit8 v0, p4, 0x1

    :cond_1
    move v6, v0

    move-object v4, p0

    move-wide v7, p1

    move v9, p3

    .line 86
    invoke-direct/range {v4 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/iq;->a(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    .line 88
    monitor-exit p0

    return-wide v1

    .line 89
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/iq;->d(I)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    .line 84
    :cond_3
    :goto_0
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->r:I

    return-void
.end method

.method public declared-synchronized b(J)Z
    .locals 7

    monitor-enter p0

    .line 157
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 158
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->m:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, p1, v3

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    monitor-exit p0

    return v1

    .line 159
    :cond_1
    :try_start_1
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->m:J

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->l:I

    .line 160
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/iq;->e(I)J

    move-result-wide v5

    .line 161
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v3, p1

    if-ltz v0, :cond_2

    .line 163
    monitor-exit p0

    return v1

    .line 164
    :cond_2
    :try_start_2
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->i:I

    add-int/lit8 v1, v0, -0x1

    .line 165
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/iq;->f(I)I

    move-result v1

    .line 166
    :cond_3
    :goto_0
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->l:I

    if-le v0, v3, :cond_4

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->f:[J

    aget-wide v4, v3, v1

    cmp-long v3, v4, p1

    if-ltz v3, :cond_4

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 170
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->a:I

    sub-int/2addr v1, v2

    goto :goto_0

    .line 171
    :cond_4
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->j:I

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/iq;->a(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()I
    .locals 2

    .line 38
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->j:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->l:I

    add-int/2addr v0, v1

    return v0
.end method

.method public declared-synchronized c(I)Z
    .locals 2

    monitor-enter p0

    .line 79
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->j:I

    if-gt v0, p1, :cond_0

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->i:I

    add-int/2addr v1, v0

    if-gt p1, v1, :cond_0

    sub-int/2addr p1, v0

    .line 80
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 81
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 82
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public d()I
    .locals 2

    .line 39
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->l:I

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/iq;->f(I)I

    move-result v0

    .line 40
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/iq;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->b:[I

    aget v0, v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->r:I

    :goto_0
    return v0
.end method

.method public declared-synchronized e()Z
    .locals 2

    monitor-enter p0

    .line 41
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->l:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 1

    monitor-enter p0

    .line 42
    :try_start_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->p:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->q:Lcom/google/vr/sdk/widgets/video/deps/l;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized g()J
    .locals 2

    monitor-enter p0

    .line 43
    :try_start_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->n:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized h()J
    .locals 3

    monitor-enter p0

    .line 44
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->i:I

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->f:[J

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->k:I

    aget-wide v1, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v1

    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 45
    :try_start_0
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()I
    .locals 2

    monitor-enter p0

    .line 76
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->i:I

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->l:I

    sub-int v1, v0, v1

    .line 77
    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized k()J
    .locals 2

    monitor-enter p0

    .line 90
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 91
    monitor-exit p0

    return-wide v0

    .line 92
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/iq;->d(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized l()J
    .locals 2

    monitor-enter p0

    .line 93
    :try_start_0
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/iq;->i:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    .line 94
    monitor-exit p0

    return-wide v0

    .line 95
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/iq;->d(I)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
