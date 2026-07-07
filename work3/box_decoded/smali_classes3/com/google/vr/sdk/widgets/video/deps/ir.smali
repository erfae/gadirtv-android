.class public final Lcom/google/vr/sdk/widgets/video/deps/ir;
.super Ljava/lang/Object;
.source "SampleQueue.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/dc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/ir$a;,
        Lcom/google/vr/sdk/widgets/video/deps/ir$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/nl;

.field private final b:I

.field private final c:Lcom/google/vr/sdk/widgets/video/deps/iq;

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/iq$a;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private f:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

.field private g:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

.field private h:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

.field private i:Lcom/google/vr/sdk/widgets/video/deps/l;

.field private j:Z

.field private k:Lcom/google/vr/sdk/widgets/video/deps/l;

.field private l:J

.field private m:J

.field private n:Z

.field private o:Lcom/google/vr/sdk/widgets/video/deps/ir$b;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/nl;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->a:Lcom/google/vr/sdk/widgets/video/deps/nl;

    .line 3
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/nl;->c()I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->b:I

    .line 4
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/iq;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/iq;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->c:Lcom/google/vr/sdk/widgets/video/deps/iq;

    .line 5
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/iq$a;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/iq$a;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->d:Lcom/google/vr/sdk/widgets/video/deps/iq$a;

    .line 6
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 7
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/ir$a;-><init>(JI)V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->f:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    .line 8
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->g:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    .line 9
    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->h:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/l;J)Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 5

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    .line 215
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->k:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 216
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/l;->k:J

    add-long/2addr v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(J)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private a(JLjava/nio/ByteBuffer;I)V
    .locals 3

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ir;->b(J)V

    :cond_0
    :goto_0
    if-lez p4, :cond_1

    .line 121
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->g:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->b:J

    sub-long/2addr v0, p1

    long-to-int v1, v0

    invoke-static {p4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 122
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->g:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->d:Lcom/google/vr/sdk/widgets/video/deps/nk;

    .line 123
    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/nk;->a:[B

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->g:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    invoke-virtual {v2, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->a(J)I

    move-result v2

    invoke-virtual {p3, v1, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr p4, v0

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 126
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->g:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->b:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 127
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->g:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->g:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(J[BI)V
    .locals 5

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ir;->b(J)V

    move v0, p4

    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 133
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->g:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-wide v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->b:J

    sub-long/2addr v1, p1

    long-to-int v2, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 134
    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->g:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->d:Lcom/google/vr/sdk/widgets/video/deps/nk;

    .line 135
    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/nk;->a:[B

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->g:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    invoke-virtual {v3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->a(J)I

    move-result v3

    sub-int v4, p4, v0

    invoke-static {v2, v3, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    int-to-long v1, v1

    add-long/2addr p1, v1

    .line 138
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->g:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-wide v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->b:J

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 139
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->g:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->g:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/bo;Lcom/google/vr/sdk/widgets/video/deps/iq$a;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 76
    iget-wide v3, v2, Lcom/google/vr/sdk/widgets/video/deps/iq$a;->b:J

    .line 77
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ir;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a(I)V

    .line 78
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ir;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(J[BI)V

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    .line 80
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ir;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v7, 0x0

    aget-byte v5, v5, v7

    and-int/lit16 v8, v5, 0x80

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    and-int/lit8 v5, v5, 0x7f

    .line 83
    iget-object v9, v1, Lcom/google/vr/sdk/widgets/video/deps/bo;->a:Lcom/google/vr/sdk/widgets/video/deps/bl;

    iget-object v9, v9, Lcom/google/vr/sdk/widgets/video/deps/bl;->a:[B

    if-nez v9, :cond_1

    .line 84
    iget-object v9, v1, Lcom/google/vr/sdk/widgets/video/deps/bo;->a:Lcom/google/vr/sdk/widgets/video/deps/bl;

    const/16 v10, 0x10

    new-array v10, v10, [B

    iput-object v10, v9, Lcom/google/vr/sdk/widgets/video/deps/bl;->a:[B

    .line 85
    :cond_1
    iget-object v9, v1, Lcom/google/vr/sdk/widgets/video/deps/bo;->a:Lcom/google/vr/sdk/widgets/video/deps/bl;

    iget-object v9, v9, Lcom/google/vr/sdk/widgets/video/deps/bl;->a:[B

    invoke-direct {v0, v3, v4, v9, v5}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(J[BI)V

    int-to-long v9, v5

    add-long/2addr v3, v9

    if-eqz v8, :cond_2

    .line 88
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ir;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a(I)V

    .line 89
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ir;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(J[BI)V

    const-wide/16 v5, 0x2

    add-long/2addr v3, v5

    .line 91
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ir;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v6

    move v10, v6

    goto :goto_1

    :cond_2
    const/4 v10, 0x1

    .line 93
    :goto_1
    iget-object v5, v1, Lcom/google/vr/sdk/widgets/video/deps/bo;->a:Lcom/google/vr/sdk/widgets/video/deps/bl;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/bl;->d:[I

    if-eqz v5, :cond_3

    .line 94
    array-length v6, v5

    if-ge v6, v10, :cond_4

    .line 95
    :cond_3
    new-array v5, v10, [I

    :cond_4
    move-object v11, v5

    .line 96
    iget-object v5, v1, Lcom/google/vr/sdk/widgets/video/deps/bo;->a:Lcom/google/vr/sdk/widgets/video/deps/bl;

    iget-object v5, v5, Lcom/google/vr/sdk/widgets/video/deps/bl;->e:[I

    if-eqz v5, :cond_5

    .line 97
    array-length v6, v5

    if-ge v6, v10, :cond_6

    .line 98
    :cond_5
    new-array v5, v10, [I

    :cond_6
    move-object v12, v5

    if-eqz v8, :cond_7

    mul-int/lit8 v5, v10, 0x6

    .line 101
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/ir;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v6, v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a(I)V

    .line 102
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/ir;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-direct {v0, v3, v4, v6, v5}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(J[BI)V

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 104
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ir;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v5, v7}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    :goto_2
    if-ge v7, v10, :cond_8

    .line 106
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ir;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->i()I

    move-result v5

    aput v5, v11, v7

    .line 107
    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/ir;->e:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v5}, Lcom/google/vr/sdk/widgets/video/deps/pe;->v()I

    move-result v5

    aput v5, v12, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 110
    :cond_7
    aput v7, v11, v7

    .line 111
    iget v5, v2, Lcom/google/vr/sdk/widgets/video/deps/iq$a;->a:I

    iget-wide v8, v2, Lcom/google/vr/sdk/widgets/video/deps/iq$a;->b:J

    sub-long v8, v3, v8

    long-to-int v6, v8

    sub-int/2addr v5, v6

    aput v5, v12, v7

    .line 112
    :cond_8
    iget-object v5, v2, Lcom/google/vr/sdk/widgets/video/deps/iq$a;->c:Lcom/google/vr/sdk/widgets/video/deps/dc$a;

    .line 113
    iget-object v9, v1, Lcom/google/vr/sdk/widgets/video/deps/bo;->a:Lcom/google/vr/sdk/widgets/video/deps/bl;

    iget-object v13, v5, Lcom/google/vr/sdk/widgets/video/deps/dc$a;->b:[B

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/bo;->a:Lcom/google/vr/sdk/widgets/video/deps/bl;

    iget-object v14, v1, Lcom/google/vr/sdk/widgets/video/deps/bl;->a:[B

    iget v15, v5, Lcom/google/vr/sdk/widgets/video/deps/dc$a;->a:I

    iget v1, v5, Lcom/google/vr/sdk/widgets/video/deps/dc$a;->c:I

    iget v5, v5, Lcom/google/vr/sdk/widgets/video/deps/dc$a;->d:I

    move/from16 v16, v1

    move/from16 v17, v5

    invoke-virtual/range {v9 .. v17}, Lcom/google/vr/sdk/widgets/video/deps/bl;->a(I[I[I[B[BIII)V

    .line 114
    iget-wide v5, v2, Lcom/google/vr/sdk/widgets/video/deps/iq$a;->b:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    .line 115
    iget-wide v3, v2, Lcom/google/vr/sdk/widgets/video/deps/iq$a;->b:J

    int-to-long v5, v1

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/google/vr/sdk/widgets/video/deps/iq$a;->b:J

    .line 116
    iget v3, v2, Lcom/google/vr/sdk/widgets/video/deps/iq$a;->a:I

    sub-int/2addr v3, v1

    iput v3, v2, Lcom/google/vr/sdk/widgets/video/deps/iq$a;->a:I

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/ir$a;)V
    .locals 5

    .line 195
    iget-boolean v0, p1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->h:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->c:Z

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->h:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-wide v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->a:J

    iget-wide v3, p1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->a:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->b:I

    div-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 198
    new-array v1, v0, [Lcom/google/vr/sdk/widgets/video/deps/nk;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 201
    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->d:Lcom/google/vr/sdk/widgets/video/deps/nk;

    aput-object v3, v1, v2

    .line 202
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->a()Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    move-result-object p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 204
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->a:Lcom/google/vr/sdk/widgets/video/deps/nl;

    invoke-interface {p1, v1}, Lcom/google/vr/sdk/widgets/video/deps/nl;->a([Lcom/google/vr/sdk/widgets/video/deps/nk;)V

    return-void
.end method

.method private b(J)V
    .locals 3

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->g:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->b:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 143
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->g:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->g:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c(J)V
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    return-void

    .line 147
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->f:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->b:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 148
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->a:Lcom/google/vr/sdk/widgets/video/deps/nl;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->f:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->d:Lcom/google/vr/sdk/widgets/video/deps/nk;

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/nl;->a(Lcom/google/vr/sdk/widgets/video/deps/nk;)V

    .line 149
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->f:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->a()Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->f:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    goto :goto_0

    .line 150
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->g:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-wide p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->a:J

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->f:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->a:J

    cmp-long v2, p1, v0

    if-gez v2, :cond_2

    .line 151
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->f:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->g:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    :cond_2
    return-void
.end method

.method private d(I)I
    .locals 6

    .line 206
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->h:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-boolean v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->c:Z

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->h:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->a:Lcom/google/vr/sdk/widgets/video/deps/nl;

    invoke-interface {v1}, Lcom/google/vr/sdk/widgets/video/deps/nl;->a()Lcom/google/vr/sdk/widgets/video/deps/nk;

    move-result-object v1

    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->h:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-wide v3, v3, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->b:J

    iget v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->b:I

    invoke-direct {v2, v3, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/ir$a;-><init>(JI)V

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->a(Lcom/google/vr/sdk/widgets/video/deps/nk;Lcom/google/vr/sdk/widgets/video/deps/ir$a;)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->h:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-wide v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->b:J

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->m:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method private e(I)V
    .locals 4

    .line 209
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->m:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->m:J

    .line 210
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->h:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->b:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->h:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->h:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/cs;IZ)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 166
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/ir;->d(I)I

    move-result p2

    .line 167
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->h:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->d:Lcom/google/vr/sdk/widgets/video/deps/nk;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/nk;->a:[B

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->h:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-wide v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->m:J

    .line 168
    invoke-virtual {v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->a(J)I

    move-result v1

    .line 169
    invoke-interface {p1, v0, v1, p2}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    if-eqz p3, :cond_0

    return p2

    .line 173
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 174
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->e(I)V

    return p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;ZZJ)I
    .locals 7

    .line 62
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->c:Lcom/google/vr/sdk/widgets/video/deps/iq;

    iget-object v5, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->i:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->d:Lcom/google/vr/sdk/widgets/video/deps/iq$a;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/iq;->a(Lcom/google/vr/sdk/widgets/video/deps/m;Lcom/google/vr/sdk/widgets/video/deps/bo;ZZLcom/google/vr/sdk/widgets/video/deps/l;Lcom/google/vr/sdk/widgets/video/deps/iq$a;)I

    move-result p3

    const/4 p4, -0x5

    if-eq p3, p4, :cond_5

    const/4 p1, -0x4

    if-eq p3, p1, :cond_1

    const/4 p1, -0x3

    if-ne p3, p1, :cond_0

    return p1

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 66
    :cond_1
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bo;->c()Z

    move-result p3

    if-nez p3, :cond_4

    .line 67
    iget-wide p3, p2, Lcom/google/vr/sdk/widgets/video/deps/bo;->c:J

    cmp-long v0, p3, p5

    if-gez v0, :cond_2

    const/high16 p3, -0x80000000

    .line 68
    invoke-virtual {p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bo;->b(I)V

    .line 69
    :cond_2
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/bo;->g()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 70
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->d:Lcom/google/vr/sdk/widgets/video/deps/iq$a;

    invoke-direct {p0, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(Lcom/google/vr/sdk/widgets/video/deps/bo;Lcom/google/vr/sdk/widgets/video/deps/iq$a;)V

    .line 71
    :cond_3
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->d:Lcom/google/vr/sdk/widgets/video/deps/iq$a;

    iget p3, p3, Lcom/google/vr/sdk/widgets/video/deps/iq$a;->a:I

    invoke-virtual {p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/bo;->e(I)V

    .line 72
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->d:Lcom/google/vr/sdk/widgets/video/deps/iq$a;

    iget-wide p3, p3, Lcom/google/vr/sdk/widgets/video/deps/iq$a;->b:J

    iget-object p2, p2, Lcom/google/vr/sdk/widgets/video/deps/bo;->b:Ljava/nio/ByteBuffer;

    iget-object p5, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->d:Lcom/google/vr/sdk/widgets/video/deps/iq$a;

    iget p5, p5, Lcom/google/vr/sdk/widgets/video/deps/iq$a;->a:I

    invoke-direct {p0, p3, p4, p2, p5}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(JLjava/nio/ByteBuffer;I)V

    :cond_4
    return p1

    .line 64
    :cond_5
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->a:Lcom/google/vr/sdk/widgets/video/deps/l;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->i:Lcom/google/vr/sdk/widgets/video/deps/l;

    return p4
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(Z)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->c:Lcom/google/vr/sdk/widgets/video/deps/iq;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/iq;->b(I)V

    return-void
.end method

.method public a(J)V
    .locals 3

    .line 155
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->l:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    .line 156
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->l:J

    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->j:Z

    :cond_0
    return-void
.end method

.method public a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V
    .locals 12

    move-object v0, p0

    move-wide v1, p1

    .line 185
    iget-boolean v3, v0, Lcom/google/vr/sdk/widgets/video/deps/ir;->j:Z

    if-eqz v3, :cond_0

    .line 186
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/ir;->k:Lcom/google/vr/sdk/widgets/video/deps/l;

    invoke-virtual {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    .line 187
    :cond_0
    iget-boolean v3, v0, Lcom/google/vr/sdk/widgets/video/deps/ir;->n:Z

    if-eqz v3, :cond_3

    and-int/lit8 v3, p3, 0x1

    if-eqz v3, :cond_2

    .line 188
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/ir;->c:Lcom/google/vr/sdk/widgets/video/deps/iq;

    invoke-virtual {v3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/iq;->b(J)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 190
    iput-boolean v3, v0, Lcom/google/vr/sdk/widgets/video/deps/ir;->n:Z

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    .line 191
    :cond_3
    :goto_1
    iget-wide v3, v0, Lcom/google/vr/sdk/widgets/video/deps/ir;->l:J

    add-long v5, v1, v3

    .line 192
    iget-wide v1, v0, Lcom/google/vr/sdk/widgets/video/deps/ir;->m:J

    move/from16 v3, p4

    int-to-long v7, v3

    sub-long/2addr v1, v7

    move/from16 v4, p5

    int-to-long v7, v4

    sub-long v8, v1, v7

    .line 193
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/ir;->c:Lcom/google/vr/sdk/widgets/video/deps/iq;

    move v7, p3

    move/from16 v10, p4

    move-object/from16 v11, p6

    invoke-virtual/range {v4 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/iq;->a(JIJILcom/google/vr/sdk/widgets/video/deps/dc$a;)V

    return-void
.end method

.method public a(JZZ)V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->c:Lcom/google/vr/sdk/widgets/video/deps/iq;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/iq;->b(JZZ)J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ir;->c(J)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ir$b;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->o:Lcom/google/vr/sdk/widgets/video/deps/ir$b;

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/l;)V
    .locals 2

    .line 159
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->l:J

    invoke-static {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(Lcom/google/vr/sdk/widgets/video/deps/l;J)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->c:Lcom/google/vr/sdk/widgets/video/deps/iq;

    invoke-virtual {v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/iq;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)Z

    move-result v1

    .line 161
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->k:Lcom/google/vr/sdk/widgets/video/deps/l;

    const/4 p1, 0x0

    .line 162
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->j:Z

    .line 163
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->o:Lcom/google/vr/sdk/widgets/video/deps/ir$b;

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 164
    invoke-interface {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/ir$b;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V
    .locals 5

    :goto_0
    if-lez p2, :cond_0

    .line 177
    invoke-direct {p0, p2}, Lcom/google/vr/sdk/widgets/video/deps/ir;->d(I)I

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->h:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->d:Lcom/google/vr/sdk/widgets/video/deps/nk;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/nk;->a:[B

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->h:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->m:J

    .line 179
    invoke-virtual {v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->a(J)I

    move-result v2

    .line 180
    invoke-virtual {p1, v1, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BII)V

    sub-int/2addr p2, v0

    .line 182
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ir;->e(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->c:Lcom/google/vr/sdk/widgets/video/deps/iq;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/iq;->a(Z)V

    .line 14
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->f:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(Lcom/google/vr/sdk/widgets/video/deps/ir$a;)V

    .line 15
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->b:I

    const-wide/16 v1, 0x0

    invoke-direct {p1, v1, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/ir$a;-><init>(JI)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->f:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    .line 16
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->g:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    .line 17
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->h:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    .line 18
    iput-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->m:J

    .line 19
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->a:Lcom/google/vr/sdk/widgets/video/deps/nl;

    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/nl;->b()V

    return-void
.end method

.method public b(JZZ)I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->c:Lcom/google/vr/sdk/widgets/video/deps/iq;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/vr/sdk/widgets/video/deps/iq;->a(JZZ)I

    move-result p1

    return p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->n:Z

    return-void
.end method

.method public b(I)V
    .locals 6

    .line 26
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->c:Lcom/google/vr/sdk/widgets/video/deps/iq;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/iq;->a(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->m:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    .line 27
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->f:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->a:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    goto :goto_2

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->f:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    .line 33
    :goto_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->m:J

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->b:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 34
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    .line 36
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(Lcom/google/vr/sdk/widgets/video/deps/ir$a;)V

    .line 37
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-wide v2, p1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->b:J

    iget v4, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->b:I

    invoke-direct {v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/ir$a;-><init>(JI)V

    iput-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    .line 38
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->m:J

    iget-wide v3, p1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->b:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    goto :goto_1

    :cond_2
    move-object v1, p1

    .line 39
    :goto_1
    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->h:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    .line 40
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->g:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    if-ne v1, v0, :cond_4

    .line 41
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;->e:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->g:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    goto :goto_3

    .line 28
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->f:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->a(Lcom/google/vr/sdk/widgets/video/deps/ir$a;)V

    .line 29
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->m:J

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->b:I

    invoke-direct {p1, v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/ir$a;-><init>(JI)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->f:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    .line 30
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->g:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    .line 31
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->h:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    :cond_4
    :goto_3
    return-void
.end method

.method public c()I
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->c:Lcom/google/vr/sdk/widgets/video/deps/iq;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/iq;->a()I

    move-result v0

    return v0
.end method

.method public c(I)Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->c:Lcom/google/vr/sdk/widgets/video/deps/iq;

    invoke-virtual {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/iq;->c(I)Z

    move-result p1

    return p1
.end method

.method public d()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->c:Lcom/google/vr/sdk/widgets/video/deps/iq;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/iq;->e()Z

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->c:Lcom/google/vr/sdk/widgets/video/deps/iq;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/iq;->b()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->c:Lcom/google/vr/sdk/widgets/video/deps/iq;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/iq;->c()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->c:Lcom/google/vr/sdk/widgets/video/deps/iq;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/iq;->d()I

    move-result v0

    return v0
.end method

.method public h()Lcom/google/vr/sdk/widgets/video/deps/l;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->c:Lcom/google/vr/sdk/widgets/video/deps/iq;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/iq;->f()Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v0

    return-object v0
.end method

.method public i()J
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->c:Lcom/google/vr/sdk/widgets/video/deps/iq;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/iq;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public j()J
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->c:Lcom/google/vr/sdk/widgets/video/deps/iq;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/iq;->h()J

    move-result-wide v0

    return-wide v0
.end method

.method public k()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->c:Lcom/google/vr/sdk/widgets/video/deps/iq;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/iq;->i()V

    .line 51
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->f:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->g:Lcom/google/vr/sdk/widgets/video/deps/ir$a;

    return-void
.end method

.method public l()V
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->c:Lcom/google/vr/sdk/widgets/video/deps/iq;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/iq;->k()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->c(J)V

    return-void
.end method

.method public m()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->c:Lcom/google/vr/sdk/widgets/video/deps/iq;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/iq;->l()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ir;->c(J)V

    return-void
.end method

.method public n()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/ir;->c:Lcom/google/vr/sdk/widgets/video/deps/iq;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/iq;->j()I

    move-result v0

    return v0
.end method
