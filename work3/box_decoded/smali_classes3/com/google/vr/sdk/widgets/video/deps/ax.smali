.class final Lcom/google/vr/sdk/widgets/video/deps/ax;
.super Ljava/lang/Object;
.source "AudioTrackPositionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/ax$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/ax$a;

.field private final b:[J

.field private c:Landroid/media/AudioTrack;

.field private d:I

.field private e:I

.field private f:Lcom/google/vr/sdk/widgets/video/deps/aw;

.field private g:I

.field private h:Z

.field private i:J

.field private j:J

.field private k:J

.field private l:Ljava/lang/reflect/Method;

.field private m:J

.field private n:Z

.field private o:Z

.field private p:J

.field private q:J

.field private r:J

.field private s:J

.field private t:I

.field private u:I

.field private v:J

.field private w:J

.field private x:J

.field private y:J


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/ax$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/ax$a;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->a:Lcom/google/vr/sdk/widgets/video/deps/ax$a;

    .line 3
    sget p1, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v0, 0x12

    if-lt p1, v0, :cond_0

    .line 4
    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->l:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/16 p1, 0xa

    new-array p1, p1, [J

    .line 7
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->b:[J

    return-void
.end method

.method private a(JJ)V
    .locals 11

    .line 97
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->f:Lcom/google/vr/sdk/widgets/video/deps/aw;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/aw;

    .line 98
    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/aw;->a(J)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/aw;->f()J

    move-result-wide v5

    .line 101
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/aw;->g()J

    move-result-wide v3

    sub-long v1, v5, p1

    .line 102
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/32 v7, 0x4c4b40

    cmp-long v9, v1, v7

    if-lez v9, :cond_1

    .line 103
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->a:Lcom/google/vr/sdk/widgets/video/deps/ax$a;

    move-wide v7, p1

    move-wide v9, p3

    invoke-interface/range {v2 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/ax$a;->b(JJJJ)V

    .line 104
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/aw;->a()V

    goto :goto_0

    .line 105
    :cond_1
    invoke-direct {p0, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/ax;->g(J)J

    move-result-wide v1

    sub-long/2addr v1, p3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v9, v1, v7

    if-lez v9, :cond_2

    .line 106
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->a:Lcom/google/vr/sdk/widgets/video/deps/ax$a;

    move-wide v7, p1

    move-wide v9, p3

    invoke-interface/range {v2 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/ax$a;->a(JJJJ)V

    .line 107
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/aw;->a()V

    goto :goto_0

    .line 108
    :cond_2
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/aw;->b()V

    :goto_0
    return-void
.end method

.method private static a(I)Z
    .locals 2

    .line 132
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private e()V
    .locals 13

    .line 78
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ax;->h()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 81
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 82
    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->k:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x7530

    cmp-long v10, v6, v8

    if-ltz v10, :cond_2

    .line 83
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->b:[J

    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->t:I

    sub-long v8, v0, v4

    aput-wide v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v6, 0xa

    .line 84
    rem-int/2addr v7, v6

    iput v7, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->t:I

    .line 85
    iget v7, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->u:I

    if-ge v7, v6, :cond_1

    add-int/lit8 v7, v7, 0x1

    .line 86
    iput v7, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->u:I

    .line 87
    :cond_1
    iput-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->k:J

    .line 88
    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->j:J

    const/4 v2, 0x0

    .line 89
    :goto_0
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->u:I

    if-ge v2, v3, :cond_2

    .line 90
    iget-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->j:J

    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->b:[J

    aget-wide v9, v8, v2

    int-to-long v11, v3

    div-long/2addr v9, v11

    add-long/2addr v6, v9

    iput-wide v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->j:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_2
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->h:Z

    if-eqz v2, :cond_3

    return-void

    .line 94
    :cond_3
    invoke-direct {p0, v4, v5, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ax;->a(JJ)V

    .line 95
    invoke-direct {p0, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/ax;->f(J)V

    return-void
.end method

.method private f()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 123
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->j:J

    const/4 v2, 0x0

    .line 124
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->u:I

    .line 125
    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->t:I

    .line 126
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->k:J

    return-void
.end method

.method private f(J)V
    .locals 7

    .line 110
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->o:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->l:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->p:J

    sub-long v1, p1, v1

    const-wide/32 v3, 0x7a120

    cmp-long v5, v1, v3

    if-ltz v5, :cond_1

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->c:Landroid/media/AudioTrack;

    .line 112
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->i:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->m:J

    const-wide/16 v2, 0x0

    .line 113
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->m:J

    const-wide/32 v4, 0x4c4b40

    cmp-long v6, v0, v4

    if-lez v6, :cond_0

    .line 115
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->a:Lcom/google/vr/sdk/widgets/video/deps/ax$a;

    invoke-interface {v4, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ax$a;->a(J)V

    .line 116
    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->m:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->l:Ljava/lang/reflect/Method;

    .line 120
    :cond_0
    :goto_0
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->p:J

    :cond_1
    return-void
.end method

.method private g(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    .line 122
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->g:I

    int-to-long v0, v0

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private g()Z
    .locals 5

    .line 128
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->c:Landroid/media/AudioTrack;

    .line 129
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ax;->i()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private h()J
    .locals 2

    .line 133
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ax;->i()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ax;->g(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private i()J
    .locals 11

    .line 134
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->c:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    .line 135
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->v:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 136
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->v:J

    sub-long/2addr v0, v2

    .line 137
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->g:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    .line 138
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->y:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->x:J

    add-long/2addr v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    .line 139
    :cond_0
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    const/4 v2, 0x1

    const-wide/16 v5, 0x0

    if-ne v1, v2, :cond_1

    return-wide v5

    :cond_1
    const-wide v7, 0xffffffffL

    .line 142
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v0

    int-to-long v9, v0

    and-long/2addr v7, v9

    .line 143
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->h:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    cmp-long v0, v7, v5

    if-nez v0, :cond_2

    .line 145
    iget-wide v9, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->q:J

    iput-wide v9, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->s:J

    .line 146
    :cond_2
    iget-wide v9, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->s:J

    add-long/2addr v7, v9

    .line 147
    :cond_3
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/ps;->a:I

    const/16 v2, 0x1c

    if-gt v0, v2, :cond_6

    cmp-long v0, v7, v5

    if-nez v0, :cond_5

    .line 148
    iget-wide v9, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->q:J

    cmp-long v0, v9, v5

    if-lez v0, :cond_5

    const/4 v0, 0x3

    if-ne v1, v0, :cond_5

    .line 149
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->w:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_4

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->w:J

    .line 151
    :cond_4
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->q:J

    return-wide v0

    .line 152
    :cond_5
    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->w:J

    .line 153
    :cond_6
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->q:J

    cmp-long v2, v0, v7

    if-lez v2, :cond_7

    .line 154
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->r:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->r:J

    .line 155
    :cond_7
    iput-wide v7, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->q:J

    .line 156
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->r:J

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    add-long/2addr v7, v0

    return-wide v7
.end method


# virtual methods
.method public a(Z)J
    .locals 7

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->c:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 26
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ax;->e()V

    .line 27
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 28
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->f:Lcom/google/vr/sdk/widgets/video/deps/aw;

    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/vr/sdk/widgets/video/deps/aw;

    .line 29
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/aw;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 30
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/aw;->g()J

    move-result-wide v3

    .line 31
    invoke-direct {p0, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/ax;->g(J)J

    move-result-wide v3

    .line 32
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/aw;->d()Z

    move-result p1

    if-nez p1, :cond_1

    return-wide v3

    .line 34
    :cond_1
    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/aw;->f()J

    move-result-wide v5

    sub-long/2addr v0, v5

    add-long/2addr v3, v0

    return-wide v3

    .line 36
    :cond_2
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->u:I

    if-nez v2, :cond_3

    .line 37
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ax;->h()J

    move-result-wide v0

    goto :goto_0

    .line 38
    :cond_3
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->j:J

    add-long/2addr v0, v2

    :goto_0
    if-nez p1, :cond_4

    .line 40
    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->m:J

    sub-long/2addr v0, v2

    :cond_4
    return-wide v0
.end method

.method public a()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->f:Lcom/google/vr/sdk/widgets/video/deps/aw;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/aw;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/aw;->e()V

    return-void
.end method

.method public a(Landroid/media/AudioTrack;III)V
    .locals 2

    .line 9
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->c:Landroid/media/AudioTrack;

    .line 10
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->d:I

    .line 11
    iput p4, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->e:I

    .line 12
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/aw;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/aw;-><init>(Landroid/media/AudioTrack;)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->f:Lcom/google/vr/sdk/widgets/video/deps/aw;

    .line 13
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->g:I

    .line 14
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/ax;->a(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->h:Z

    .line 15
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->c(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->o:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_0

    .line 16
    div-int/2addr p4, p3

    int-to-long p1, p4

    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ax;->g(J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    move-wide p1, v0

    :goto_0
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->i:J

    const-wide/16 p1, 0x0

    .line 17
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->q:J

    .line 18
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->r:J

    .line 19
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->s:J

    const/4 p3, 0x0

    .line 20
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->n:Z

    .line 21
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->v:J

    .line 22
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->w:J

    .line 23
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->m:J

    return-void
.end method

.method public a(J)Z
    .locals 8

    .line 45
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->c:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    .line 46
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->h:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 48
    iput-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->n:Z

    return v3

    :cond_0
    if-ne v0, v2, :cond_1

    .line 50
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ax;->i()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    return v3

    .line 52
    :cond_1
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->n:Z

    .line 53
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ax;->e(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->n:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    if-eq v0, v2, :cond_2

    .line 54
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->a:Lcom/google/vr/sdk/widgets/video/deps/ax$a;

    if-eqz p1, :cond_2

    .line 55
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->e:I

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->i:J

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/b;->a(J)J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ax$a;->a(IJ)V

    :cond_2
    return v2
.end method

.method public b(J)I
    .locals 4

    .line 57
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ax;->i()J

    move-result-wide v0

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->d:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    sub-long/2addr p1, v0

    long-to-int p2, p1

    .line 58
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->e:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public b()Z
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->c:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()Z
    .locals 5

    .line 69
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ax;->f()V

    .line 70
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->v:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 71
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->f:Lcom/google/vr/sdk/widgets/video/deps/aw;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/aw;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/aw;->e()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(J)Z
    .locals 5

    .line 59
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->w:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->w:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public d()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ax;->f()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->c:Landroid/media/AudioTrack;

    .line 76
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->f:Lcom/google/vr/sdk/widgets/video/deps/aw;

    return-void
.end method

.method public d(J)V
    .locals 4

    .line 62
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ax;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->x:J

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->v:J

    .line 64
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ax;->y:J

    return-void
.end method

.method public e(J)Z
    .locals 3

    .line 66
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ax;->i()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    .line 67
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/ax;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
