.class public final Lcom/google/ads/interactivemedia/v3/internal/mo;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/me;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/internal/nb;

.field private b:Ljava/lang/String;

.field private c:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private d:Lcom/google/ads/interactivemedia/v3/internal/mn;

.field private e:Z

.field private final f:[Z

.field private final g:Lcom/google/ads/interactivemedia/v3/internal/ms;

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/ms;

.field private final i:Lcom/google/ads/interactivemedia/v3/internal/ms;

.field private final j:Lcom/google/ads/interactivemedia/v3/internal/ms;

.field private final k:Lcom/google/ads/interactivemedia/v3/internal/ms;

.field private l:J

.field private m:J

.field private final n:Lcom/google/ads/interactivemedia/v3/internal/abr;


# direct methods
.method public constructor <init>(Lcom/google/ads/interactivemedia/v3/internal/nb;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->a:Lcom/google/ads/interactivemedia/v3/internal/nb;

    const/4 p1, 0x3

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->f:[Z

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ms;

    const/16 v0, 0x20

    .line 1
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ms;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->g:Lcom/google/ads/interactivemedia/v3/internal/ms;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ms;

    const/16 v0, 0x21

    .line 2
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ms;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->h:Lcom/google/ads/interactivemedia/v3/internal/ms;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ms;

    const/16 v0, 0x22

    .line 3
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ms;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->i:Lcom/google/ads/interactivemedia/v3/internal/ms;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ms;

    const/16 v0, 0x27

    .line 4
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ms;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->j:Lcom/google/ads/interactivemedia/v3/internal/ms;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/ms;

    const/16 v0, 0x28

    .line 5
    invoke-direct {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ms;-><init>(I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->k:Lcom/google/ads/interactivemedia/v3/internal/ms;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 6
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->n:Lcom/google/ads/interactivemedia/v3/internal/abr;

    return-void
.end method

.method private final a([BII)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->d:Lcom/google/ads/interactivemedia/v3/internal/mn;

    .line 127
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/mn;->a([BII)V

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->g:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 128
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a([BII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->h:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 129
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a([BII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->i:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 130
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a([BII)V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->j:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 131
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a([BII)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->k:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 132
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a([BII)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->l:J

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->f:[Z

    .line 133
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/abp;->a([Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->g:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 134
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->h:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 135
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->i:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 136
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->j:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 137
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->k:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 138
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->d:Lcom/google/ads/interactivemedia/v3/internal/mn;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/mn;->a()V

    :cond_0
    return-void
.end method

.method public final a(JI)V
    .locals 0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->m:J

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/abr;)V
    .locals 29

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->c:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 7
    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget v1, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    .line 9
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v1

    if-lez v1, :cond_25

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->c()I

    move-result v1

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->b()I

    move-result v2

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d()[B

    move-result-object v3

    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->l:J

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->l:J

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->c:Lcom/google/ads/interactivemedia/v3/internal/ix;

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a()I

    move-result v5

    move-object/from16 v6, p1

    invoke-interface {v4, v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/abr;I)V

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->f:[Z

    .line 15
    invoke-static {v3, v1, v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/abp;->a([BII[Z)I

    move-result v4

    if-eq v4, v2, :cond_24

    add-int/lit8 v5, v4, 0x3

    .line 16
    aget-byte v7, v3, v5

    and-int/lit8 v7, v7, 0x7e

    const/4 v8, 0x1

    shr-int/2addr v7, v8

    sub-int v9, v4, v1

    if-lez v9, :cond_1

    .line 17
    invoke-direct {v0, v3, v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/mo;->a([BII)V

    :cond_1
    sub-int v12, v2, v4

    iget-wide v10, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->l:J

    int-to-long v13, v12

    sub-long/2addr v10, v13

    if-gez v9, :cond_2

    neg-int v4, v9

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    iget-wide v13, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->m:J

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->d:Lcom/google/ads/interactivemedia/v3/internal/mn;

    iget-boolean v15, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->e:Z

    .line 18
    invoke-virtual {v9, v10, v11, v12, v15}, Lcom/google/ads/interactivemedia/v3/internal/mn;->a(JIZ)V

    iget-boolean v9, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->e:Z

    if-nez v9, :cond_20

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->g:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 19
    invoke-virtual {v9, v4}, Lcom/google/ads/interactivemedia/v3/internal/ms;->b(I)Z

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->h:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 20
    invoke-virtual {v9, v4}, Lcom/google/ads/interactivemedia/v3/internal/ms;->b(I)Z

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->i:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 21
    invoke-virtual {v9, v4}, Lcom/google/ads/interactivemedia/v3/internal/ms;->b(I)Z

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->g:Lcom/google/ads/interactivemedia/v3/internal/ms;

    invoke-virtual {v9}, Lcom/google/ads/interactivemedia/v3/internal/ms;->b()Z

    move-result v9

    if-eqz v9, :cond_20

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->h:Lcom/google/ads/interactivemedia/v3/internal/ms;

    invoke-virtual {v9}, Lcom/google/ads/interactivemedia/v3/internal/ms;->b()Z

    move-result v9

    if-eqz v9, :cond_20

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->i:Lcom/google/ads/interactivemedia/v3/internal/ms;

    invoke-virtual {v9}, Lcom/google/ads/interactivemedia/v3/internal/ms;->b()Z

    move-result v9

    if-eqz v9, :cond_20

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->c:Lcom/google/ads/interactivemedia/v3/internal/ix;

    iget-object v15, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->b:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->g:Lcom/google/ads/interactivemedia/v3/internal/ms;

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->h:Lcom/google/ads/interactivemedia/v3/internal/ms;

    move/from16 v18, v5

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->i:Lcom/google/ads/interactivemedia/v3/internal/ms;

    iget v6, v8, Lcom/google/ads/interactivemedia/v3/internal/ms;->b:I

    move/from16 v19, v2

    iget v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ms;->b:I

    add-int/2addr v2, v6

    move-object/from16 v20, v3

    iget v3, v5, Lcom/google/ads/interactivemedia/v3/internal/ms;->b:I

    add-int/2addr v2, v3

    .line 22
    new-array v2, v2, [B

    iget-object v3, v8, Lcom/google/ads/interactivemedia/v3/internal/ms;->a:[B

    move/from16 v21, v7

    const/4 v7, 0x0

    .line 23
    invoke-static {v3, v7, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v1, Lcom/google/ads/interactivemedia/v3/internal/ms;->a:[B

    iget v6, v8, Lcom/google/ads/interactivemedia/v3/internal/ms;->b:I

    move/from16 v17, v12

    iget v12, v1, Lcom/google/ads/interactivemedia/v3/internal/ms;->b:I

    .line 24
    invoke-static {v3, v7, v2, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, v5, Lcom/google/ads/interactivemedia/v3/internal/ms;->a:[B

    iget v6, v8, Lcom/google/ads/interactivemedia/v3/internal/ms;->b:I

    iget v8, v1, Lcom/google/ads/interactivemedia/v3/internal/ms;->b:I

    add-int/2addr v6, v8

    iget v5, v5, Lcom/google/ads/interactivemedia/v3/internal/ms;->b:I

    .line 25
    invoke-static {v3, v7, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/abs;

    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/ms;->a:[B

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/ms;->b:I

    .line 26
    invoke-direct {v3, v5, v7, v1}, Lcom/google/ads/interactivemedia/v3/internal/abs;-><init>([BII)V

    const/16 v1, 0x2c

    .line 27
    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/abs;->a(I)V

    const/4 v1, 0x3

    .line 28
    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/abs;->c(I)I

    move-result v5

    .line 29
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->a()V

    const/16 v6, 0x58

    .line 30
    invoke-virtual {v3, v6}, Lcom/google/ads/interactivemedia/v3/internal/abs;->a(I)V

    const/16 v6, 0x8

    .line 31
    invoke-virtual {v3, v6}, Lcom/google/ads/interactivemedia/v3/internal/abs;->a(I)V

    const/4 v8, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ge v8, v5, :cond_5

    .line 32
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->b()Z

    move-result v22

    if-eqz v22, :cond_3

    add-int/lit8 v12, v12, 0x59

    .line 33
    :cond_3
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->b()Z

    move-result v22

    if-eqz v22, :cond_4

    add-int/lit8 v12, v12, 0x8

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 34
    :cond_5
    invoke-virtual {v3, v12}, Lcom/google/ads/interactivemedia/v3/internal/abs;->a(I)V

    if-lez v5, :cond_6

    rsub-int/lit8 v8, v5, 0x8

    add-int/2addr v8, v8

    .line 35
    invoke-virtual {v3, v8}, Lcom/google/ads/interactivemedia/v3/internal/abs;->a(I)V

    .line 36
    :cond_6
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    .line 37
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    move-result v8

    if-ne v8, v1, :cond_7

    .line 38
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->a()V

    const/4 v8, 0x3

    .line 39
    :cond_7
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    move-result v12

    .line 40
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    move-result v22

    .line 41
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->b()Z

    move-result v23

    const/4 v7, 0x2

    if-eqz v23, :cond_b

    .line 42
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    move-result v23

    .line 43
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    move-result v24

    .line 44
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    move-result v25

    .line 45
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    move-result v26

    const/4 v6, 0x1

    if-eq v8, v6, :cond_9

    if-ne v8, v7, :cond_8

    goto :goto_3

    :cond_8
    const/16 v27, 0x1

    goto :goto_4

    :cond_9
    :goto_3
    const/16 v27, 0x2

    :goto_4
    if-ne v8, v6, :cond_a

    const/4 v6, 0x2

    goto :goto_5

    :cond_a
    const/4 v6, 0x1

    :goto_5
    add-int v23, v23, v24

    mul-int v27, v27, v23

    sub-int v12, v12, v27

    add-int v25, v25, v26

    mul-int v6, v6, v25

    sub-int v22, v22, v6

    :cond_b
    move/from16 v6, v22

    .line 46
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    .line 47
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    .line 48
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    move-result v8

    .line 49
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->b()Z

    move-result v7

    const/4 v1, 0x1

    if-eq v1, v7, :cond_c

    move v1, v5

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    :goto_6
    if-gt v1, v5, :cond_d

    .line 50
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    .line 51
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    .line 52
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 53
    :cond_d
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    .line 54
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    .line 55
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    .line 56
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    .line 57
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    .line 58
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    .line 59
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->b()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 60
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->b()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    :goto_7
    const/4 v5, 0x4

    if-ge v1, v5, :cond_13

    const/4 v7, 0x0

    :goto_8
    const/4 v5, 0x6

    if-ge v7, v5, :cond_12

    .line 61
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->b()Z

    move-result v5

    if-nez v5, :cond_e

    .line 62
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    move-wide/from16 v27, v10

    const/4 v5, 0x3

    const/16 v24, 0x4

    goto :goto_a

    :cond_e
    const/16 v5, 0x40

    add-int v25, v1, v1

    const/16 v24, 0x4

    add-int/lit8 v25, v25, 0x4

    move-wide/from16 v27, v10

    const/4 v10, 0x1

    shl-int v11, v10, v25

    .line 63
    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-le v1, v10, :cond_f

    .line 64
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->e()I

    :cond_f
    const/4 v10, 0x0

    :goto_9
    if-ge v10, v5, :cond_10

    .line 65
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->e()I

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_10
    const/4 v5, 0x3

    :goto_a
    if-ne v1, v5, :cond_11

    const/4 v10, 0x3

    goto :goto_b

    :cond_11
    const/4 v10, 0x1

    :goto_b
    add-int/2addr v7, v10

    move-wide/from16 v10, v27

    goto :goto_8

    :cond_12
    move-wide/from16 v27, v10

    const/4 v5, 0x3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_13
    move-wide/from16 v27, v10

    const/4 v1, 0x2

    .line 66
    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/abs;->a(I)V

    .line 67
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->b()Z

    move-result v1

    if-eqz v1, :cond_14

    const/16 v1, 0x8

    .line 68
    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/abs;->a(I)V

    .line 69
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    .line 70
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    .line 71
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->a()V

    .line 72
    :cond_14
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    move-result v1

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_c
    if-ge v5, v1, :cond_1b

    if-eqz v5, :cond_15

    .line 73
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->b()Z

    move-result v7

    :cond_15
    if-eqz v7, :cond_18

    .line 74
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->a()V

    .line 75
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    const/4 v11, 0x0

    :goto_d
    if-gt v11, v10, :cond_17

    .line 76
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->b()Z

    move-result v23

    if-eqz v23, :cond_16

    .line 77
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->a()V

    :cond_16
    add-int/lit8 v11, v11, 0x1

    goto :goto_d

    :cond_17
    move/from16 v24, v1

    goto :goto_10

    .line 78
    :cond_18
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    move-result v10

    .line 79
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    move-result v11

    add-int v23, v10, v11

    move/from16 v24, v1

    const/4 v1, 0x0

    :goto_e
    if-ge v1, v10, :cond_19

    .line 80
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    .line 81
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_19
    const/4 v1, 0x0

    :goto_f
    if-ge v1, v11, :cond_1a

    .line 82
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    .line 83
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_1a
    move/from16 v10, v23

    :goto_10
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v24

    goto :goto_c

    .line 84
    :cond_1b
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->b()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x0

    .line 85
    :goto_11
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->d()I

    move-result v5

    if-ge v1, v5, :cond_1c

    const/4 v5, 0x5

    add-int/lit8 v7, v8, 0x5

    .line 86
    invoke-virtual {v3, v7}, Lcom/google/ads/interactivemedia/v3/internal/abs;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_1c
    const/4 v1, 0x2

    .line 87
    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/abs;->a(I)V

    .line 88
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->b()Z

    move-result v1

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1f

    .line 89
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/abs;->b()Z

    move-result v1

    if-eqz v1, :cond_1f

    const/16 v1, 0x8

    .line 90
    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/abs;->c(I)I

    move-result v1

    const/16 v7, 0xff

    if-ne v1, v7, :cond_1d

    const/16 v1, 0x10

    .line 91
    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/abs;->c(I)I

    move-result v7

    .line 92
    invoke-virtual {v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/abs;->c(I)I

    move-result v1

    if-eqz v7, :cond_1f

    if-eqz v1, :cond_1f

    int-to-float v3, v7

    int-to-float v1, v1

    div-float v5, v3, v1

    goto :goto_12

    .line 120
    :cond_1d
    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/abp;->b:[F

    array-length v3, v3

    if-ge v1, v3, :cond_1e

    sget-object v3, Lcom/google/ads/interactivemedia/v3/internal/abp;->b:[F

    .line 93
    aget v5, v3, v1

    goto :goto_12

    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v7, 0x2e

    .line 94
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Unexpected aspect_ratio_idc value: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "H265Reader"

    .line 95
    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_1f
    :goto_12
    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/cy;

    .line 96
    invoke-direct {v1}, Lcom/google/ads/interactivemedia/v3/internal/cy;-><init>()V

    .line 97
    invoke-virtual {v1, v15}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(Ljava/lang/String;)V

    const-string v3, "video/hevc"

    .line 98
    invoke-virtual {v1, v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v1, v12}, Lcom/google/ads/interactivemedia/v3/internal/cy;->p(I)V

    .line 100
    invoke-virtual {v1, v6}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(I)V

    .line 101
    invoke-virtual {v1, v5}, Lcom/google/ads/interactivemedia/v3/internal/cy;->b(F)V

    .line 102
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Ljava/util/List;)V

    .line 103
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v1

    .line 104
    invoke-interface {v9, v1}, Lcom/google/ads/interactivemedia/v3/internal/ix;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->e:Z

    goto :goto_13

    :cond_20
    move/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v18, v5

    move/from16 v21, v7

    move-wide/from16 v27, v10

    move/from16 v17, v12

    :goto_13
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->j:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 105
    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/ms;->b(I)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->j:Lcom/google/ads/interactivemedia/v3/internal/ms;

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ms;->a:[B

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/ms;->b:I

    .line 106
    invoke-static {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/abp;->a([BI)I

    move-result v1

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->n:Lcom/google/ads/interactivemedia/v3/internal/abr;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->j:Lcom/google/ads/interactivemedia/v3/internal/ms;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/ms;->a:[B

    .line 107
    invoke-virtual {v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BI)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->n:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v2, 0x5

    .line 108
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->a:Lcom/google/ads/interactivemedia/v3/internal/nb;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->n:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 109
    invoke-virtual {v1, v13, v14, v2}, Lcom/google/ads/interactivemedia/v3/internal/nb;->a(JLcom/google/ads/interactivemedia/v3/internal/abr;)V

    :cond_21
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->k:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 110
    invoke-virtual {v1, v4}, Lcom/google/ads/interactivemedia/v3/internal/ms;->b(I)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->k:Lcom/google/ads/interactivemedia/v3/internal/ms;

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/ms;->a:[B

    iget v1, v1, Lcom/google/ads/interactivemedia/v3/internal/ms;->b:I

    .line 111
    invoke-static {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/abp;->a([BI)I

    move-result v1

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->n:Lcom/google/ads/interactivemedia/v3/internal/abr;

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->k:Lcom/google/ads/interactivemedia/v3/internal/ms;

    iget-object v3, v3, Lcom/google/ads/interactivemedia/v3/internal/ms;->a:[B

    .line 112
    invoke-virtual {v2, v3, v1}, Lcom/google/ads/interactivemedia/v3/internal/abr;->a([BI)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->n:Lcom/google/ads/interactivemedia/v3/internal/abr;

    const/4 v2, 0x5

    .line 113
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/abr;->d(I)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->a:Lcom/google/ads/interactivemedia/v3/internal/nb;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->n:Lcom/google/ads/interactivemedia/v3/internal/abr;

    .line 114
    invoke-virtual {v1, v13, v14, v2}, Lcom/google/ads/interactivemedia/v3/internal/nb;->a(JLcom/google/ads/interactivemedia/v3/internal/abr;)V

    :cond_22
    iget-wide v14, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->m:J

    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->d:Lcom/google/ads/interactivemedia/v3/internal/mn;

    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->e:Z

    move-wide/from16 v10, v27

    move/from16 v12, v17

    move/from16 v13, v21

    move/from16 v16, v1

    .line 115
    invoke-virtual/range {v9 .. v16}, Lcom/google/ads/interactivemedia/v3/internal/mn;->a(JIIJZ)V

    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->e:Z

    if-nez v1, :cond_23

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->g:Lcom/google/ads/interactivemedia/v3/internal/ms;

    move/from16 v2, v21

    .line 116
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a(I)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->h:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 117
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a(I)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->i:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 118
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a(I)V

    goto :goto_14

    :cond_23
    move/from16 v2, v21

    :goto_14
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->j:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 119
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a(I)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/mo;->k:Lcom/google/ads/interactivemedia/v3/internal/ms;

    .line 120
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ms;->a(I)V

    move-object/from16 v6, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move-object/from16 v3, v20

    goto/16 :goto_0

    .line 121
    :cond_24
    invoke-direct {v0, v3, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/mo;->a([BII)V

    :cond_25
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/nl;)V
    .locals 2

    .line 122
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->a()V

    .line 123
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->b:Ljava/lang/String;

    .line 124
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/nl;->b()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ii;->a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->c:Lcom/google/ads/interactivemedia/v3/internal/ix;

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/mn;

    .line 125
    invoke-direct {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/mn;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ix;)V

    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->d:Lcom/google/ads/interactivemedia/v3/internal/mn;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/mo;->a:Lcom/google/ads/interactivemedia/v3/internal/nb;

    .line 126
    invoke-virtual {v0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/nb;->a(Lcom/google/ads/interactivemedia/v3/internal/ii;Lcom/google/ads/interactivemedia/v3/internal/nl;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method
