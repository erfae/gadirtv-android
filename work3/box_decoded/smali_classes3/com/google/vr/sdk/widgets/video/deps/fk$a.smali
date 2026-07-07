.class final Lcom/google/vr/sdk/widgets/video/deps/fk$a;
.super Ljava/lang/Object;
.source "H264Reader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/fk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/dc;

.field private final b:Z

.field private final c:Z

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/pc$b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/vr/sdk/widgets/video/deps/pc$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/pf;

.field private g:[B

.field private h:I

.field private i:I

.field private j:J

.field private k:Z

.field private l:J

.field private m:Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;

.field private n:Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;

.field private o:Z

.field private p:J

.field private q:J

.field private r:Z


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/dc;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->a:Lcom/google/vr/sdk/widgets/video/deps/dc;

    .line 3
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->b:Z

    .line 4
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->c:Z

    .line 5
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->d:Landroid/util/SparseArray;

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->e:Landroid/util/SparseArray;

    .line 7
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fk$1;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->m:Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;

    .line 8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/fk$1;)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->n:Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;

    const/16 p1, 0x80

    new-array p1, p1, [B

    .line 9
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->g:[B

    .line 10
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/pf;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3, p3}, Lcom/google/vr/sdk/widgets/video/deps/pf;-><init>([BII)V

    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    .line 11
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->b()V

    return-void
.end method

.method private a(I)V
    .locals 7

    .line 124
    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->r:Z

    .line 125
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->j:J

    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->p:J

    sub-long/2addr v0, v4

    long-to-int v4, v0

    .line 126
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->a:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->q:J

    const/4 v6, 0x0

    move v5, p1

    invoke-interface/range {v0 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(JIIILcom/google/vr/sdk/widgets/video/deps/dc$a;)V

    return-void
.end method


# virtual methods
.method public a(JI)V
    .locals 5

    .line 112
    iget v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->i:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->n:Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->m:Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;

    .line 113
    invoke-static {v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->a(Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 114
    :cond_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->o:Z

    if-eqz v0, :cond_1

    .line 115
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->j:J

    sub-long/2addr p1, v3

    long-to-int p2, p1

    add-int/2addr p3, p2

    .line 116
    invoke-direct {p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->a(I)V

    .line 117
    :cond_1
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->j:J

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->p:J

    .line 118
    iget-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->l:J

    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->q:J

    .line 119
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->r:Z

    .line 120
    iput-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->o:Z

    .line 121
    :cond_2
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->r:Z

    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->i:I

    const/4 p3, 0x5

    if-eq p2, p3, :cond_3

    iget-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->b:Z

    if-eqz p3, :cond_4

    if-ne p2, v2, :cond_4

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->n:Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;

    .line 122
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    or-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->r:Z

    return-void
.end method

.method public a(JIJ)V
    .locals 0

    .line 22
    iput p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->i:I

    .line 23
    iput-wide p4, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->l:J

    .line 24
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->j:J

    .line 25
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->b:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    if-eq p3, p2, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->c:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    if-eq p3, p1, :cond_1

    if-eq p3, p2, :cond_1

    const/4 p1, 0x2

    if-ne p3, p1, :cond_2

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->m:Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;

    .line 27
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->n:Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;

    iput-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->m:Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;

    .line 28
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->n:Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;

    .line 29
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->a()V

    const/4 p1, 0x0

    .line 30
    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->h:I

    .line 31
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->k:Z

    :cond_2
    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/pc$a;)V
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->e:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/pc$a;->a:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/pc$b;)V
    .locals 2

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->d:Landroid/util/SparseArray;

    iget v1, p1, Lcom/google/vr/sdk/widgets/video/deps/pc$b;->d:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public a([BII)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 33
    iget-boolean v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->k:Z

    if-nez v2, :cond_0

    return-void

    :cond_0
    sub-int v2, p3, v1

    .line 36
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->g:[B

    array-length v4, v3

    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->h:I

    add-int v6, v5, v2

    const/4 v7, 0x2

    if-ge v4, v6, :cond_1

    add-int/2addr v5, v2

    mul-int/lit8 v5, v5, 0x2

    .line 37
    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->g:[B

    .line 38
    :cond_1
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->g:[B

    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->h:I

    move-object/from16 v5, p1

    invoke-static {v5, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->h:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->h:I

    .line 40
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->g:[B

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/pf;->a([BII)V

    .line 41
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pf;->b(I)Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 43
    :cond_2
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pf;->a()V

    .line 44
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    invoke-virtual {v1, v7}, Lcom/google/vr/sdk/widgets/video/deps/pf;->c(I)I

    move-result v10

    .line 45
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pf;->a(I)V

    .line 46
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pf;->c()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 48
    :cond_3
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pf;->d()I

    .line 49
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pf;->c()Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 51
    :cond_4
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pf;->d()I

    move-result v11

    .line 52
    iget-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->c:Z

    if-nez v1, :cond_5

    .line 53
    iput-boolean v4, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->k:Z

    .line 54
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->n:Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;

    invoke-virtual {v1, v11}, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->a(I)V

    return-void

    .line 56
    :cond_5
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pf;->c()Z

    move-result v1

    if-nez v1, :cond_6

    return-void

    .line 58
    :cond_6
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pf;->d()I

    move-result v13

    .line 59
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_7

    .line 60
    iput-boolean v4, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->k:Z

    return-void

    .line 62
    :cond_7
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/pc$a;

    .line 63
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->d:Landroid/util/SparseArray;

    iget v5, v1, Lcom/google/vr/sdk/widgets/video/deps/pc$a;->b:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Lcom/google/vr/sdk/widgets/video/deps/pc$b;

    .line 64
    iget-boolean v3, v9, Lcom/google/vr/sdk/widgets/video/deps/pc$b;->h:Z

    if-eqz v3, :cond_9

    .line 65
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    invoke-virtual {v3, v7}, Lcom/google/vr/sdk/widgets/video/deps/pf;->b(I)Z

    move-result v3

    if-nez v3, :cond_8

    return-void

    .line 67
    :cond_8
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    invoke-virtual {v3, v7}, Lcom/google/vr/sdk/widgets/video/deps/pf;->a(I)V

    .line 68
    :cond_9
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    iget v5, v9, Lcom/google/vr/sdk/widgets/video/deps/pc$b;->j:I

    invoke-virtual {v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/pf;->b(I)Z

    move-result v3

    if-nez v3, :cond_a

    return-void

    .line 73
    :cond_a
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    iget v5, v9, Lcom/google/vr/sdk/widgets/video/deps/pc$b;->j:I

    invoke-virtual {v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/pf;->c(I)I

    move-result v12

    .line 74
    iget-boolean v3, v9, Lcom/google/vr/sdk/widgets/video/deps/pc$b;->i:Z

    const/4 v5, 0x1

    if-nez v3, :cond_e

    .line 75
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    invoke-virtual {v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/pf;->b(I)Z

    move-result v3

    if-nez v3, :cond_b

    return-void

    .line 77
    :cond_b
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    invoke-virtual {v3}, Lcom/google/vr/sdk/widgets/video/deps/pf;->b()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 79
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    invoke-virtual {v6, v5}, Lcom/google/vr/sdk/widgets/video/deps/pf;->b(I)Z

    move-result v6

    if-nez v6, :cond_c

    return-void

    .line 81
    :cond_c
    iget-object v6, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    invoke-virtual {v6}, Lcom/google/vr/sdk/widgets/video/deps/pf;->b()Z

    move-result v6

    move v14, v3

    move/from16 v16, v6

    const/4 v15, 0x1

    goto :goto_1

    :cond_d
    move v14, v3

    goto :goto_0

    :cond_e
    const/4 v14, 0x0

    :goto_0
    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 83
    :goto_1
    iget v3, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->i:I

    if-ne v3, v2, :cond_f

    const/16 v17, 0x1

    goto :goto_2

    :cond_f
    const/16 v17, 0x0

    :goto_2
    if-eqz v17, :cond_11

    .line 86
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/pf;->c()Z

    move-result v2

    if-nez v2, :cond_10

    return-void

    .line 88
    :cond_10
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/pf;->d()I

    move-result v2

    move/from16 v18, v2

    goto :goto_3

    :cond_11
    const/16 v18, 0x0

    .line 93
    :goto_3
    iget v2, v9, Lcom/google/vr/sdk/widgets/video/deps/pc$b;->k:I

    if-nez v2, :cond_15

    .line 94
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    iget v3, v9, Lcom/google/vr/sdk/widgets/video/deps/pc$b;->l:I

    invoke-virtual {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/pf;->b(I)Z

    move-result v2

    if-nez v2, :cond_12

    return-void

    .line 96
    :cond_12
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    iget v3, v9, Lcom/google/vr/sdk/widgets/video/deps/pc$b;->l:I

    invoke-virtual {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/pf;->c(I)I

    move-result v2

    .line 97
    iget-boolean v1, v1, Lcom/google/vr/sdk/widgets/video/deps/pc$a;->c:Z

    if-eqz v1, :cond_14

    if-nez v14, :cond_14

    .line 98
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pf;->c()Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    .line 100
    :cond_13
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pf;->e()I

    move-result v1

    move/from16 v20, v1

    move/from16 v19, v2

    goto :goto_5

    :cond_14
    move/from16 v19, v2

    goto :goto_4

    .line 101
    :cond_15
    iget v2, v9, Lcom/google/vr/sdk/widgets/video/deps/pc$b;->k:I

    if-ne v2, v5, :cond_19

    iget-boolean v2, v9, Lcom/google/vr/sdk/widgets/video/deps/pc$b;->m:Z

    if-nez v2, :cond_19

    .line 102
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/pf;->c()Z

    move-result v2

    if-nez v2, :cond_16

    return-void

    .line 104
    :cond_16
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/pf;->e()I

    move-result v2

    .line 105
    iget-boolean v1, v1, Lcom/google/vr/sdk/widgets/video/deps/pc$a;->c:Z

    if-eqz v1, :cond_18

    if-nez v14, :cond_18

    .line 106
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pf;->c()Z

    move-result v1

    if-nez v1, :cond_17

    return-void

    .line 108
    :cond_17
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->f:Lcom/google/vr/sdk/widgets/video/deps/pf;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/pf;->e()I

    move-result v1

    move/from16 v22, v1

    move/from16 v21, v2

    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_7

    :cond_18
    move/from16 v21, v2

    const/16 v19, 0x0

    const/16 v20, 0x0

    goto :goto_6

    :cond_19
    const/16 v19, 0x0

    :goto_4
    const/16 v20, 0x0

    :goto_5
    const/16 v21, 0x0

    :goto_6
    const/16 v22, 0x0

    .line 109
    :goto_7
    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->n:Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;

    invoke-virtual/range {v8 .. v22}, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->a(Lcom/google/vr/sdk/widgets/video/deps/pc$b;IIIIZZZZIIIII)V

    .line 110
    iput-boolean v4, v0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->k:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->c:Z

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->k:Z

    .line 19
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->o:Z

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->n:Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fk$a$a;->a()V

    return-void
.end method
