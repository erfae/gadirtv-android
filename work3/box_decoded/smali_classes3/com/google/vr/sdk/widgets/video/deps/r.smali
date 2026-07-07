.class final Lcom/google/vr/sdk/widgets/video/deps/r;
.super Ljava/lang/Object;
.source "MediaPeriodQueue.java"


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

.field private final b:Lcom/google/vr/sdk/widgets/video/deps/af$b;

.field private c:J

.field private d:Lcom/google/vr/sdk/widgets/video/deps/af;

.field private e:I

.field private f:Z

.field private g:Lcom/google/vr/sdk/widgets/video/deps/p;

.field private h:Lcom/google/vr/sdk/widgets/video/deps/p;

.field private i:Lcom/google/vr/sdk/widgets/video/deps/p;

.field private j:I

.field private k:Ljava/lang/Object;

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/af$a;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/af$b;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/af$b;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->b:Lcom/google/vr/sdk/widgets/video/deps/af$b;

    .line 4
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/af;->a:Lcom/google/vr/sdk/widgets/video/deps/af;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    return-void
.end method

.method private a(Ljava/lang/Object;)J
    .locals 5

    .line 123
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/af$a;)Lcom/google/vr/sdk/widgets/video/deps/af$a;

    move-result-object v0

    iget v0, v0, Lcom/google/vr/sdk/widgets/video/deps/af$a;->c:I

    .line 124
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->k:Ljava/lang/Object;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 125
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    invoke-virtual {v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 127
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v3, v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(ILcom/google/vr/sdk/widgets/video/deps/af$a;)Lcom/google/vr/sdk/widgets/video/deps/af$a;

    move-result-object v1

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/af$a;->c:I

    if-ne v1, v0, :cond_0

    .line 129
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->l:J

    return-wide v0

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/r;->e()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 132
    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/p;->b:Ljava/lang/Object;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    iget-object p1, v1, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->d:J

    return-wide v0

    .line 134
    :cond_1
    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/r;->e()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_4

    .line 137
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/p;->b:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v2, :cond_3

    .line 139
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v3, v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(ILcom/google/vr/sdk/widgets/video/deps/af$a;)Lcom/google/vr/sdk/widgets/video/deps/af$a;

    move-result-object v1

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/af$a;->c:I

    if-ne v1, v0, :cond_3

    .line 141
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->d:J

    return-wide v0

    .line 142
    :cond_3
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    goto :goto_1

    .line 144
    :cond_4
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->c:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->c:J

    return-wide v0
.end method

.method private a(Ljava/lang/Object;JJ)Lcom/google/vr/sdk/widgets/video/deps/if$a;
    .locals 7

    .line 113
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/af$a;)Lcom/google/vr/sdk/widgets/video/deps/af$a;

    .line 114
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->a(J)I

    move-result v3

    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    .line 116
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->b(J)I

    move-result p2

    if-ne p2, v0, :cond_0

    const-wide/high16 p2, -0x8000000000000000L

    goto :goto_0

    .line 119
    :cond_0
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {p3, p2}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->a(I)J

    move-result-wide p2

    :goto_0
    move-wide v4, p2

    .line 120
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/if$a;

    move-object v0, p2

    move-object v1, p1

    move-wide v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/if$a;-><init>(Ljava/lang/Object;JJ)V

    return-object p2

    .line 121
    :cond_1
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {p2, v3}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->b(I)I

    move-result v4

    .line 122
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/if$a;

    move-object v1, p2

    move-object v2, p1

    move-wide v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/if$a;-><init>(Ljava/lang/Object;IIJ)V

    return-object p2
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/if$a;JJ)Lcom/google/vr/sdk/widgets/video/deps/q;
    .locals 8

    .line 234
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/af$a;)Lcom/google/vr/sdk/widgets/video/deps/af$a;

    .line 235
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    iget-object p4, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    iget p5, p1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->b:I

    iget v0, p1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->c:I

    invoke-virtual {p4, p5, v0}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->b(II)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 238
    :cond_0
    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    iget v2, p1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->b:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->c:I

    iget-wide v6, p1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->d:J

    move-object v0, p0

    move-wide v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Ljava/lang/Object;IIJJ)Lcom/google/vr/sdk/widgets/video/deps/q;

    move-result-object p1

    return-object p1

    .line 239
    :cond_1
    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    iget-wide v4, p1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->d:J

    move-object v0, p0

    move-wide v2, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/r;->b(Ljava/lang/Object;JJ)Lcom/google/vr/sdk/widgets/video/deps/q;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/p;J)Lcom/google/vr/sdk/widgets/video/deps/q;
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    .line 169
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    .line 170
    iget-boolean v2, v1, Lcom/google/vr/sdk/widgets/video/deps/q;->e:Z

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_4

    .line 171
    iget-object v2, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v6, v1, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    invoke-virtual {v2, v6}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;)I

    move-result v10

    .line 172
    iget-object v9, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v11, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    iget-object v12, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->b:Lcom/google/vr/sdk/widgets/video/deps/af$b;

    iget v13, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->e:I

    iget-boolean v14, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->f:Z

    .line 173
    invoke-virtual/range {v9 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(ILcom/google/vr/sdk/widgets/video/deps/af$a;Lcom/google/vr/sdk/widgets/video/deps/af$b;IZ)I

    move-result v2

    if-ne v2, v4, :cond_0

    return-object v5

    .line 176
    :cond_0
    iget-object v4, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v6, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    .line 177
    invoke-virtual {v4, v2, v6, v3}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(ILcom/google/vr/sdk/widgets/video/deps/af$a;Z)Lcom/google/vr/sdk/widgets/video/deps/af$a;

    move-result-object v3

    iget v12, v3, Lcom/google/vr/sdk/widgets/video/deps/af$a;->c:I

    .line 178
    iget-object v3, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/af$a;->b:Ljava/lang/Object;

    .line 179
    iget-object v4, v1, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v6, v4, Lcom/google/vr/sdk/widgets/video/deps/if$a;->d:J

    .line 180
    iget-object v4, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v9, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->b:Lcom/google/vr/sdk/widgets/video/deps/af$b;

    invoke-virtual {v4, v12, v9}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(ILcom/google/vr/sdk/widgets/video/deps/af$b;)Lcom/google/vr/sdk/widgets/video/deps/af$b;

    move-result-object v4

    iget v4, v4, Lcom/google/vr/sdk/widgets/video/deps/af$b;->f:I

    const-wide/16 v9, 0x0

    if-ne v4, v2, :cond_3

    .line 182
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/p;->a()J

    move-result-wide v2

    iget-wide v6, v1, Lcom/google/vr/sdk/widgets/video/deps/q;->d:J

    add-long/2addr v2, v6

    sub-long v2, v2, p2

    .line 183
    iget-object v1, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v4, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->b:Lcom/google/vr/sdk/widgets/video/deps/af$b;

    iget-object v11, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    .line 184
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v15

    move-object v9, v1

    move-object v10, v4

    .line 185
    invoke-virtual/range {v9 .. v16}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Lcom/google/vr/sdk/widgets/video/deps/af$b;Lcom/google/vr/sdk/widgets/video/deps/af$a;IJJ)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v5

    .line 188
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 189
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 190
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/p;->b:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 191
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->d:J

    goto :goto_0

    .line 192
    :cond_2
    iget-wide v0, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->c:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v0

    iput-wide v5, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->c:J

    :goto_0
    move-wide v9, v3

    move-wide v4, v0

    move-object v1, v2

    goto :goto_1

    :cond_3
    move-object v1, v3

    move-wide v4, v6

    :goto_1
    move-object/from16 v0, p0

    move-wide v2, v9

    .line 196
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Ljava/lang/Object;JJ)Lcom/google/vr/sdk/widgets/video/deps/if$a;

    move-result-object v1

    move-wide v4, v9

    .line 197
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;JJ)Lcom/google/vr/sdk/widgets/video/deps/q;

    move-result-object v0

    return-object v0

    .line 198
    :cond_4
    iget-object v0, v1, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    .line 199
    iget-object v2, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    iget-object v7, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v2, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/af$a;)Lcom/google/vr/sdk/widgets/video/deps/af$a;

    .line 200
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 201
    iget v2, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->b:I

    .line 202
    iget-object v3, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->d(I)I

    move-result v3

    if-ne v3, v4, :cond_5

    return-object v5

    .line 205
    :cond_5
    iget-object v4, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->c:I

    .line 206
    invoke-virtual {v4, v2, v6}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->a(II)I

    move-result v4

    if-ge v4, v3, :cond_7

    .line 208
    iget-object v3, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v3, v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->b(II)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    .line 210
    :cond_6
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    iget-wide v5, v1, Lcom/google/vr/sdk/widgets/video/deps/q;->c:J

    iget-wide v9, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->d:J

    move-object/from16 v0, p0

    move-object v1, v3

    move v3, v4

    move-wide v4, v5

    move-wide v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Ljava/lang/Object;IIJJ)Lcom/google/vr/sdk/widgets/video/deps/q;

    move-result-object v5

    :goto_2
    return-object v5

    .line 212
    :cond_7
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    iget-wide v3, v1, Lcom/google/vr/sdk/widgets/video/deps/q;->c:J

    iget-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->d:J

    move-object/from16 v0, p0

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v5

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/r;->b(Ljava/lang/Object;JJ)Lcom/google/vr/sdk/widgets/video/deps/q;

    move-result-object v0

    return-object v0

    .line 213
    :cond_8
    iget-object v2, v1, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v6, v2, Lcom/google/vr/sdk/widgets/video/deps/if$a;->e:J

    const-wide/high16 v9, -0x8000000000000000L

    cmp-long v2, v6, v9

    if-eqz v2, :cond_b

    .line 214
    iget-object v2, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    iget-object v3, v1, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v6, v3, Lcom/google/vr/sdk/widgets/video/deps/if$a;->e:J

    invoke-virtual {v2, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->a(J)I

    move-result v2

    if-ne v2, v4, :cond_9

    .line 216
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v3, v1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->e:J

    iget-wide v5, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->d:J

    move-object/from16 v0, p0

    move-object v1, v2

    move-wide v2, v3

    move-wide v4, v5

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/r;->b(Ljava/lang/Object;JJ)Lcom/google/vr/sdk/widgets/video/deps/q;

    move-result-object v0

    return-object v0

    .line 217
    :cond_9
    iget-object v3, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->b(I)I

    move-result v3

    .line 218
    iget-object v4, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v4, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->b(II)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_3

    .line 220
    :cond_a
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v5, v1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->e:J

    iget-wide v9, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->d:J

    move-object/from16 v0, p0

    move-object v1, v4

    move-wide v4, v5

    move-wide v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Ljava/lang/Object;IIJJ)Lcom/google/vr/sdk/widgets/video/deps/q;

    move-result-object v5

    :goto_3
    return-object v5

    .line 222
    :cond_b
    iget-object v1, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->c()I

    move-result v1

    if-nez v1, :cond_c

    return-object v5

    :cond_c
    add-int/lit8 v2, v1, -0x1

    .line 226
    iget-object v1, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->a(I)J

    move-result-wide v3

    cmp-long v1, v3, v9

    if-nez v1, :cond_f

    iget-object v1, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    .line 227
    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_4

    .line 229
    :cond_d
    iget-object v1, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->b(I)I

    move-result v3

    .line 230
    iget-object v1, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->b(II)Z

    move-result v1

    if-nez v1, :cond_e

    return-object v5

    .line 232
    :cond_e
    iget-object v1, v8, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->a()J

    move-result-wide v4

    .line 233
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    iget-wide v6, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->d:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Ljava/lang/Object;IIJJ)Lcom/google/vr/sdk/widgets/video/deps/q;

    move-result-object v0

    return-object v0

    :cond_f
    :goto_4
    return-object v5
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/t;)Lcom/google/vr/sdk/widgets/video/deps/q;
    .locals 6

    .line 168
    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/t;->d:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/t;->f:J

    iget-wide v4, p1, Lcom/google/vr/sdk/widgets/video/deps/t;->e:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;JJ)Lcom/google/vr/sdk/widgets/video/deps/q;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/lang/Object;IIJJ)Lcom/google/vr/sdk/widgets/video/deps/q;
    .locals 14

    move-object v0, p0

    .line 240
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/if$a;

    move-object v1, v7

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/if$a;-><init>(Ljava/lang/Object;IIJ)V

    .line 241
    invoke-direct {p0, v7}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;)Z

    move-result v9

    .line 242
    invoke-direct {p0, v7, v9}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;Z)Z

    move-result v10

    .line 243
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v2, v7, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    .line 244
    invoke-virtual {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/af$a;)Lcom/google/vr/sdk/widgets/video/deps/af$a;

    move-result-object v1

    iget v2, v7, Lcom/google/vr/sdk/widgets/video/deps/if$a;->b:I

    iget v3, v7, Lcom/google/vr/sdk/widgets/video/deps/if$a;->c:I

    .line 245
    invoke-virtual {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->c(II)J

    move-result-wide v11

    .line 246
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->b(I)I

    move-result v1

    move/from16 v2, p3

    if-ne v2, v1, :cond_0

    .line 247
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->d()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    :goto_0
    move-wide v3, v1

    .line 249
    new-instance v13, Lcom/google/vr/sdk/widgets/video/deps/q;

    move-object v1, v13

    move-object v2, v7

    move-wide/from16 v5, p4

    move-wide v7, v11

    invoke-direct/range {v1 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/q;-><init>(Lcom/google/vr/sdk/widgets/video/deps/if$a;JJJZZ)V

    return-object v13
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/if$a;)Z
    .locals 9

    .line 260
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/af$a;)Lcom/google/vr/sdk/widgets/video/deps/af$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->c()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sub-int/2addr v0, v1

    .line 264
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a()Z

    move-result v2

    .line 265
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->a(I)J

    move-result-wide v3

    const-wide/high16 v5, -0x8000000000000000L

    const/4 v7, 0x0

    cmp-long v8, v3, v5

    if-eqz v8, :cond_2

    if-nez v2, :cond_1

    .line 266
    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->e:J

    cmp-long p1, v2, v5

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 267
    :cond_2
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->d(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    return v7

    :cond_3
    if-eqz v2, :cond_4

    .line 270
    iget v4, p1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->b:I

    if-ne v4, v0, :cond_4

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->c:I

    add-int/lit8 v4, v3, -0x1

    if-ne p1, v4, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-nez p1, :cond_6

    if-nez v2, :cond_5

    .line 271
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->b(I)I

    move-result p1

    if-ne p1, v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_2
    return v1
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/if$a;Z)Z
    .locals 7

    .line 272
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;)I

    move-result v2

    .line 273
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {p1, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(ILcom/google/vr/sdk/widgets/video/deps/af$a;)Lcom/google/vr/sdk/widgets/video/deps/af$a;

    move-result-object p1

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/af$a;->c:I

    .line 274
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->b:Lcom/google/vr/sdk/widgets/video/deps/af$b;

    invoke-virtual {v0, p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(ILcom/google/vr/sdk/widgets/video/deps/af$b;)Lcom/google/vr/sdk/widgets/video/deps/af$b;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/vr/sdk/widgets/video/deps/af$b;->e:Z

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->b:Lcom/google/vr/sdk/widgets/video/deps/af$b;

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->e:I

    iget-boolean v6, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->f:Z

    .line 275
    invoke-virtual/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/af;->b(ILcom/google/vr/sdk/widgets/video/deps/af$a;Lcom/google/vr/sdk/widgets/video/deps/af$b;IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/p;Lcom/google/vr/sdk/widgets/video/deps/q;)Z
    .locals 5

    .line 145
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    .line 146
    iget-wide v0, p1, Lcom/google/vr/sdk/widgets/video/deps/q;->b:J

    iget-wide v2, p2, Lcom/google/vr/sdk/widgets/video/deps/q;->b:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    .line 147
    invoke-virtual {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b(Ljava/lang/Object;JJ)Lcom/google/vr/sdk/widgets/video/deps/q;
    .locals 14

    move-object v0, p0

    .line 250
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    move-wide/from16 v4, p2

    invoke-virtual {v1, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->b(J)I

    move-result v1

    const-wide/high16 v2, -0x8000000000000000L

    const/4 v6, -0x1

    if-ne v1, v6, :cond_0

    move-wide v6, v2

    goto :goto_0

    .line 253
    :cond_0
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v6, v1}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->a(I)J

    move-result-wide v6

    .line 254
    :goto_0
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/if$a;

    move-object v8, v1

    move-object v9, p1

    move-wide/from16 v10, p4

    move-wide v12, v6

    invoke-direct/range {v8 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/if$a;-><init>(Ljava/lang/Object;JJ)V

    .line 255
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v9, v1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v8, v9, v10}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/af$a;)Lcom/google/vr/sdk/widgets/video/deps/af$a;

    .line 256
    invoke-direct {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;)Z

    move-result v10

    .line 257
    invoke-direct {p0, v1, v10}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;Z)Z

    move-result v11

    cmp-long v8, v6, v2

    if-nez v8, :cond_1

    .line 258
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->a()J

    move-result-wide v2

    move-wide v8, v2

    goto :goto_1

    :cond_1
    move-wide v8, v6

    .line 259
    :goto_1
    new-instance v12, Lcom/google/vr/sdk/widgets/video/deps/q;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, v12

    move-object v3, v1

    move-wide/from16 v4, p2

    invoke-direct/range {v2 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/q;-><init>(Lcom/google/vr/sdk/widgets/video/deps/if$a;JJJZZ)V

    return-object v12
.end method

.method private i()Z
    .locals 8

    .line 149
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/r;->e()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;)I

    move-result v2

    move v3, v2

    .line 153
    :goto_0
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->b:Lcom/google/vr/sdk/widgets/video/deps/af$b;

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->e:I

    iget-boolean v7, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->f:Z

    .line 154
    invoke-virtual/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(ILcom/google/vr/sdk/widgets/video/deps/af$a;Lcom/google/vr/sdk/widgets/video/deps/af$b;IZ)I

    move-result v3

    .line 155
    :goto_1
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-boolean v2, v2, Lcom/google/vr/sdk/widgets/video/deps/q;->e:Z

    if-nez v2, :cond_1

    .line 156
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    goto :goto_1

    :cond_1
    const/4 v2, -0x1

    if-eq v3, v2, :cond_4

    .line 157
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    if-nez v2, :cond_2

    goto :goto_2

    .line 159
    :cond_2
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/p;->b:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, v3, :cond_3

    goto :goto_2

    .line 162
    :cond_3
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    goto :goto_0

    .line 165
    :cond_4
    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/p;)Z

    move-result v2

    .line 166
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    invoke-virtual {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/q;)Lcom/google/vr/sdk/widgets/video/deps/q;

    move-result-object v3

    iput-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    if-eqz v2, :cond_6

    .line 167
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/r;->f()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :cond_6
    :goto_3
    return v1
