.class public Lcom/google/ads/interactivemedia/v3/internal/ss;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/ix;


# instance fields
.field private A:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private B:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private C:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private D:I

.field private E:Z

.field private F:Z

.field private G:J

.field private H:Z

.field private I:Lcom/google/ads/interactivemedia/v3/internal/hr;

.field private final a:Lcom/google/ads/interactivemedia/v3/internal/sp;

.field private final b:Lcom/google/ads/interactivemedia/v3/internal/sq;

.field private final c:Landroid/os/Looper;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/hq;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/hn;

.field private f:Lcom/google/ads/interactivemedia/v3/internal/sr;

.field private g:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private h:I

.field private i:[I

.field private j:[J

.field private k:[I

.field private l:[I

.field private m:[J

.field private n:[Lcom/google/ads/interactivemedia/v3/internal/iw;

.field private o:[Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:J

.field private u:J

.field private v:J

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/zt;Landroid/os/Looper;Lcom/google/ads/interactivemedia/v3/internal/hq;Lcom/google/ads/interactivemedia/v3/internal/hn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->c:Landroid/os/Looper;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->d:Lcom/google/ads/interactivemedia/v3/internal/hq;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->e:Lcom/google/ads/interactivemedia/v3/internal/hn;

    new-instance p2, Lcom/google/ads/interactivemedia/v3/internal/sp;

    .line 1
    invoke-direct {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/sp;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zt;)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->a:Lcom/google/ads/interactivemedia/v3/internal/sp;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/sq;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/sq;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->b:Lcom/google/ads/interactivemedia/v3/internal/sq;

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->h:I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->i:[I

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->j:[J

    new-array p2, p1, [J

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->m:[J

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->l:[I

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->k:[I

    new-array p2, p1, [Lcom/google/ads/interactivemedia/v3/internal/iw;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->n:[Lcom/google/ads/interactivemedia/v3/internal/iw;

    new-array p1, p1, [Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->o:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->t:J

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->u:J

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->v:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->y:Z

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->x:Z

    return-void
.end method

.method private final a(IIJZ)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_3

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->m:[J

    .line 51
    aget-wide v4, v3, p1

    cmp-long v3, v4, p3

    if-gtz v3, :cond_3

    if-eqz p5, :cond_0

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->l:[I

    .line 52
    aget v3, v3, p1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->h:I

    if-ne p1, v3, :cond_2

    const/4 p1, 0x0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private final declared-synchronized a(Lcom/google/ads/interactivemedia/v3/internal/da;Lcom/google/ads/interactivemedia/v3/internal/he;ZZLcom/google/ads/interactivemedia/v3/internal/sq;)I
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p2, Lcom/google/ads/interactivemedia/v3/internal/he;->c:Z

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->u()Z

    move-result v0

    const/4 v1, -0x5

    const/4 v2, -0x3

    const/4 v3, -0x4

    if-nez v0, :cond_4

    if-nez p4, :cond_3

    iget-boolean p4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->w:Z

    if-eqz p4, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->B:Lcom/google/ads/interactivemedia/v3/internal/cz;

    if-eqz p2, :cond_2

    if-nez p3, :cond_1

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->g:Lcom/google/ads/interactivemedia/v3/internal/cz;

    if-eq p2, p3, :cond_2

    .line 83
    :cond_1
    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/da;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v1

    :cond_2
    monitor-exit p0

    return v2

    :cond_3
    :goto_0
    const/4 p1, 0x4

    .line 82
    :try_start_1
    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/gz;->a(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    .line 83
    :cond_4
    :try_start_2
    iget p4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I

    invoke-direct {p0, p4}, Lcom/google/ads/interactivemedia/v3/internal/ss;->i(I)I

    move-result p4

    if-nez p3, :cond_9

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->o:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 84
    aget-object p3, p3, p4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->g:Lcom/google/ads/interactivemedia/v3/internal/cz;

    if-eq p3, v0, :cond_5

    goto :goto_1

    .line 86
    :cond_5
    invoke-direct {p0, p4}, Lcom/google/ads/interactivemedia/v3/internal/ss;->f(I)Z

    move-result p1

    const/4 p3, 0x1

    if-nez p1, :cond_6

    iput-boolean p3, p2, Lcom/google/ads/interactivemedia/v3/internal/he;->c:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :cond_6
    :try_start_3
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->l:[I

    .line 87
    aget p1, p1, p4

    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/gz;->a(I)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->m:[J

    .line 88
    aget-wide v0, p1, p4

    iput-wide v0, p2, Lcom/google/ads/interactivemedia/v3/internal/he;->d:J

    iget-wide v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->t:J

    cmp-long p1, v0, v4

    if-gez p1, :cond_7

    const/high16 p1, -0x80000000

    .line 89
    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/gz;->b(I)V

    .line 90
    :cond_7
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/he;->f()Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p1, :cond_8

    monitor-exit p0

    return v3

    :cond_8
    :try_start_4
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->k:[I

    .line 91
    aget p1, p1, p4

    iput p1, p5, Lcom/google/ads/interactivemedia/v3/internal/sq;->a:I

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->j:[J

    .line 92
    aget-wide v0, p1, p4

    iput-wide v0, p5, Lcom/google/ads/interactivemedia/v3/internal/sq;->b:J

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->n:[Lcom/google/ads/interactivemedia/v3/internal/iw;

    .line 93
    aget-object p1, p1, p4

    iput-object p1, p5, Lcom/google/ads/interactivemedia/v3/internal/sq;->c:Lcom/google/ads/interactivemedia/v3/internal/iw;

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v3

    .line 84
    :cond_9
    :goto_1
    :try_start_5
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->o:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 85
    aget-object p2, p2, p4

    invoke-direct {p0, p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/da;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized a(JIJILcom/google/ads/interactivemedia/v3/internal/iw;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->p:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->i(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->j:[J

    .line 5
    aget-wide v4, v3, v0

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->k:[I

    aget v0, v3, v0

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v4, p4

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    :cond_1
    const/high16 v0, 0x20000000

    and-int/2addr v0, p3

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->w:Z

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->v:J

    .line 6
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->v:J

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->p:I

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->i(I)I

    move-result v0

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->m:[J

    .line 7
    aput-wide p1, v3, v0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->j:[J

    .line 8
    aput-wide p4, p1, v0

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->k:[I

    .line 9
    aput p6, p2, v0

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->l:[I

    .line 10
    aput p3, p2, v0

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->n:[Lcom/google/ads/interactivemedia/v3/internal/iw;

    .line 11
    aput-object p7, p2, v0

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->o:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->B:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 12
    aput-object p3, p2, v0

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->i:[I

    iget p4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->D:I

    .line 13
    aput p4, p2, v0

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->C:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->p:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->p:I

    iget p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->h:I

    if-ne p2, p3, :cond_3

    add-int/lit16 p2, p3, 0x3e8

    .line 14
    new-array p4, p2, [I

    .line 15
    new-array p5, p2, [J

    .line 16
    new-array p6, p2, [J

    .line 17
    new-array p7, p2, [I

    .line 18
    new-array v0, p2, [I

    .line 19
    new-array v1, p2, [Lcom/google/ads/interactivemedia/v3/internal/iw;

    .line 20
    new-array v3, p2, [Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->r:I

    sub-int/2addr p3, v4

    .line 21
    invoke-static {p1, v4, p5, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->m:[J

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->r:I

    .line 22
    invoke-static {p1, v4, p6, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->l:[I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->r:I

    .line 23
    invoke-static {p1, v4, p7, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->k:[I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->r:I

    .line 24
    invoke-static {p1, v4, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->n:[Lcom/google/ads/interactivemedia/v3/internal/iw;

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->r:I

    .line 25
    invoke-static {p1, v4, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->o:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->r:I

    .line 26
    invoke-static {p1, v4, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->i:[I

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->r:I

    .line 27
    invoke-static {p1, v4, p4, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->r:I

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->j:[J

    .line 28
    invoke-static {v4, v2, p5, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->m:[J

    .line 29
    invoke-static {v4, v2, p6, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->l:[I

    .line 30
    invoke-static {v4, v2, p7, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->k:[I

    .line 31
    invoke-static {v4, v2, v0, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->n:[Lcom/google/ads/interactivemedia/v3/internal/iw;

    .line 32
    invoke-static {v4, v2, v1, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->o:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 33
    invoke-static {v4, v2, v3, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->i:[I

    .line 34
    invoke-static {v4, v2, p4, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->j:[J

    iput-object p6, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->m:[J

    iput-object p7, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->l:[I

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->k:[I

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->n:[Lcom/google/ads/interactivemedia/v3/internal/iw;

    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->o:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->i:[I

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->r:I

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final a(Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/da;)V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->g:Lcom/google/ads/interactivemedia/v3/internal/cz;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 69
    :cond_0
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/cz;->o:Lcom/google/ads/interactivemedia/v3/internal/hk;

    .line 0
    :goto_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->g:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 70
    iget-object v2, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->o:Lcom/google/ads/interactivemedia/v3/internal/hk;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->d:Lcom/google/ads/interactivemedia/v3/internal/hq;

    .line 71
    invoke-interface {v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/hq;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v3

    iput-object v3, p2, Lcom/google/ads/interactivemedia/v3/internal/da;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->I:Lcom/google/ads/interactivemedia/v3/internal/hr;

    iput-object v3, p2, Lcom/google/ads/interactivemedia/v3/internal/da;->b:Lcom/google/ads/interactivemedia/v3/internal/hr;

    if-eqz v0, :cond_2

    .line 72
    invoke-static {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->d:Lcom/google/ads/interactivemedia/v3/internal/hq;

    .line 73
    invoke-interface {p1}, Lcom/google/ads/interactivemedia/v3/internal/hq;->d()Lcom/google/ads/interactivemedia/v3/internal/hr;

    move-result-object p1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->d:Lcom/google/ads/interactivemedia/v3/internal/hq;

    .line 74
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/abm;->i(Ljava/lang/String;)I

    .line 74
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/hq;->c()Lcom/google/ads/interactivemedia/v3/internal/hr;

    move-result-object p1

    .line 73
    :goto_2
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->I:Lcom/google/ads/interactivemedia/v3/internal/hr;

    iput-object p1, p2, Lcom/google/ads/interactivemedia/v3/internal/da;->b:Lcom/google/ads/interactivemedia/v3/internal/hr;

    return-void
.end method

.method private final declared-synchronized b(JZZ)J
    .locals 9

    monitor-enter p0

    :try_start_0
    iget p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->p:I

    const-wide/16 v0, -0x1

    if-eqz p3, :cond_3

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->m:[J

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->r:I

    .line 35
    aget-wide v5, v2, v4

    cmp-long v2, p1, v5

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    iget p4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I

    if-eq p4, p3, :cond_1

    add-int/lit8 p3, p4, 0x1

    :cond_1
    move v5, p3

    const/4 v8, 0x0

    move-object v3, p0

    move-wide v6, p1

    .line 36
    invoke-direct/range {v3 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(IIJZ)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p2, -0x1

    if-ne p1, p2, :cond_2

    monitor-exit p0

    return-wide v0

    .line 37
    :cond_2
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->g(I)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide p1

    .line 35
    :cond_3
    :goto_0
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized c(J)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->p:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->u:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v0, p1, v3

    monitor-exit p0

    if-lez v0, :cond_0

    return v1

    :cond_0
    return v2

    :cond_1
    :try_start_1
    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->u:J

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I

    .line 2
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->h(I)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v3, p1

    if-ltz v0, :cond_2

    monitor-exit p0

    return v2

    :cond_2
    :try_start_2
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->p:I

    add-int/lit8 v2, v0, -0x1

    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/ss;->i(I)I

    move-result v2

    :cond_3
    :goto_0
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I

    if-le v0, v3, :cond_4

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->m:[J

    .line 3
    aget-wide v4, v3, v2

    cmp-long v3, v4, p1

    if-ltz v3, :cond_4

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->h:I

    add-int/2addr v2, v3

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->q:I

    add-int/2addr p1, v0

    .line 4
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->e(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized c(Lcom/google/ads/interactivemedia/v3/internal/cz;)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->y:Z

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->B:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 110
    invoke-static {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->C:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 111
    invoke-static {p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->C:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->B:Lcom/google/ads/interactivemedia/v3/internal/cz;

    goto :goto_0

    .line 113
    :cond_1
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->B:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 111
    :goto_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->B:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 112
    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    .line 113
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/abm;->d(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->E:Z

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->F:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final e(I)J
    .locals 7

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->d()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 p1, 0x1

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->p:I

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I

    sub-int/2addr v2, v3

    if-gt v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 47
    :goto_0
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->p:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->p:I

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->u:J

    .line 48
    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/ss;->h(I)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->v:J

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->w:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->w:Z

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->p:I

    if-eqz p1, :cond_2

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->i(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->j:[J

    .line 49
    aget-wide v1, v0, p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->k:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1

    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private final f(I)Z
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->I:Lcom/google/ads/interactivemedia/v3/internal/hr;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->l:[I

    .line 67
    aget p1, v0, p1

    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method private final g(I)J
    .locals 4

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->u:J

    .line 40
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->h(I)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->u:J

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->p:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->p:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->q:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->q:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->r:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->r:I

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->h:I

    if-lt v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->r:I

    :cond_0
    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I

    sub-int/2addr v3, p1

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I

    if-gez v3, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I

    :cond_1
    if-nez v0, :cond_3

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    add-int/lit8 v2, v2, -0x1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->j:[J

    .line 41
    aget-wide v0, p1, v2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->k:[I

    aget p1, p1, v2

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0

    :cond_3
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->j:[J

    .line 42
    aget-wide v0, p1, v1

    return-wide v0
.end method

.method private final h(I)J
    .locals 7

    const-wide/high16 v0, -0x8000000000000000L

    if-nez p1, :cond_0

    return-wide v0

    :cond_0
    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2}, Lcom/google/ads/interactivemedia/v3/internal/ss;->i(I)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->m:[J

    .line 61
    aget-wide v5, v4, v2

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->l:[I

    .line 62
    aget v4, v4, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->h:I

    add-int/2addr v2, v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-wide v0
.end method

.method private final i(I)I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->r:I

    add-int/2addr v0, p1

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->h:I

    if-ge v0, p1, :cond_0

    return v0

    :cond_0
    sub-int/2addr v0, p1

    return v0
.end method

.method private final declared-synchronized r()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->a:Lcom/google/ads/interactivemedia/v3/internal/sp;

    .line 98
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/sp;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized s()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    .line 38
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->g(I)J

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

.method private final t()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->I:Lcom/google/ads/interactivemedia/v3/internal/hr;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->I:Lcom/google/ads/interactivemedia/v3/internal/hr;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->g:Lcom/google/ads/interactivemedia/v3/internal/cz;

    :cond_0
    return-void
.end method

.method private final u()Z
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->p:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Lcom/google/ads/interactivemedia/v3/internal/da;Lcom/google/ads/interactivemedia/v3/internal/he;ZZ)I
    .locals 6

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->b:Lcom/google/ads/interactivemedia/v3/internal/sq;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 79
    invoke-direct/range {v0 .. v5}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(Lcom/google/ads/interactivemedia/v3/internal/da;Lcom/google/ads/interactivemedia/v3/internal/he;ZZLcom/google/ads/interactivemedia/v3/internal/sq;)I

    move-result p1

    const/4 p3, -0x4

    if-ne p1, p3, :cond_2

    .line 80
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/gz;->c()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/he;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->a:Lcom/google/ads/interactivemedia/v3/internal/sp;

    iget-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->b:Lcom/google/ads/interactivemedia/v3/internal/sq;

    .line 81
    invoke-virtual {p1, p2, p4}, Lcom/google/ads/interactivemedia/v3/internal/sp;->a(Lcom/google/ads/interactivemedia/v3/internal/he;Lcom/google/ads/interactivemedia/v3/internal/sq;)V

    return p3

    :cond_1
    :goto_0
    const/4 p1, -0x4

    :cond_2
    return p1
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/zl;IZ)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/la;->a(Lcom/google/ads/interactivemedia/v3/internal/ix;Lcom/google/ads/interactivemedia/v3/internal/zl;IZ)I

    move-result p1

    return p1
.end method

.method public final a()V
    .locals 1

    const/4 v0, 0x1

    .line 94
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(Z)V

    .line 95
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->t()V

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->D:I

    return-void
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->t:J

    return-void
.end method

.method public a(JIIILcom/google/ads/interactivemedia/v3/internal/iw;)V
    .locals 11

    move-object v8, p0

    iget-boolean v0, v8, Lcom/google/ads/interactivemedia/v3/internal/ss;->z:Z

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/google/ads/interactivemedia/v3/internal/ss;->A:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 101
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    :cond_0
    and-int/lit8 v0, p3, 0x1

    iget-boolean v1, v8, Lcom/google/ads/interactivemedia/v3/internal/ss;->x:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput-boolean v2, v8, Lcom/google/ads/interactivemedia/v3/internal/ss;->x:Z

    :cond_2
    iget-wide v3, v8, Lcom/google/ads/interactivemedia/v3/internal/ss;->G:J

    add-long/2addr v3, p1

    iget-boolean v1, v8, Lcom/google/ads/interactivemedia/v3/internal/ss;->E:Z

    if-eqz v1, :cond_5

    iget-wide v5, v8, Lcom/google/ads/interactivemedia/v3/internal/ss;->t:J

    cmp-long v1, v3, v5

    if-gez v1, :cond_3

    return-void

    :cond_3
    if-nez v0, :cond_5

    iget-boolean v1, v8, Lcom/google/ads/interactivemedia/v3/internal/ss;->F:Z

    if-nez v1, :cond_4

    iget-object v1, v8, Lcom/google/ads/interactivemedia/v3/internal/ss;->B:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 102
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x32

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Overriding unexpected non-sync sample for format: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "SampleQueue"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, v8, Lcom/google/ads/interactivemedia/v3/internal/ss;->F:Z

    :cond_4
    or-int/lit8 v1, p3, 0x1

    move v5, v1

    goto :goto_0

    :cond_5
    move v5, p3

    :goto_0
    iget-boolean v1, v8, Lcom/google/ads/interactivemedia/v3/internal/ss;->H:Z

    if-eqz v1, :cond_8

    if-eqz v0, :cond_7

    .line 103
    invoke-direct {p0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/ss;->c(J)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    iput-boolean v2, v8, Lcom/google/ads/interactivemedia/v3/internal/ss;->H:Z

    goto :goto_2

    :cond_7
    :goto_1
    return-void

    :cond_8
    :goto_2
    iget-object v0, v8, Lcom/google/ads/interactivemedia/v3/internal/ss;->a:Lcom/google/ads/interactivemedia/v3/internal/sp;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/sp;->c()J

    move-result-wide v0

    move v6, p4

    int-to-long v9, v6

    sub-long/2addr v0, v9

    move/from16 v2, p5

    int-to-long v9, v2

    sub-long v9, v0, v9

    move-object v0, p0

    move-wide v1, v3

    move v3, v5

    move-wide v4, v9

    move-object/from16 v7, p6

    .line 104
    invoke-direct/range {v0 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(JIJILcom/google/ads/interactivemedia/v3/internal/iw;)V

    return-void
.end method

.method public final a(JZZ)V
    .locals 1

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->a:Lcom/google/ads/interactivemedia/v3/internal/sp;

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/google/ads/interactivemedia/v3/internal/ss;->b(JZZ)J

    move-result-wide p1

    .line 44
    invoke-virtual {p3, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/sp;->b(J)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/la;->a(Lcom/google/ads/interactivemedia/v3/internal/ix;Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V
    .locals 2

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->b(Lcom/google/ads/interactivemedia/v3/internal/cz;)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->z:Z

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->A:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 54
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->c(Lcom/google/ads/interactivemedia/v3/internal/cz;)Z

    move-result p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->f:Lcom/google/ads/interactivemedia/v3/internal/sr;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 55
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/sr;->o()V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/sr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->f:Lcom/google/ads/interactivemedia/v3/internal/sr;

    return-void
.end method

.method public final a(Z)V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->a:Lcom/google/ads/interactivemedia/v3/internal/sp;

    .line 97
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/sp;->a()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->p:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->q:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->r:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->x:Z

    const-wide/high16 v2, -0x8000000000000000L

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->t:J

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->u:J

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->v:J

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->w:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->C:Lcom/google/ads/interactivemedia/v3/internal/cz;

    if-eqz p1, :cond_0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->A:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->B:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->y:Z

    :cond_0
    return-void
.end method

.method public final declared-synchronized a(JZ)Z
    .locals 8

    monitor-enter p0

    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->r()V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->i(I)I

    move-result v2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->u()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->m:[J

    .line 107
    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->v:J

    cmp-long v3, p1, v0

    if-lez v3, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    iget p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->p:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    .line 108
    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(IIJZ)I

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    monitor-exit p0

    return v7

    :cond_1
    :try_start_1
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->t:J

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :cond_2
    monitor-exit p0

    return v7

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(JZ)I
    .locals 8

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->i(I)I

    move-result v2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->u()Z

    move-result v0

    const/4 v7, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->m:[J

    .line 63
    aget-wide v3, v0, v2

    cmp-long v0, p1, v3

    if-gez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->v:J

    cmp-long v3, p1, v0

    if-lez v3, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    .line 64
    :cond_1
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->p:I

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr p1, p2

    monitor-exit p0

    return p1

    .line 63
    :cond_2
    :goto_0
    :try_start_1
    iget p3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->p:I

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I

    sub-int v3, p3, v0

    const/4 v6, 0x1

    move-object v1, p0

    move-wide v4, p1

    .line 64
    invoke-direct/range {v1 .. v6}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(IIJZ)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, -0x1

    monitor-exit p0

    if-ne p1, p2, :cond_3

    return v7

    :cond_3
    return p1

    .line 63
    :cond_4
    :goto_1
    monitor-exit p0

    return v7

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/zl;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->a:Lcom/google/ads/interactivemedia/v3/internal/sp;

    .line 99
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/sp;->a(Lcom/google/ads/interactivemedia/v3/internal/zl;IZ)I

    move-result p1

    return p1
.end method

.method protected b(Lcom/google/ads/interactivemedia/v3/internal/cz;)Lcom/google/ads/interactivemedia/v3/internal/cz;
    .locals 5

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->G:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 56
    iget-wide v0, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->p:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 57
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a()Lcom/google/ads/interactivemedia/v3/internal/cy;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->p:J

    iget-wide v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->G:J

    add-long/2addr v1, v3

    .line 58
    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(J)V

    .line 59
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    .line 96
    invoke-virtual {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(Z)V

    return-void
.end method

.method public final b(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->a:Lcom/google/ads/interactivemedia/v3/internal/sp;

    .line 50
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->e(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/sp;->a(J)V

    return-void
.end method

.method public final b(J)V
    .locals 3

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->G:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->G:J

    .line 109
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->p()V

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->a:Lcom/google/ads/interactivemedia/v3/internal/sp;

    .line 100
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/sp;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    return-void
.end method

.method public final declared-synchronized b(Z)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->u()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    const/4 v0, 0x0

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->w:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->B:Lcom/google/ads/interactivemedia/v3/internal/cz;

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->g:Lcom/google/ads/interactivemedia/v3/internal/cz;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :cond_3
    :try_start_1
    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I

    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->i(I)I

    move-result p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->o:[Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 65
    aget-object v0, v0, p1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->g:Lcom/google/ads/interactivemedia/v3/internal/cz;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v0, v2, :cond_4

    monitor-exit p0

    return v1

    .line 66
    :cond_4
    :try_start_2
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->f(I)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->H:Z

    return-void
.end method

.method public final declared-synchronized c(I)Z
    .locals 3

    monitor-enter p0

    .line 105
    :try_start_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->r()V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->q:I

    if-lt p1, v0, :cond_1

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->p:I

    add-int/2addr v1, v0

    if-le p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/high16 v1, -0x8000000000000000L

    iput-wide v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->t:J

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    :goto_0
    monitor-exit p0

    return p1

    :cond_1
    :goto_1
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final d()I
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->q:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->p:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized d(I)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    :try_start_0
    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->p:I

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 114
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final e()V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->o()V

    .line 78
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->t()V

    return-void
.end method

.method public final f()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->I:Lcom/google/ads/interactivemedia/v3/internal/hr;

    if-nez v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/hr;->a()Lcom/google/ads/interactivemedia/v3/internal/hl;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    throw v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->q:I

    return v0
.end method

.method public final h()I
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->q:I

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized i()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->i(I)I

    move-result v0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->i:[I

    .line 76
    aget v0, v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->D:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j()Lcom/google/ads/interactivemedia/v3/internal/cz;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->y:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->B:Lcom/google/ads/interactivemedia/v3/internal/cz;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized k()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->v:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->w:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized m()J
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->p:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->m:[J

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->r:I

    .line 60
    aget-wide v1, v0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final n()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->a:Lcom/google/ads/interactivemedia/v3/internal/sp;

    .line 46
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->q()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/sp;->b(J)V

    return-void
.end method

.method public final o()V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->a:Lcom/google/ads/interactivemedia/v3/internal/sp;

    .line 45
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->s()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/sp;->b(J)V

    return-void
.end method

.method protected final p()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->z:Z

    return-void
.end method

.method public final declared-synchronized q()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ss;->s:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    monitor-exit p0

    return-wide v0

    .line 39
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->g(I)J

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
