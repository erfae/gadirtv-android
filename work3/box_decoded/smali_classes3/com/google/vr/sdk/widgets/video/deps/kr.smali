.class final Lcom/google/vr/sdk/widgets/video/deps/kr;
.super Lcom/google/vr/sdk/widgets/video/deps/jk;
.source "HlsMediaChunk.java"


# static fields
.field private static final m:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private A:Lcom/google/vr/sdk/widgets/video/deps/he;

.field private B:Lcom/google/vr/sdk/widgets/video/deps/pe;

.field private C:Lcom/google/vr/sdk/widgets/video/deps/kv;

.field private D:I

.field private E:I

.field private F:Z

.field private G:Z

.field private volatile H:Z

.field private I:Z

.field public final a:I

.field public final k:I

.field public final l:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

.field private final n:Lcom/google/vr/sdk/widgets/video/deps/nr;

.field private final o:Lcom/google/vr/sdk/widgets/video/deps/nv;

.field private final p:Z

.field private final q:Z

.field private final r:Z

.field private final s:Lcom/google/vr/sdk/widgets/video/deps/pp;

.field private final t:Z

.field private final u:Lcom/google/vr/sdk/widgets/video/deps/kp;

.field private final v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Lcom/google/vr/sdk/widgets/video/deps/cb;

.field private final x:Lcom/google/vr/sdk/widgets/video/deps/cr;

