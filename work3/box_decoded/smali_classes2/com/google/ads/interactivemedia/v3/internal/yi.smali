.class public final Lcom/google/ads/interactivemedia/v3/internal/yi;
.super Lcom/google/ads/interactivemedia/v3/internal/yu;
.source "IMASDK"


# instance fields
.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z

.field private i:I

.field private j:I

.field private k:Z

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private final p:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/ads/interactivemedia/v3/internal/tb;",
            "Lcom/google/ads/interactivemedia/v3/internal/yk;",
            ">;>;"
        }
    .end annotation
.end field

.field private final q:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/yu;-><init>()V

    .line 2
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/yi;->b()V

    new-instance v0, Landroid/util/SparseArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yi;->p:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 4
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yi;->q:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/yu;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/yu;->a(Landroid/content/Context;)V

    .line 7
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/yi;->b()V

    new-instance v0, Landroid/util/SparseArray;

    .line 8
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yi;->p:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 9
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yi;->q:Landroid/util/SparseBooleanArray;

    .line 10
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->d(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    .line 11
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yi;->i:I

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yi;->j:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yi;->k:Z

    return-void
.end method

.method private final b()V
    .locals 2

    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yi;->c:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yi;->d:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yi;->e:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yi;->f:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yi;->g:Z

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yi;->h:Z

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yi;->i:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yi;->j:I

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yi;->k:Z

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yi;->l:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yi;->m:I

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yi;->n:Z

    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yi;->o:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/ads/interactivemedia/v3/internal/yh;
    .locals 21

    move-object/from16 v0, p0

    .line 12
    new-instance v19, Lcom/google/ads/interactivemedia/v3/internal/yh;

    move-object/from16 v1, v19

    iget v2, v0, Lcom/google/ads/interactivemedia/v3/internal/yi;->c:I

    iget v3, v0, Lcom/google/ads/interactivemedia/v3/internal/yi;->d:I

    iget v4, v0, Lcom/google/ads/interactivemedia/v3/internal/yi;->e:I

    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/yi;->f:I

    iget-boolean v6, v0, Lcom/google/ads/interactivemedia/v3/internal/yi;->g:Z

    iget-boolean v7, v0, Lcom/google/ads/interactivemedia/v3/internal/yi;->h:Z

    iget v8, v0, Lcom/google/ads/interactivemedia/v3/internal/yi;->i:I

    iget v9, v0, Lcom/google/ads/interactivemedia/v3/internal/yi;->j:I

    iget-boolean v10, v0, Lcom/google/ads/interactivemedia/v3/internal/yi;->k:Z

    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/yi;->l:I

    iget v12, v0, Lcom/google/ads/interactivemedia/v3/internal/yi;->m:I

    iget-boolean v13, v0, Lcom/google/ads/interactivemedia/v3/internal/yi;->n:Z

    iget-object v14, v0, Lcom/google/ads/interactivemedia/v3/internal/yi;->a:Ljava/lang/String;

    iget v15, v0, Lcom/google/ads/interactivemedia/v3/internal/yi;->b:I

    move-object/from16 v20, v1

    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/yi;->o:Z

    move/from16 v16, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/yi;->p:Landroid/util/SparseArray;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/yi;->q:Landroid/util/SparseBooleanArray;

    move-object/from16 v18, v1

    move-object/from16 v1, v20

    invoke-direct/range {v1 .. v18}, Lcom/google/ads/interactivemedia/v3/internal/yh;-><init>(IIIIZZIIZIIZLjava/lang/String;IZLandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V

    return-object v19
.end method

.method public final bridge synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/yu;->a(Landroid/content/Context;)V

    return-void
.end method
