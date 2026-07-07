.class public final Lcom/google/vr/sdk/widgets/video/deps/fk;
.super Ljava/lang/Object;
.source "H264Reader.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/fi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/fk$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/vr/sdk/widgets/video/deps/fx;

.field private final b:Z

.field private final c:Z

.field private final d:Lcom/google/vr/sdk/widgets/video/deps/fp;

.field private final e:Lcom/google/vr/sdk/widgets/video/deps/fp;

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/fp;

.field private g:J

.field private final h:[Z

.field private i:Ljava/lang/String;

.field private j:Lcom/google/vr/sdk/widgets/video/deps/dc;

.field private k:Lcom/google/vr/sdk/widgets/video/deps/fk$a;

.field private l:Z

.field private m:J

.field private final n:Lcom/google/vr/sdk/widgets/video/deps/pe;


# direct methods
.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/fx;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->a:Lcom/google/vr/sdk/widgets/video/deps/fx;

    .line 3
    iput-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->b:Z

    .line 4
    iput-boolean p3, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->c:Z

    const/4 p1, 0x3

    new-array p1, p1, [Z

    .line 5
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->h:[Z

    .line 6
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fp;

    const/4 p2, 0x7

    const/16 p3, 0x80

    invoke-direct {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/fp;-><init>(II)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->d:Lcom/google/vr/sdk/widgets/video/deps/fp;

    .line 7
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fp;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/fp;-><init>(II)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->e:Lcom/google/vr/sdk/widgets/video/deps/fp;

    .line 8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/fp;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/fp;-><init>(II)V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->f:Lcom/google/vr/sdk/widgets/video/deps/fp;

    .line 9
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    return-void
.end method

.method private a(JIIJ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 60
    iget-boolean v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->l:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->k:Lcom/google/vr/sdk/widgets/video/deps/fk$a;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 61
    :cond_0
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->d:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/fp;->b(I)Z

    .line 62
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->e:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/fp;->b(I)Z

    .line 63
    iget-boolean v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->l:Z

    const/4 v3, 0x3

    if-nez v2, :cond_1

    .line 64
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->d:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/fp;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->e:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-virtual {v2}, Lcom/google/vr/sdk/widgets/video/deps/fp;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 66
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->d:Lcom/google/vr/sdk/widgets/video/deps/fp;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/fp;->a:[B

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->d:Lcom/google/vr/sdk/widgets/video/deps/fp;

    iget v4, v4, Lcom/google/vr/sdk/widgets/video/deps/fp;->b:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->e:Lcom/google/vr/sdk/widgets/video/deps/fp;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/fp;->a:[B

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->e:Lcom/google/vr/sdk/widgets/video/deps/fp;

    iget v4, v4, Lcom/google/vr/sdk/widgets/video/deps/fp;->b:I

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->d:Lcom/google/vr/sdk/widgets/video/deps/fp;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/fp;->a:[B

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->d:Lcom/google/vr/sdk/widgets/video/deps/fp;

    iget v4, v4, Lcom/google/vr/sdk/widgets/video/deps/fp;->b:I

    invoke-static {v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/pc;->a([BII)Lcom/google/vr/sdk/widgets/video/deps/pc$b;

    move-result-object v2

    .line 69
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->e:Lcom/google/vr/sdk/widgets/video/deps/fp;

    iget-object v4, v4, Lcom/google/vr/sdk/widgets/video/deps/fp;->a:[B

    iget-object v5, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->e:Lcom/google/vr/sdk/widgets/video/deps/fp;

    iget v5, v5, Lcom/google/vr/sdk/widgets/video/deps/fp;->b:I

    invoke-static {v4, v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/pc;->b([BII)Lcom/google/vr/sdk/widgets/video/deps/pc$a;

    move-result-object v3

    .line 70
    iget-object v15, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->j:Lcom/google/vr/sdk/widgets/video/deps/dc;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->i:Ljava/lang/String;

    iget v5, v2, Lcom/google/vr/sdk/widgets/video/deps/pc$b;->a:I

    iget v6, v2, Lcom/google/vr/sdk/widgets/video/deps/pc$b;->b:I

    iget v7, v2, Lcom/google/vr/sdk/widgets/video/deps/pc$b;->c:I

    .line 71
    invoke-static {v5, v6, v7}, Lcom/google/vr/sdk/widgets/video/deps/or;->b(III)Ljava/lang/String;

    move-result-object v6

    const/4 v7, -0x1

    const/4 v8, -0x1

    iget v9, v2, Lcom/google/vr/sdk/widgets/video/deps/pc$b;->e:I

    iget v10, v2, Lcom/google/vr/sdk/widgets/video/deps/pc$b;->f:I

    const/high16 v11, -0x40800000    # -1.0f

    const/4 v13, -0x1

    iget v14, v2, Lcom/google/vr/sdk/widgets/video/deps/pc$b;->g:F

    const/16 v16, 0x0

    const-string v5, "video/avc"

    move-object v1, v15

    move-object/from16 v15, v16

    .line 72
    invoke-static/range {v4 .. v15}, Lcom/google/vr/sdk/widgets/video/deps/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIFLjava/util/List;IFLcom/google/vr/sdk/widgets/video/deps/cb;)Lcom/google/vr/sdk/widgets/video/deps/l;

    move-result-object v4

    .line 73
    invoke-interface {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/l;)V

    const/4 v1, 0x1

    .line 74
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->l:Z

    .line 75
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->k:Lcom/google/vr/sdk/widgets/video/deps/fk$a;

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->a(Lcom/google/vr/sdk/widgets/video/deps/pc$b;)V

    .line 76
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->k:Lcom/google/vr/sdk/widgets/video/deps/fk$a;

    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->a(Lcom/google/vr/sdk/widgets/video/deps/pc$a;)V

    .line 77
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->d:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/fp;->a()V

    .line 78
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->e:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/fp;->a()V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->d:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/fp;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->d:Lcom/google/vr/sdk/widgets/video/deps/fp;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/fp;->a:[B

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->d:Lcom/google/vr/sdk/widgets/video/deps/fp;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/fp;->b:I

    invoke-static {v1, v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/pc;->a([BII)Lcom/google/vr/sdk/widgets/video/deps/pc$b;

    move-result-object v1

    .line 82
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->k:Lcom/google/vr/sdk/widgets/video/deps/fk$a;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->a(Lcom/google/vr/sdk/widgets/video/deps/pc$b;)V

    .line 83
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->d:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/fp;->a()V

    goto :goto_0

    .line 84
    :cond_2
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->e:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/fp;->b()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->e:Lcom/google/vr/sdk/widgets/video/deps/fp;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/fp;->a:[B

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->e:Lcom/google/vr/sdk/widgets/video/deps/fp;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/fp;->b:I

    invoke-static {v1, v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/pc;->b([BII)Lcom/google/vr/sdk/widgets/video/deps/pc$a;

    move-result-object v1

    .line 86
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->k:Lcom/google/vr/sdk/widgets/video/deps/fk$a;

    invoke-virtual {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->a(Lcom/google/vr/sdk/widgets/video/deps/pc$a;)V

    .line 87
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->e:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/fp;->a()V

    .line 88
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->f:Lcom/google/vr/sdk/widgets/video/deps/fp;

    move/from16 v2, p4

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/fp;->b(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 89
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->f:Lcom/google/vr/sdk/widgets/video/deps/fp;

    iget-object v1, v1, Lcom/google/vr/sdk/widgets/video/deps/fp;->a:[B

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->f:Lcom/google/vr/sdk/widgets/video/deps/fp;

    iget v2, v2, Lcom/google/vr/sdk/widgets/video/deps/fp;->b:I

    invoke-static {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pc;->a([BI)I

    move-result v1

    .line 90
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->f:Lcom/google/vr/sdk/widgets/video/deps/fp;

    iget-object v3, v3, Lcom/google/vr/sdk/widgets/video/deps/fp;->a:[B

    invoke-virtual {v2, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a([BI)V

    .line 91
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c(I)V

    .line 92
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->a:Lcom/google/vr/sdk/widgets/video/deps/fx;

    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->n:Lcom/google/vr/sdk/widgets/video/deps/pe;

    move-wide/from16 v3, p5

    invoke-virtual {v1, v3, v4, v2}, Lcom/google/vr/sdk/widgets/video/deps/fx;->a(JLcom/google/vr/sdk/widgets/video/deps/pe;)V

    .line 93
    :cond_4
    iget-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/fk;->k:Lcom/google/vr/sdk/widgets/video/deps/fk$a;

    move-wide/from16 v2, p1

    move/from16 v4, p3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->a(JI)V

    return-void
.end method

.method private a(JIJ)V
    .locals 7

    .line 48
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->k:Lcom/google/vr/sdk/widgets/video/deps/fk$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->d:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-virtual {v0, p3}, Lcom/google/vr/sdk/widgets/video/deps/fp;->a(I)V

    .line 50
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->e:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-virtual {v0, p3}, Lcom/google/vr/sdk/widgets/video/deps/fp;->a(I)V

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->f:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-virtual {v0, p3}, Lcom/google/vr/sdk/widgets/video/deps/fp;->a(I)V

    .line 52
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->k:Lcom/google/vr/sdk/widgets/video/deps/fk$a;

    move-wide v2, p1

    move v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->a(JIJ)V

    return-void
.end method

.method private a([BII)V
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->k:Lcom/google/vr/sdk/widgets/video/deps/fk$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->d:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/fp;->a([BII)V

    .line 56
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->e:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/fp;->a([BII)V

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->f:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/fp;->a([BII)V

    .line 58
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->k:Lcom/google/vr/sdk/widgets/video/deps/fk$a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->a([BII)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 11
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->h:[Z

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/pc;->a([Z)V

    .line 12
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->d:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fp;->a()V

    .line 13
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->e:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fp;->a()V

    .line 14
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->f:Lcom/google/vr/sdk/widgets/video/deps/fp;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fp;->a()V

    .line 15
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->k:Lcom/google/vr/sdk/widgets/video/deps/fk$a;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/fk$a;->b()V

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->g:J

    return-void
.end method

.method public a(JZ)V
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->m:J

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/gd$d;)V
    .locals 4

    .line 18
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->a()V

    .line 19
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->i:Ljava/lang/String;

    .line 20
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gd$d;->b()I

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ct;->a(II)Lcom/google/vr/sdk/widgets/video/deps/dc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->j:Lcom/google/vr/sdk/widgets/video/deps/dc;

    .line 21
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/fk$a;

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->b:Z

    iget-boolean v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->c:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/fk$a;-><init>(Lcom/google/vr/sdk/widgets/video/deps/dc;ZZ)V

    iput-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->k:Lcom/google/vr/sdk/widgets/video/deps/fk$a;

    .line 22
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->a:Lcom/google/vr/sdk/widgets/video/deps/fx;

    invoke-virtual {v0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/fx;->a(Lcom/google/vr/sdk/widgets/video/deps/ct;Lcom/google/vr/sdk/widgets/video/deps/gd$d;)V

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/pe;)V
    .locals 14

    .line 26
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d()I

    move-result v0

    .line 27
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->c()I

    move-result v1

    .line 28
    iget-object v2, p1, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    .line 29
    iget-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->g:J

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->g:J

    .line 30
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->j:Lcom/google/vr/sdk/widgets/video/deps/dc;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->b()I

    move-result v4

    invoke-interface {v3, p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/dc;->a(Lcom/google/vr/sdk/widgets/video/deps/pe;I)V

    .line 31
    :goto_0
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->h:[Z

    invoke-static {v2, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/pc;->a([BII[Z)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 33
    invoke-direct {p0, v2, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/fk;->a([BII)V

    return-void

    .line 35
    :cond_0
    invoke-static {v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/pc;->b([BI)I

    move-result v6

    sub-int v3, p1, v0

    if-lez v3, :cond_1

    .line 38
    invoke-direct {p0, v2, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/fk;->a([BII)V

    :cond_1
    sub-int v10, v1, p1

    .line 40
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->g:J

    int-to-long v7, v10

    sub-long/2addr v4, v7

    if-gez v3, :cond_2

    neg-int v0, v3

    move v11, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 42
    :goto_1
    iget-wide v12, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->m:J

    move-object v7, p0

    move-wide v8, v4

    .line 43
    invoke-direct/range {v7 .. v13}, Lcom/google/vr/sdk/widgets/video/deps/fk;->a(JIIJ)V

    .line 44
    iget-wide v7, p0, Lcom/google/vr/sdk/widgets/video/deps/fk;->m:J

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/google/vr/sdk/widgets/video/deps/fk;->a(JIJ)V

    add-int/lit8 v0, p1, 0x3

    goto :goto_0
.end method

.method public b()V
    .locals 0

    return-void
.end method