.field private y:Lcom/google/vr/sdk/widgets/video/deps/cr;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 128
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/kp;Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;Lcom/google/vr/sdk/widgets/video/deps/nv;Lcom/google/vr/sdk/widgets/video/deps/lc$a;Ljava/util/List;ILjava/lang/Object;JJJIZZLcom/google/vr/sdk/widgets/video/deps/pp;Lcom/google/vr/sdk/widgets/video/deps/kr;Lcom/google/vr/sdk/widgets/video/deps/cb;[B[B)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/vr/sdk/widgets/video/deps/kp;",
            "Lcom/google/vr/sdk/widgets/video/deps/nr;",
            "Lcom/google/vr/sdk/widgets/video/deps/nv;",
            "Lcom/google/vr/sdk/widgets/video/deps/nv;",
            "Lcom/google/vr/sdk/widgets/video/deps/lc$a;",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/l;",
            ">;I",
            "Ljava/lang/Object;",
            "JJJIZZ",
            "Lcom/google/vr/sdk/widgets/video/deps/pp;",
            "Lcom/google/vr/sdk/widgets/video/deps/kr;",
            "Lcom/google/vr/sdk/widgets/video/deps/cb;",
            "[B[B)V"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v14, p5

    move/from16 v15, p15

    move-object/from16 v10, p19

    move-object/from16 v11, p21

    move-object/from16 v0, p22

    .line 2
    invoke-static {v13, v11, v0}, Lcom/google/vr/sdk/widgets/video/deps/kr;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;[B[B)Lcom/google/vr/sdk/widgets/video/deps/nr;

    move-result-object v1

    iget-object v3, v14, Lcom/google/vr/sdk/widgets/video/deps/lc$a;->b:Lcom/google/vr/sdk/widgets/video/deps/l;

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v4, p7

    move-object/from16 v5, p8

    move-wide/from16 v6, p9

    move-wide/from16 v8, p11

    move-object v13, v10

    move-wide/from16 v10, p13

    .line 3
    invoke-direct/range {v0 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/jk;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;Lcom/google/vr/sdk/widgets/video/deps/l;ILjava/lang/Object;JJJ)V

    .line 4
    iput v15, v12, Lcom/google/vr/sdk/widgets/video/deps/kr;->k:I

    move-object/from16 v0, p4

    .line 5
    iput-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/kr;->o:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 6
    iput-object v14, v12, Lcom/google/vr/sdk/widgets/video/deps/kr;->l:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    move/from16 v0, p17

    .line 7
    iput-boolean v0, v12, Lcom/google/vr/sdk/widgets/video/deps/kr;->q:Z

    move-object/from16 v0, p18

    .line 8
    iput-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/kr;->s:Lcom/google/vr/sdk/widgets/video/deps/pp;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p21, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 9
    :goto_0
    iput-boolean v2, v12, Lcom/google/vr/sdk/widgets/video/deps/kr;->p:Z

    move/from16 v2, p16

    .line 10
    iput-boolean v2, v12, Lcom/google/vr/sdk/widgets/video/deps/kr;->r:Z

    move-object/from16 v2, p1

    .line 11
    iput-object v2, v12, Lcom/google/vr/sdk/widgets/video/deps/kr;->u:Lcom/google/vr/sdk/widgets/video/deps/kp;

    move-object/from16 v2, p6

    .line 12
    iput-object v2, v12, Lcom/google/vr/sdk/widgets/video/deps/kr;->v:Ljava/util/List;

    move-object/from16 v2, p20

    .line 13
    iput-object v2, v12, Lcom/google/vr/sdk/widgets/video/deps/kr;->w:Lcom/google/vr/sdk/widgets/video/deps/cb;

    const/4 v2, 0x0

    if-eqz v13, :cond_3

    .line 16
    iget-object v3, v13, Lcom/google/vr/sdk/widgets/video/deps/kr;->A:Lcom/google/vr/sdk/widgets/video/deps/he;

    iput-object v3, v12, Lcom/google/vr/sdk/widgets/video/deps/kr;->A:Lcom/google/vr/sdk/widgets/video/deps/he;

    .line 17
    iget-object v3, v13, Lcom/google/vr/sdk/widgets/video/deps/kr;->B:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iput-object v3, v12, Lcom/google/vr/sdk/widgets/video/deps/kr;->B:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 18
    iget-object v3, v13, Lcom/google/vr/sdk/widgets/video/deps/kr;->l:Lcom/google/vr/sdk/widgets/video/deps/lc$a;

    if-eq v3, v14, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v12, Lcom/google/vr/sdk/widgets/video/deps/kr;->t:Z

    .line 19
    iget v1, v13, Lcom/google/vr/sdk/widgets/video/deps/kr;->k:I

    if-ne v1, v15, :cond_4

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, v13, Lcom/google/vr/sdk/widgets/video/deps/kr;->y:Lcom/google/vr/sdk/widgets/video/deps/cr;

    move-object v2, v0

    goto :goto_2

    .line 20
    :cond_3
    iput-boolean v1, v12, Lcom/google/vr/sdk/widgets/video/deps/kr;->t:Z

    .line 21
    :cond_4
    :goto_2
    iput-object v2, v12, Lcom/google/vr/sdk/widgets/video/deps/kr;->x:Lcom/google/vr/sdk/widgets/video/deps/cr;

    move-object/from16 v0, p2

    .line 22
    iput-object v0, v12, Lcom/google/vr/sdk/widgets/video/deps/kr;->n:Lcom/google/vr/sdk/widgets/video/deps/nr;

    .line 23
    sget-object v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, v12, Lcom/google/vr/sdk/widgets/video/deps/kr;->a:I

    return-void
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/cs;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 95
    invoke-interface {p1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->a()V

    .line 96
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->B:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/4 v1, 0x0

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BIIZ)Z

    move-result v0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    return-wide v4

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->B:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a(I)V

    .line 99
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->B:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->l()I

    move-result v0

    .line 100
    sget v6, Lcom/google/vr/sdk/widgets/video/deps/he;->b:I

    if-eq v0, v6, :cond_1

    return-wide v4

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->B:Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lcom/google/vr/sdk/widgets/video/deps/pe;->d(I)V

    .line 103
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->B:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/pe;->u()I

    move-result v0

    add-int/lit8 v6, v0, 0xa

    .line 105
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->B:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v7}, Lcom/google/vr/sdk/widgets/video/deps/pe;->e()I

    move-result v7

    if-le v6, v7, :cond_2

    .line 106
    iget-object v7, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->B:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v7, v7, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    .line 107
    iget-object v8, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->B:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {v8, v6}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a(I)V

    .line 108
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->B:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-static {v7, v1, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    :cond_2
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->B:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v6, v6, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-interface {p1, v6, v2, v0, v3}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b([BIIZ)Z

    move-result p1

    if-nez p1, :cond_3

    return-wide v4

    .line 111
    :cond_3
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->A:Lcom/google/vr/sdk/widgets/video/deps/he;

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->B:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v2, v2, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    invoke-virtual {p1, v2, v0}, Lcom/google/vr/sdk/widgets/video/deps/he;->a([BI)Lcom/google/vr/sdk/widgets/video/deps/gp;

    move-result-object p1

    if-nez p1, :cond_4

    return-wide v4

    .line 114
    :cond_4
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/gp;->a()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_6

    .line 116
    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gp;->a(I)Lcom/google/vr/sdk/widgets/video/deps/gp$a;

    move-result-object v3

    .line 117
    instance-of v6, v3, Lcom/google/vr/sdk/widgets/video/deps/hi;

    if-eqz v6, :cond_5

    .line 118
    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/hi;

    .line 119
    iget-object v6, v3, Lcom/google/vr/sdk/widgets/video/deps/hi;->a:Ljava/lang/String;

    const-string v7, "com.apple.streaming.transportStreamTimestamp"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 120
    iget-object p1, v3, Lcom/google/vr/sdk/widgets/video/deps/hi;->b:[B

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->B:Lcom/google/vr/sdk/widgets/video/deps/pe;

    iget-object v0, v0, Lcom/google/vr/sdk/widgets/video/deps/pe;->a:[B

    const/16 v2, 0x8

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->B:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/pe;->a(I)V

    .line 122
    iget-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->B:Lcom/google/vr/sdk/widgets/video/deps/pe;

    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/pe;->r()J

    move-result-wide v0

    const-wide v2, 0x1ffffffffL

    and-long/2addr v0, v2

    return-wide v0

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-wide v4
.end method

.method private a(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;)Lcom/google/vr/sdk/widgets/video/deps/co;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    .line 79
    invoke-interface/range {p1 .. p2}, Lcom/google/vr/sdk/widgets/video/deps/nr;->a(Lcom/google/vr/sdk/widgets/video/deps/nv;)J

    move-result-wide v5

    .line 80
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->y:Lcom/google/vr/sdk/widgets/video/deps/cr;

    if-nez v2, :cond_3

    .line 81
    iget-object v7, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->u:Lcom/google/vr/sdk/widgets/video/deps/kp;

    iget-object v8, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->x:Lcom/google/vr/sdk/widgets/video/deps/cr;

    iget-object v9, v1, Lcom/google/vr/sdk/widgets/video/deps/nv;->a:Landroid/net/Uri;

    iget-object v10, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->d:Lcom/google/vr/sdk/widgets/video/deps/l;

    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->v:Ljava/util/List;

    iget-object v12, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->w:Lcom/google/vr/sdk/widgets/video/deps/cb;

    iget-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->s:Lcom/google/vr/sdk/widgets/video/deps/pp;

    .line 82
    invoke-interface/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/nr;->b()Ljava/util/Map;

    move-result-object v14

    .line 83
    invoke-interface/range {v7 .. v14}, Lcom/google/vr/sdk/widgets/video/deps/kp;->a(Lcom/google/vr/sdk/widgets/video/deps/cr;Landroid/net/Uri;Lcom/google/vr/sdk/widgets/video/deps/l;Ljava/util/List;Lcom/google/vr/sdk/widgets/video/deps/cb;Lcom/google/vr/sdk/widgets/video/deps/pp;Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v2

    .line 84
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/cr;

    iput-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->y:Lcom/google/vr/sdk/widgets/video/deps/cr;

    .line 85
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->z:Z

    .line 86
    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->y:Lcom/google/vr/sdk/widgets/video/deps/cr;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->x:Lcom/google/vr/sdk/widgets/video/deps/cr;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 87
    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->o:Lcom/google/vr/sdk/widgets/video/deps/nv;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v7, 0x0

    :goto_1
    iput-boolean v7, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->G:Z

    if-eqz v2, :cond_2

    .line 88
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->B:Lcom/google/vr/sdk/widgets/video/deps/pe;

    if-nez v2, :cond_2

    .line 89
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/he;

    invoke-direct {v2}, Lcom/google/vr/sdk/widgets/video/deps/he;-><init>()V

    iput-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->A:Lcom/google/vr/sdk/widgets/video/deps/he;

    .line 90
    new-instance v2, Lcom/google/vr/sdk/widgets/video/deps/pe;

    const/16 v4, 0xa

    invoke-direct {v2, v4}, Lcom/google/vr/sdk/widgets/video/deps/pe;-><init>(I)V

    iput-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->B:Lcom/google/vr/sdk/widgets/video/deps/pe;

    .line 91
    :cond_2
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->C:Lcom/google/vr/sdk/widgets/video/deps/kv;

    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->a:I

    iget-boolean v7, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->t:Z

    invoke-virtual {v2, v4, v7, v3}, Lcom/google/vr/sdk/widgets/video/deps/kv;->a(IZZ)V

    if-nez v3, :cond_3

    .line 93
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->y:Lcom/google/vr/sdk/widgets/video/deps/cr;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/kr;->C:Lcom/google/vr/sdk/widgets/video/deps/kv;

    invoke-interface {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/cr;->a(Lcom/google/vr/sdk/widgets/video/deps/ct;)V

    .line 94
    :cond_3
    new-instance v7, Lcom/google/vr/sdk/widgets/video/deps/co;

    iget-wide v3, v1, Lcom/google/vr/sdk/widgets/video/deps/nv;->e:J

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/co;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;JJ)V

    return-object v7
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/nr;[B[B)Lcom/google/vr/sdk/widgets/video/deps/nr;
    .locals 1

    if-eqz p1, :cond_0

    .line 126
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/kk;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/kk;-><init>(Lcom/google/vr/sdk/widgets/video/deps/nr;[B[B)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method private c()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 36
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->G:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->o:Lcom/google/vr/sdk/widgets/video/deps/nv;

    if-nez v0, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->D:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/nv;->a(J)Lcom/google/vr/sdk/widgets/video/deps/nv;

    move-result-object v0

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->n:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-direct {p0, v1, v0}, Lcom/google/vr/sdk/widgets/video/deps/kr;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;)Lcom/google/vr/sdk/widgets/video/deps/co;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 41
    :try_start_1
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->H:Z

    if-nez v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->y:Lcom/google/vr/sdk/widgets/video/deps/cr;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/cr;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 45
    :try_start_2
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/co;->c()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->o:Lcom/google/vr/sdk/widgets/video/deps/nv;

    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/nv;->e:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->D:I

    throw v1

    .line 43
    :cond_1
    invoke-virtual {v0}, Lcom/google/vr/sdk/widgets/video/deps/co;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->o:Lcom/google/vr/sdk/widgets/video/deps/nv;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/nv;->e:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->D:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->n:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;)V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->G:Z

    return-void

    :catchall_1
    move-exception v0

    .line 48
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->n:Lcom/google/vr/sdk/widgets/video/deps/nr;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;)V

    throw v0

    :cond_2
    :goto_1
    return-void
.end method

.method private j()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 51
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->p:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    .line 53
    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->E:I

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    iget v3, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->E:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/nv;->a(J)Lcom/google/vr/sdk/widgets/video/deps/nv;

    move-result-object v0

    :cond_1
    const/4 v3, 0x0

    .line 56
    :goto_0
    iget-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->q:Z

    if-nez v4, :cond_2

    .line 57
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->s:Lcom/google/vr/sdk/widgets/video/deps/pp;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/pp;->e()V

    goto :goto_1

    .line 58
    :cond_2
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->s:Lcom/google/vr/sdk/widgets/video/deps/pp;

    invoke-virtual {v4}, Lcom/google/vr/sdk/widgets/video/deps/pp;->a()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    .line 59
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->s:Lcom/google/vr/sdk/widgets/video/deps/pp;

    iget-wide v5, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->g:J

    invoke-virtual {v4, v5, v6}, Lcom/google/vr/sdk/widgets/video/deps/pp;->a(J)V

    .line 60
    :cond_3
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->i:Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-direct {p0, v4, v0}, Lcom/google/vr/sdk/widgets/video/deps/kr;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;Lcom/google/vr/sdk/widgets/video/deps/nv;)Lcom/google/vr/sdk/widgets/video/deps/co;

    move-result-object v0

    .line 61
    iget-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->z:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->F:Z

    if-nez v4, :cond_5

    .line 62
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/kr;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;)J

    move-result-wide v4

    .line 63
    iput-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->F:Z

    .line 64
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->C:Lcom/google/vr/sdk/widgets/video/deps/kv;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v4, v6

    if-eqz v8, :cond_4

    .line 65
    iget-object v6, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->s:Lcom/google/vr/sdk/widgets/video/deps/pp;

    invoke-virtual {v6, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/pp;->b(J)J

    move-result-wide v4

    goto :goto_2

    :cond_4
    iget-wide v4, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->g:J

    .line 66
    :goto_2
    invoke-virtual {v1, v4, v5}, Lcom/google/vr/sdk/widgets/video/deps/kv;->b(J)V

    :cond_5
    if-eqz v3, :cond_6

    .line 68
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->E:I

    invoke-interface {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cs;->b(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_6
    :goto_3
    if-nez v2, :cond_7

    .line 70
    :try_start_1
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->H:Z

    if-nez v1, :cond_7

    .line 71
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->y:Lcom/google/vr/sdk/widgets/video/deps/cr;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/google/vr/sdk/widgets/video/deps/cr;->a(Lcom/google/vr/sdk/widgets/video/deps/cs;Lcom/google/vr/sdk/widgets/video/deps/cz;)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v1

    .line 74
    :try_start_2
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v2

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    iget-wide v4, v0, Lcom/google/vr/sdk/widgets/video/deps/nv;->e:J

    sub-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->E:I

    throw v1

    .line 72
    :cond_7
    invoke-interface {v0}, Lcom/google/vr/sdk/widgets/video/deps/cs;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->b:Lcom/google/vr/sdk/widgets/video/deps/nv;

    iget-wide v2, v2, Lcom/google/vr/sdk/widgets/video/deps/nv;->e:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    iput v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->E:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 75
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->i:Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;)V

    return-void

    :catchall_1
    move-exception v0

    .line 77
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->i:Lcom/google/vr/sdk/widgets/video/deps/on;

    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Lcom/google/vr/sdk/widgets/video/deps/nr;)V

    throw v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->H:Z

    return-void
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/kv;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->C:Lcom/google/vr/sdk/widgets/video/deps/kv;

    return-void
.end method

.method public b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/kr;->c()V

    .line 31
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->H:Z

    if-nez v0, :cond_1

    .line 32
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->r:Z

    if-nez v0, :cond_0

    .line 33
    invoke-direct {p0}, Lcom/google/vr/sdk/widgets/video/deps/kr;->j()V

    :cond_0
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->I:Z

    :cond_1
    return-void
.end method

.method public i()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/kr;->I:Z

    return v0
.end method