.end method


# virtual methods
.method public a([Lcom/google/vr/sdk/widgets/video/deps/aa;Lcom/google/vr/sdk/widgets/video/deps/ni;Lcom/google/vr/sdk/widgets/video/deps/nl;Lcom/google/vr/sdk/widgets/video/deps/if;Lcom/google/vr/sdk/widgets/video/deps/q;)Lcom/google/vr/sdk/widgets/video/deps/ie;
    .locals 10

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->i:Lcom/google/vr/sdk/widgets/video/deps/p;

    if-nez v0, :cond_0

    .line 24
    iget-wide v0, p5, Lcom/google/vr/sdk/widgets/video/deps/q;->b:J

    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/p;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->i:Lcom/google/vr/sdk/widgets/video/deps/p;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/q;->d:J

    add-long/2addr v0, v2

    :goto_0
    move-wide v4, v0

    .line 26
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/p;

    move-object v2, v0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/p;-><init>([Lcom/google/vr/sdk/widgets/video/deps/aa;JLcom/google/vr/sdk/widgets/video/deps/ni;Lcom/google/vr/sdk/widgets/video/deps/nl;Lcom/google/vr/sdk/widgets/video/deps/if;Lcom/google/vr/sdk/widgets/video/deps/q;)V

    .line 27
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->i:Lcom/google/vr/sdk/widgets/video/deps/p;

    if-eqz p1, :cond_1

    .line 28
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/r;->f()Z

    move-result p1

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 29
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->i:Lcom/google/vr/sdk/widgets/video/deps/p;

    iput-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    :cond_1
    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->k:Ljava/lang/Object;

    .line 31
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->i:Lcom/google/vr/sdk/widgets/video/deps/p;

    .line 32
    iget p1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->j:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->j:I

    .line 33
    iget-object p1, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    return-object p1
.end method

.method public a(Ljava/lang/Object;J)Lcom/google/vr/sdk/widgets/video/deps/if$a;
    .locals 6

    .line 111
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Ljava/lang/Object;)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 112
    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Ljava/lang/Object;JJ)Lcom/google/vr/sdk/widgets/video/deps/if$a;

    move-result-object p1

    return-object p1
