.class public final Lcom/google/ads/interactivemedia/v3/internal/ej;
.super Lcom/google/ads/interactivemedia/v3/internal/bi;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/dx;


# instance fields
.field private A:I

.field private final B:Lcom/google/ads/interactivemedia/v3/internal/fe;

.field private final C:F

.field private D:Z

.field private E:Z

.field private F:Lcom/google/ads/interactivemedia/v3/internal/hf;

.field private final G:Lcom/google/ads/interactivemedia/v3/internal/app;

.field protected final b:[Lcom/google/ads/interactivemedia/v3/internal/ed;

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/ck;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/ei;

.field private final e:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/ads/interactivemedia/v3/internal/acx;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/ads/interactivemedia/v3/internal/fg;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private final h:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/ads/interactivemedia/v3/internal/hg;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/ads/interactivemedia/v3/internal/adh;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/ads/interactivemedia/v3/internal/fs;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Lcom/google/ads/interactivemedia/v3/internal/ev;

.field private final l:Lcom/google/ads/interactivemedia/v3/internal/bb;

.field private final m:Lcom/google/ads/interactivemedia/v3/internal/bf;

.field private final n:Lcom/google/ads/interactivemedia/v3/internal/en;

.field private final o:Lcom/google/ads/interactivemedia/v3/internal/es;

.field private final p:Lcom/google/ads/interactivemedia/v3/internal/et;

.field private q:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private r:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private s:Landroid/view/Surface;

.field private t:Z

.field private final u:I

.field private v:Landroid/view/SurfaceHolder;

.field private w:I

.field private x:I

.field private y:Lcom/google/ads/interactivemedia/v3/internal/hc;

.field private z:Lcom/google/ads/interactivemedia/v3/internal/hc;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/alr;Lcom/google/ads/interactivemedia/v3/internal/yw;Lcom/google/ads/interactivemedia/v3/internal/sa;Lcom/google/ads/interactivemedia/v3/internal/bl;Lcom/google/ads/interactivemedia/v3/internal/zh;Lcom/google/ads/interactivemedia/v3/internal/ev;Lcom/google/ads/interactivemedia/v3/internal/abb;Landroid/os/Looper;)V
    .locals 28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/eh;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 1
    invoke-direct {v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/eh;-><init>(Landroid/content/Context;Lcom/google/ads/interactivemedia/v3/internal/alr;)V

    move-object/from16 v2, p3

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/eh;->a(Lcom/google/ads/interactivemedia/v3/internal/yw;)V

    move-object/from16 v2, p4

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/eh;->a(Lcom/google/ads/interactivemedia/v3/internal/sa;)V

    move-object/from16 v2, p5

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/eh;->a(Lcom/google/ads/interactivemedia/v3/internal/bl;)V

    move-object/from16 v2, p6

    .line 5
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/eh;->a(Lcom/google/ads/interactivemedia/v3/internal/zh;)V

    move-object/from16 v2, p7

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/eh;->a(Lcom/google/ads/interactivemedia/v3/internal/ev;)V

    .line 7
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/eh;->a()V

    move-object/from16 v2, p8

    .line 8
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/eh;->a(Lcom/google/ads/interactivemedia/v3/internal/abb;)V

    move-object/from16 v2, p9

    .line 9
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/eh;->a(Landroid/os/Looper;)V

    .line 10
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/bi;-><init>()V

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/eh;->a(Lcom/google/ads/interactivemedia/v3/internal/eh;)Lcom/google/ads/interactivemedia/v3/internal/ev;

    move-result-object v13

    iput-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/ej;->k:Lcom/google/ads/interactivemedia/v3/internal/ev;

    const/4 v14, 0x0

    iput-object v14, v0, Lcom/google/ads/interactivemedia/v3/internal/ej;->G:Lcom/google/ads/interactivemedia/v3/internal/app;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/eh;->b(Lcom/google/ads/interactivemedia/v3/internal/eh;)Lcom/google/ads/interactivemedia/v3/internal/fe;

    move-result-object v15

    iput-object v15, v0, Lcom/google/ads/interactivemedia/v3/internal/ej;->B:Lcom/google/ads/interactivemedia/v3/internal/fe;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/eh;->c(Lcom/google/ads/interactivemedia/v3/internal/eh;)I

    move-result v12

    iput v12, v0, Lcom/google/ads/interactivemedia/v3/internal/ej;->u:I

    const/4 v11, 0x0

    iput-boolean v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ej;->D:Z

    .line 11
    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/ei;

    invoke-direct {v10, v0}, Lcom/google/ads/interactivemedia/v3/internal/ei;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ej;)V

    iput-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/ej;->d:Lcom/google/ads/interactivemedia/v3/internal/ei;

    .line 12
    new-instance v9, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v9}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/ej;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v8, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 13
    invoke-direct {v8}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/ej;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 14
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    new-instance v7, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 15
    invoke-direct {v7}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ej;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 16
    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ej;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v6, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 17
    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/ej;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v5, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 18
    invoke-direct {v5}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/ej;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v4, Landroid/os/Handler;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/eh;->d(Lcom/google/ads/interactivemedia/v3/internal/eh;)Landroid/os/Looper;

    move-result-object v2

    .line 19
    invoke-direct {v4, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/eh;->l(Lcom/google/ads/interactivemedia/v3/internal/eh;)Lcom/google/ads/interactivemedia/v3/internal/alr;

    move-result-object v2

    .line 20
    invoke-virtual {v2, v4, v10, v10}, Lcom/google/ads/interactivemedia/v3/internal/alr;->a(Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/adh;Lcom/google/ads/interactivemedia/v3/internal/fs;)[Lcom/google/ads/interactivemedia/v3/internal/ed;

    move-result-object v3

    iput-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ej;->b:[Lcom/google/ads/interactivemedia/v3/internal/ed;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ej;->C:F

    iput v11, v0, Lcom/google/ads/interactivemedia/v3/internal/ej;->A:I

    .line 21
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/ck;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/eh;->e(Lcom/google/ads/interactivemedia/v3/internal/eh;)Lcom/google/ads/interactivemedia/v3/internal/yw;

    move-result-object v16

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/eh;->m(Lcom/google/ads/interactivemedia/v3/internal/eh;)Lcom/google/ads/interactivemedia/v3/internal/bl;

    move-result-object v17

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/eh;->f(Lcom/google/ads/interactivemedia/v3/internal/eh;)Lcom/google/ads/interactivemedia/v3/internal/zh;

    move-result-object v18

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/eh;->g(Lcom/google/ads/interactivemedia/v3/internal/eh;)Z

    move-result v19

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/eh;->h(Lcom/google/ads/interactivemedia/v3/internal/eh;)Lcom/google/ads/interactivemedia/v3/internal/eg;

    move-result-object v20

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/eh;->i(Lcom/google/ads/interactivemedia/v3/internal/eh;)Lcom/google/ads/interactivemedia/v3/internal/abb;

    move-result-object v21

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/eh;->d(Lcom/google/ads/interactivemedia/v3/internal/eh;)Landroid/os/Looper;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 p1, v2

    move-object v14, v4

    move-object/from16 v4, v16

    move-object/from16 v24, v5

    move-object/from16 v5, v17

    move-object/from16 v25, v6

    move-object/from16 v6, v18

    move-object/from16 v26, v7

    move-object v7, v13

    move-object/from16 v27, v8

    move/from16 v8, v19

    move-object/from16 p3, v15

    move-object v15, v9

    move-object/from16 v9, v20

    move-object/from16 v16, v14

    move-object v14, v10

    move/from16 v10, v23

    move-object/from16 v11, v21

    move/from16 v17, v12

    move-object/from16 v12, v22

    .line 22
    invoke-direct/range {v2 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/ck;-><init>([Lcom/google/ads/interactivemedia/v3/internal/ed;Lcom/google/ads/interactivemedia/v3/internal/yw;Lcom/google/ads/interactivemedia/v3/internal/bl;Lcom/google/ads/interactivemedia/v3/internal/zh;Lcom/google/ads/interactivemedia/v3/internal/ev;ZLcom/google/ads/interactivemedia/v3/internal/eg;ZLcom/google/ads/interactivemedia/v3/internal/abb;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/ej;->c:Lcom/google/ads/interactivemedia/v3/internal/ck;

    .line 23
    invoke-virtual {v2, v14}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/dw;)V

    move-object/from16 v3, v25

    .line 24
    invoke-virtual {v3, v13}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-virtual {v15, v13}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v24

    .line 26
    invoke-virtual {v3, v13}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v27

    .line 27
    invoke-virtual {v3, v13}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-static {v13}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v26

    .line 29
    invoke-virtual {v3, v13}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/bb;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/eh;->j(Lcom/google/ads/interactivemedia/v3/internal/eh;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v5, v16

    .line 30
    invoke-direct {v3, v4, v5, v14}, Lcom/google/ads/interactivemedia/v3/internal/bb;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/ba;)V

    iput-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ej;->l:Lcom/google/ads/interactivemedia/v3/internal/bb;

    const/4 v4, 0x0

    .line 31
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/bb;->a(Z)V

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/bf;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/eh;->j(Lcom/google/ads/interactivemedia/v3/internal/eh;)Landroid/content/Context;

    move-result-object v6

    .line 32
    invoke-direct {v3, v6, v5, v14}, Lcom/google/ads/interactivemedia/v3/internal/bf;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/be;)V

    iput-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ej;->m:Lcom/google/ads/interactivemedia/v3/internal/bf;

    const/4 v6, 0x0

    .line 33
    invoke-virtual {v3, v6}, Lcom/google/ads/interactivemedia/v3/internal/bf;->a(Lcom/google/ads/interactivemedia/v3/internal/fe;)V

    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/en;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/eh;->j(Lcom/google/ads/interactivemedia/v3/internal/eh;)Landroid/content/Context;

    move-result-object v6

    .line 34
    invoke-direct {v3, v6, v5, v14}, Lcom/google/ads/interactivemedia/v3/internal/en;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/ads/interactivemedia/v3/internal/ek;)V

    iput-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ej;->n:Lcom/google/ads/interactivemedia/v3/internal/en;

    move-object/from16 v5, p3

    .line 35
    iget v6, v5, Lcom/google/ads/interactivemedia/v3/internal/fe;->c:I

    sget v6, Lcom/google/ads/interactivemedia/v3/internal/ach;->a:I

    const/4 v6, 0x3

    invoke-virtual {v3, v6}, Lcom/google/ads/interactivemedia/v3/internal/en;->a(I)V

    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/es;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/eh;->j(Lcom/google/ads/interactivemedia/v3/internal/eh;)Landroid/content/Context;

    move-result-object v8

    .line 36
    invoke-direct {v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/es;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ej;->o:Lcom/google/ads/interactivemedia/v3/internal/es;

    .line 37
    invoke-virtual {v7, v4}, Lcom/google/ads/interactivemedia/v3/internal/es;->a(Z)V

    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/et;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/eh;->j(Lcom/google/ads/interactivemedia/v3/internal/eh;)Landroid/content/Context;

    move-result-object v8

    .line 38
    invoke-direct {v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/et;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/google/ads/interactivemedia/v3/internal/ej;->p:Lcom/google/ads/interactivemedia/v3/internal/et;

    .line 39
    invoke-virtual {v7, v4}, Lcom/google/ads/interactivemedia/v3/internal/et;->a(Z)V

    .line 40
    invoke-static {v3}, Lcom/google/ads/interactivemedia/v3/internal/ej;->b(Lcom/google/ads/interactivemedia/v3/internal/en;)Lcom/google/ads/interactivemedia/v3/internal/hf;

    move-result-object v3

    iput-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ej;->F:Lcom/google/ads/interactivemedia/v3/internal/hf;

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/eh;->k(Lcom/google/ads/interactivemedia/v3/internal/eh;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/ck;->b()V

    :cond_0
    const/4 v1, 0x1

    .line 42
    invoke-direct {v0, v1, v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(IILjava/lang/Object;)V

    const/4 v2, 0x2

    const/4 v3, 0x4

    .line 43
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(IILjava/lang/Object;)V

    const/16 v2, 0x65

    iget-boolean v3, v0, Lcom/google/ads/interactivemedia/v3/internal/ej;->D:Z

    .line 44
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 45
    invoke-direct {v0, v1, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(ZI)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->b(ZI)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/en;)Lcom/google/ads/interactivemedia/v3/internal/hf;
    .locals 0

    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->b(Lcom/google/ads/interactivemedia/v3/internal/en;)Lcom/google/ads/interactivemedia/v3/internal/hf;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/ej;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private final a(II)V
    .locals 2

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->w:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->x:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->w:I

    iput p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->x:I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 63
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/acx;

    .line 64
    invoke-interface {v1, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/acx;->a(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final a(IILjava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->b:[Lcom/google/ads/interactivemedia/v3/internal/ed;

    .line 90
    array-length v1, v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    .line 91
    invoke-interface {v2}, Lcom/google/ads/interactivemedia/v3/internal/ed;->a()I

    move-result v3

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->c:Lcom/google/ads/interactivemedia/v3/internal/ck;

    .line 92
    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/dz;)Lcom/google/ads/interactivemedia/v3/internal/ea;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/ea;->a(I)V

    invoke-virtual {v2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ea;->a(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/ea;->j()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final a(Landroid/view/Surface;Z)V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    .line 114
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->b:[Lcom/google/ads/interactivemedia/v3/internal/ed;

    .line 115
    array-length v2, v1

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 116
    invoke-interface {v4}, Lcom/google/ads/interactivemedia/v3/internal/ed;->a()I

    move-result v5

    if-ne v5, v3, :cond_0

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->c:Lcom/google/ads/interactivemedia/v3/internal/ck;

    .line 117
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Lcom/google/ads/interactivemedia/v3/internal/dz;)Lcom/google/ads/interactivemedia/v3/internal/ea;

    move-result-object v3

    const/4 v4, 0x1

    .line 118
    invoke-virtual {v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/ea;->a(I)V

    .line 119
    invoke-virtual {v3, p1}, Lcom/google/ads/interactivemedia/v3/internal/ea;->a(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/ea;->j()V

    .line 121
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->s:Landroid/view/Surface;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 122
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/ea;

    .line 123
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ea;->i()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 124
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 123
    :cond_2
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->t:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->s:Landroid/view/Surface;

    .line 125
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_3
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->s:Landroid/view/Surface;

    iput-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->t:Z

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/ej;I)V
    .locals 0

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->A:I

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/ej;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/ej;Landroid/view/Surface;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Landroid/view/Surface;Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/ej;Lcom/google/ads/interactivemedia/v3/internal/cz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->q:Lcom/google/ads/interactivemedia/v3/internal/cz;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/ej;Lcom/google/ads/interactivemedia/v3/internal/hc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->y:Lcom/google/ads/interactivemedia/v3/internal/hc;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/ej;Lcom/google/ads/interactivemedia/v3/internal/hf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->F:Lcom/google/ads/interactivemedia/v3/internal/hf;

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/ej;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->D:Z

    return-void
.end method

.method static synthetic a(Lcom/google/ads/interactivemedia/v3/internal/ej;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(ZII)V

    return-void
.end method

.method private final a(ZII)V
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    if-eq p2, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 p2, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-eq p2, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->c:Lcom/google/ads/interactivemedia/v3/internal/ck;

    .line 130
    invoke-virtual {p2, p1, v1, p3}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(ZII)V

    return-void
.end method

.method private static b(ZI)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    return v0
.end method

.method private static b(Lcom/google/ads/interactivemedia/v3/internal/en;)Lcom/google/ads/interactivemedia/v3/internal/hf;
    .locals 2

    .line 50
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/hf;

    .line 51
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/en;->a()I

    move-result v1

    .line 52
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/en;->b()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/hf;-><init>(II)V

    return-object v0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/ej;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/ej;Lcom/google/ads/interactivemedia/v3/internal/cz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->r:Lcom/google/ads/interactivemedia/v3/internal/cz;

    return-void
.end method

.method static synthetic b(Lcom/google/ads/interactivemedia/v3/internal/ej;Lcom/google/ads/interactivemedia/v3/internal/hc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->z:Lcom/google/ads/interactivemedia/v3/internal/hc;

    return-void
.end method

.method static synthetic c(Lcom/google/ads/interactivemedia/v3/internal/ej;)Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->s:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic d(Lcom/google/ads/interactivemedia/v3/internal/ej;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic e(Lcom/google/ads/interactivemedia/v3/internal/ej;)I
    .locals 0

    iget p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->A:I

    return p0
.end method

.method static synthetic f(Lcom/google/ads/interactivemedia/v3/internal/ej;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/fg;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->A:I

    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fg;->d(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/fs;

    iget v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->A:I

    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fs;->d(I)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final g()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->v:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->d:Lcom/google/ads/interactivemedia/v3/internal/ei;

    .line 85
    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->v:Landroid/view/SurfaceHolder;

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/google/ads/interactivemedia/v3/internal/ej;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->D:Z

    return p0
.end method

.method static synthetic h(Lcom/google/ads/interactivemedia/v3/internal/ej;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/fg;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->D:Z

    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fg;->c(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/fs;

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->D:Z

    invoke-interface {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/fs;->c(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method static synthetic i(Lcom/google/ads/interactivemedia/v3/internal/ej;)V
    .locals 3

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->C:F

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->m:Lcom/google/ads/interactivemedia/v3/internal/bf;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/bf;->a()F

    move-result v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic j(Lcom/google/ads/interactivemedia/v3/internal/ej;)Lcom/google/ads/interactivemedia/v3/internal/en;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->n:Lcom/google/ads/interactivemedia/v3/internal/en;

    return-object p0
.end method

.method private final j()V
    .locals 3

    .line 131
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->c:Lcom/google/ads/interactivemedia/v3/internal/ck;

    .line 132
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/ck;->c()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->E:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 134
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 133
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v1, "SimpleExoPlayer"

    const-string v2, "Player is accessed on the wrong thread. See https://exoplayer.dev/issues/player-accessed-on-wrong-thread"

    .line 134
    invoke-static {v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/abh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->E:Z

    :cond_1
    return-void
.end method

.method static synthetic k(Lcom/google/ads/interactivemedia/v3/internal/ej;)Lcom/google/ads/interactivemedia/v3/internal/hf;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->F:Lcom/google/ads/interactivemedia/v3/internal/hf;

    return-object p0
.end method

.method static synthetic l(Lcom/google/ads/interactivemedia/v3/internal/ej;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic m(Lcom/google/ads/interactivemedia/v3/internal/ej;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic n(Lcom/google/ads/interactivemedia/v3/internal/ej;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->b()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->o:Lcom/google/ads/interactivemedia/v3/internal/es;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/es;->b(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->p:Lcom/google/ads/interactivemedia/v3/internal/et;

    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->c()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/et;->b(Z)V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->o:Lcom/google/ads/interactivemedia/v3/internal/es;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/es;->b(Z)V

    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->p:Lcom/google/ads/interactivemedia/v3/internal/et;

    invoke-virtual {p0, v1}, Lcom/google/ads/interactivemedia/v3/internal/et;->b(Z)V

    return-void
.end method

.method static synthetic o(Lcom/google/ads/interactivemedia/v3/internal/ej;)Lcom/google/ads/interactivemedia/v3/internal/app;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 87
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->j()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->k:Lcom/google/ads/interactivemedia/v3/internal/ev;

    .line 88
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ev;->c()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->c:Lcom/google/ads/interactivemedia/v3/internal/ck;

    .line 89
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(I)V

    return-void
.end method

.method public final a(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 100
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->j()V

    .line 101
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->g()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->j()V

    const/4 v1, 0x2

    const/16 v2, 0x8

    .line 103
    invoke-direct {p0, v1, v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(IILjava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->v:Landroid/view/SurfaceHolder;

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 104
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Landroid/view/Surface;Z)V

    .line 105
    invoke-direct {p0, v1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(II)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->d:Lcom/google/ads/interactivemedia/v3/internal/ei;

    .line 106
    invoke-interface {p1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 107
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 108
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 111
    invoke-direct {p0, v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Landroid/view/Surface;Z)V

    .line 112
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(II)V

    return-void

    .line 109
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Landroid/view/Surface;Z)V

    .line 110
    invoke-direct {p0, v1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(II)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/acx;)V
    .locals 1

    .line 48
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 49
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/ex;)V
    .locals 1

    .line 46
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->k:Lcom/google/ads/interactivemedia/v3/internal/ev;

    .line 47
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ev;->a(Lcom/google/ads/interactivemedia/v3/internal/ex;)V

    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/rq;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 65
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->j()V

    .line 66
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 67
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->j()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->c:Lcom/google/ads/interactivemedia/v3/internal/ck;

    .line 68
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ck;->a(Ljava/util/List;)V

    .line 69
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->j()V

    .line 70
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->c()Z

    move-result p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->m:Lcom/google/ads/interactivemedia/v3/internal/bf;

    const/4 v1, 0x2

    .line 71
    invoke-virtual {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/bf;->a(ZI)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->b(ZI)I

    move-result v1

    .line 72
    invoke-direct {p0, p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(ZII)V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->c:Lcom/google/ads/interactivemedia/v3/internal/ck;

    .line 73
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ck;->e()V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 93
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->j()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->m:Lcom/google/ads/interactivemedia/v3/internal/bf;

    .line 94
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->b()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/ads/interactivemedia/v3/internal/bf;->a(ZI)I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->b(ZI)I

    move-result v1

    .line 95
    invoke-direct {p0, p1, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(ZII)V

    return-void
.end method

.method public final b()I
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->j()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->c:Lcom/google/ads/interactivemedia/v3/internal/ck;

    .line 62
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ck;->d()I

    move-result v0

    return v0
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/acx;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->e:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 86
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Lcom/google/ads/interactivemedia/v3/internal/ex;)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->k:Lcom/google/ads/interactivemedia/v3/internal/ev;

    .line 84
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ev;->b(Lcom/google/ads/interactivemedia/v3/internal/ex;)V

    return-void
.end method

.method public final c()Z
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->j()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->c:Lcom/google/ads/interactivemedia/v3/internal/ck;

    .line 60
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ck;->f()Z

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 2

    .line 74
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->j()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->l:Lcom/google/ads/interactivemedia/v3/internal/bb;

    const/4 v1, 0x0

    .line 75
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/bb;->a(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->n:Lcom/google/ads/interactivemedia/v3/internal/en;

    .line 76
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/en;->c()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->o:Lcom/google/ads/interactivemedia/v3/internal/es;

    .line 77
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/es;->b(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->p:Lcom/google/ads/interactivemedia/v3/internal/et;

    .line 78
    invoke-virtual {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/et;->b(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->m:Lcom/google/ads/interactivemedia/v3/internal/bf;

    .line 79
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/bf;->b()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->c:Lcom/google/ads/interactivemedia/v3/internal/ck;

    .line 80
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ck;->g()V

    .line 81
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->g()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->s:Landroid/view/Surface;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->t:Z

    if-eqz v1, :cond_0

    .line 82
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->s:Landroid/view/Surface;

    .line 83
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    return-void
.end method

.method public final e()J
    .locals 2

    .line 57
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->j()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->c:Lcom/google/ads/interactivemedia/v3/internal/ck;

    .line 58
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ck;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()V
    .locals 2

    .line 96
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->j()V

    .line 97
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->g()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(Landroid/view/Surface;Z)V

    .line 99
    invoke-direct {p0, v1, v1}, Lcom/google/ads/interactivemedia/v3/internal/ej;->a(II)V

    return-void
.end method

.method public final h()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final i()I
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->j()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->c:Lcom/google/ads/interactivemedia/v3/internal/ck;

    .line 56
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ck;->i()I

    move-result v0

    return v0
.end method

.method public final k()J
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->j()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->c:Lcom/google/ads/interactivemedia/v3/internal/ck;

    .line 54
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ck;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public final l()J
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final m()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final n()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final o()I
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final p()J
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final q()Lcom/google/ads/interactivemedia/v3/internal/er;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final r()V
    .locals 3

    .line 126
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->j()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->m:Lcom/google/ads/interactivemedia/v3/internal/bf;

    .line 127
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/ej;->c()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/bf;->a(ZI)I

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/ej;->c:Lcom/google/ads/interactivemedia/v3/internal/ck;

    .line 128
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/ck;->r()V

    .line 129
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    return-void
.end method