.end method

.method public a(JLcom/google/vr/sdk/widgets/video/deps/t;)Lcom/google/vr/sdk/widgets/video/deps/q;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->i:Lcom/google/vr/sdk/widgets/video/deps/p;

    if-nez v0, :cond_0

    .line 20
    invoke-direct {p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/t;)Lcom/google/vr/sdk/widgets/video/deps/q;

    move-result-object p1

    goto :goto_0

    .line 21
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/p;J)Lcom/google/vr/sdk/widgets/video/deps/q;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/q;)Lcom/google/vr/sdk/widgets/video/deps/q;
    .locals 11

    .line 102
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;)Z

    move-result v9

    .line 103
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    invoke-direct {p0, v0, v9}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/if$a;Z)Z

    move-result v10

    .line 104
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;Lcom/google/vr/sdk/widgets/video/deps/af$a;)Lcom/google/vr/sdk/widgets/video/deps/af$a;

    .line 105
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget v1, v1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->b:I

    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/if$a;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->c(II)J

    move-result-wide v0

    :goto_0
    move-wide v7, v0

    goto :goto_1

    .line 107
    :cond_0
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->e:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 108
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/af$a;->a()J

    move-result-wide v0

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->e:J

    goto :goto_0

    .line 110
    :goto_1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v3, p1, Lcom/google/vr/sdk/widgets/video/deps/q;->b:J

    iget-wide v5, p1, Lcom/google/vr/sdk/widgets/video/deps/q;->c:J

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Lcom/google/vr/sdk/widgets/video/deps/q;-><init>(Lcom/google/vr/sdk/widgets/video/deps/if$a;JJJZZ)V

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->i:Lcom/google/vr/sdk/widgets/video/deps/p;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/p;->c(J)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/af;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    return-void
.end method

.method public a()Z
    .locals 5

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->i:Lcom/google/vr/sdk/widgets/video/deps/p;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->i:Lcom/google/vr/sdk/widgets/video/deps/p;

    .line 17
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/p;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->i:Lcom/google/vr/sdk/widgets/video/deps/p;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->d:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->j:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

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

.method public a(I)Z
    .locals 0

    .line 8
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->e:I

    .line 9
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/r;->i()Z

    move-result p1

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ie;)Z
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->i:Lcom/google/vr/sdk/widgets/video/deps/p;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->a:Lcom/google/vr/sdk/widgets/video/deps/ie;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/if$a;J)Z
    .locals 8

    .line 80
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(Ljava/lang/Object;)I

    move-result p1

    .line 82
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/r;->e()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v0

    const/4 v1, 0x0

    move v3, p1

    :goto_0
    const/4 p1, 0x1

    if-eqz v0, :cond_6

    if-nez v1, :cond_0

    .line 85
    iget-object p1, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    invoke-virtual {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/q;)Lcom/google/vr/sdk/widgets/video/deps/q;

    move-result-object p1

    iput-object p1, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    if-eq v3, v2, :cond_5

    .line 86
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->b:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    .line 87
    invoke-virtual {v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_2

    .line 90
    :cond_1
    invoke-direct {p0, v1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/p;J)Lcom/google/vr/sdk/widgets/video/deps/q;

    move-result-object v2

    if-nez v2, :cond_2

    .line 92
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/p;)Z

    move-result p2

    xor-int/2addr p1, p2

    return p1

    .line 93
    :cond_2
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    invoke-virtual {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/q;)Lcom/google/vr/sdk/widgets/video/deps/q;

    move-result-object v4

    iput-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    .line 94
    invoke-direct {p0, v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/p;Lcom/google/vr/sdk/widgets/video/deps/q;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 95
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/p;)Z

    move-result p2

    xor-int/2addr p1, p2

    return p1

    .line 96
    :cond_3
    :goto_1
    iget-object p1, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-boolean p1, p1, Lcom/google/vr/sdk/widgets/video/deps/q;->e:Z

    if-eqz p1, :cond_4

    .line 97
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->d:Lcom/google/vr/sdk/widgets/video/deps/af;

    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->a:Lcom/google/vr/sdk/widgets/video/deps/af$a;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->b:Lcom/google/vr/sdk/widgets/video/deps/af$b;

    iget v6, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->e:I

    iget-boolean v7, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->f:Z

    .line 98
    invoke-virtual/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/af;->a(ILcom/google/vr/sdk/widgets/video/deps/af$a;Lcom/google/vr/sdk/widgets/video/deps/af$b;IZ)I

    move-result p1

    move v3, p1

    .line 100
    :cond_4
    iget-object p1, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    move-object v1, v0

    move-object v0, p1

    goto :goto_0

    .line 88
    :cond_5
    :goto_2
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/p;)Z

    move-result p2

    xor-int/2addr p1, p2

    :cond_6
    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/p;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 55
    :goto_0
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 57
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->i:Lcom/google/vr/sdk/widgets/video/deps/p;

    .line 58
    :goto_1
    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    if-eqz v2, :cond_2

    .line 59
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    .line 60
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    if-ne p1, v2, :cond_1

    .line 61
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->g:Lcom/google/vr/sdk/widgets/video/deps/p;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    const/4 v0, 0x1

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/p;->e()V

    .line 64
    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->j:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->j:I

    goto :goto_1

    .line 65
    :cond_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->i:Lcom/google/vr/sdk/widgets/video/deps/p;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    return v0
.end method

.method public a(Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->f:Z

    .line 11
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/r;->i()Z

    move-result p1

    return p1
.end method

.method public b()Lcom/google/vr/sdk/widgets/video/deps/p;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->i:Lcom/google/vr/sdk/widgets/video/deps/p;

    return-object v0
.end method

.method public b(Z)V
    .locals 4

    .line 67
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/r;->e()Lcom/google/vr/sdk/widgets/video/deps/p;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 69
    iget-object p1, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->k:Ljava/lang/Object;

    .line 70
    iget-object p1, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/if$a;->d:J

    iput-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->l:J

    .line 71
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/p;->e()V

    .line 72
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/r;->a(Lcom/google/vr/sdk/widgets/video/deps/p;)Z

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    .line 74
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->k:Ljava/lang/Object;

    .line 75
    :cond_2
    :goto_1
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->g:Lcom/google/vr/sdk/widgets/video/deps/p;

    .line 76
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->i:Lcom/google/vr/sdk/widgets/video/deps/p;

    .line 77
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->j:I

    return-void
.end method

.method public c()Lcom/google/vr/sdk/widgets/video/deps/p;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->g:Lcom/google/vr/sdk/widgets/video/deps/p;

    return-object v0
.end method

.method public d()Lcom/google/vr/sdk/widgets/video/deps/p;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    return-object v0
.end method

.method public e()Lcom/google/vr/sdk/widgets/video/deps/p;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/r;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->g:Lcom/google/vr/sdk/widgets/video/deps/p;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->i:Lcom/google/vr/sdk/widgets/video/deps/p;

    :goto_0
    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->g:Lcom/google/vr/sdk/widgets/video/deps/p;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Lcom/google/vr/sdk/widgets/video/deps/p;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/op;->b(Z)V

    .line 40
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    return-object v0
.end method

.method public h()Lcom/google/vr/sdk/widgets/video/deps/p;
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->g:Lcom/google/vr/sdk/widgets/video/deps/p;

    if-eqz v0, :cond_2

    .line 43
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    if-ne v0, v1, :cond_0

    .line 44
    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->g:Lcom/google/vr/sdk/widgets/video/deps/p;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/p;->e()V

    .line 46
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->j:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->i:Lcom/google/vr/sdk/widgets/video/deps/p;

    .line 49
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->g:Lcom/google/vr/sdk/widgets/video/deps/p;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->b:Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->k:Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->g:Lcom/google/vr/sdk/widgets/video/deps/p;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->g:Lcom/google/vr/sdk/widgets/video/deps/q;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/q;->a:Lcom/google/vr/sdk/widgets/video/deps/if$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/if$a;->d:J

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->l:J

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->g:Lcom/google/vr/sdk/widgets/video/deps/p;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/p;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->g:Lcom/google/vr/sdk/widgets/video/deps/p;

    goto :goto_0

    .line 52
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->i:Lcom/google/vr/sdk/widgets/video/deps/p;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->g:Lcom/google/vr/sdk/widgets/video/deps/p;

    .line 53
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->h:Lcom/google/vr/sdk/widgets/video/deps/p;

    .line 54
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/r;->g:Lcom/google/vr/sdk/widgets/video/deps/p;

    return-object v0
.end method
