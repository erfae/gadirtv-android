.class public final Lcom/google/ads/interactivemedia/v3/internal/yh;
.super Lcom/google/ads/interactivemedia/v3/internal/yv;
.source "IMASDK"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/ads/interactivemedia/v3/internal/yh;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lcom/google/ads/interactivemedia/v3/internal/yh;


# instance fields
.field private final F:Landroid/util/SparseArray;
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

.field private final G:Landroid/util/SparseBooleanArray;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:Z

.field public final k:Z

.field public final l:Z

.field public final m:I

.field public final n:I

.field public final o:Z

.field public final p:I

.field public final q:I

.field public final r:Z

.field public final s:Z

.field public final t:Z

.field public final u:Z

.field public final v:Z

.field public final w:Z

.field public final x:Z

.field public final y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/yi;

    .line 1
    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/yi;-><init>()V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/yi;->a()Lcom/google/ads/interactivemedia/v3/internal/yh;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->a:Lcom/google/ads/interactivemedia/v3/internal/yh;

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/yg;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/yg;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IIIIZZIIZIIZLjava/lang/String;IZLandroid/util/SparseArray;Landroid/util/SparseBooleanArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIZZIIZIIZ",
            "Ljava/lang/String;",
            "IZ",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/ads/interactivemedia/v3/internal/tb;",
            "Lcom/google/ads/interactivemedia/v3/internal/yk;",
            ">;>;",
            "Landroid/util/SparseBooleanArray;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p13

    move/from16 v2, p14

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/yv;-><init>(Ljava/lang/String;I)V

    move v1, p1

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->b:I

    move v1, p2

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->c:I

    move v1, p3

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->d:I

    move v1, p4

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->e:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->f:I

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->g:I

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->h:I

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->i:I

    move v2, p5

    iput-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->j:Z

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->k:Z

    move v2, p6

    iput-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->l:Z

    move v2, p7

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->m:I

    move v2, p8

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->n:I

    move v2, p9

    iput-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->o:Z

    move v2, p10

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->p:I

    move v2, p11

    iput v2, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->q:I

    move v2, p12

    iput-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->r:Z

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->s:Z

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->t:Z

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->u:Z

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->v:Z

    iput-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->w:Z

    move/from16 v2, p15

    iput-boolean v2, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->x:Z

    iput v1, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->y:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->F:Landroid/util/SparseArray;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/yh;->G:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 10

    .line 3
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/yv;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->b:I

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->c:I

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->d:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->e:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->f:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->g:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->h:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->i:I

    .line 12
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->j:Z

    .line 13
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->k:Z

    .line 14
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->l:Z

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->m:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->n:I

    .line 17
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->o:Z

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->p:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->q:I

    .line 20
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->r:Z

    .line 21
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->s:Z

    .line 22
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->t:Z

    .line 23
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->u:Z

    .line 24
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->v:Z

    .line 25
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->w:Z

    .line 26
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->x:Z

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->y:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Landroid/util/SparseArray;

    .line 29
    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    new-instance v6, Ljava/util/HashMap;

    .line 32
    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(I)V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_0

    const-class v8, Lcom/google/ads/interactivemedia/v3/internal/tb;

    .line 33
    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/google/ads/interactivemedia/v3/internal/tb;

    invoke-static {v8}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v9, Lcom/google/ads/interactivemedia/v3/internal/yk;

    .line 34
    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/google/ads/interactivemedia/v3/internal/yk;

    .line 35
    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->F:Landroid/util/SparseArray;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->G:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/ads/interactivemedia/v3/internal/yh;
    .locals 1

    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/yi;

    .line 53
    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/yi;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/yi;->a()Lcom/google/ads/interactivemedia/v3/internal/yh;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->G:Landroid/util/SparseBooleanArray;

    .line 54
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public final a(ILcom/google/ads/interactivemedia/v3/internal/tb;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->F:Landroid/util/SparseArray;

    .line 57
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 58
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final b(ILcom/google/ads/interactivemedia/v3/internal/tb;)Lcom/google/ads/interactivemedia/v3/internal/yk;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->F:Landroid/util/SparseArray;

    .line 55
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 56
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/yk;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 39
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/yh;

    .line 40
    invoke-super {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/yv;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->b:I

    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->b:I

    if-ne p1, v3, :cond_7

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->c:I

    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->c:I

    if-ne p1, v3, :cond_7

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->d:I

    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->d:I

    if-ne p1, v3, :cond_7

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->e:I

    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->e:I

    if-ne p1, v3, :cond_7

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->f:I

    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->f:I

    if-ne p1, v3, :cond_7

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->g:I

    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->g:I

    if-ne p1, v3, :cond_7

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->h:I

    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->h:I

    if-ne p1, v3, :cond_7

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->i:I

    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->i:I

    if-ne p1, v3, :cond_7

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->j:Z

    iget-boolean v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->j:Z

    if-ne p1, v3, :cond_7

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->k:Z

    iget-boolean v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->k:Z

    if-ne p1, v3, :cond_7

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->l:Z

    iget-boolean v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->l:Z

    if-ne p1, v3, :cond_7

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->o:Z

    iget-boolean v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->o:Z

    if-ne p1, v3, :cond_7

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->m:I

    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->m:I

    if-ne p1, v3, :cond_7

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->n:I

    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->n:I

    if-ne p1, v3, :cond_7

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->p:I

    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->p:I

    if-ne p1, v3, :cond_7

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->q:I

    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->q:I

    if-ne p1, v3, :cond_7

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->r:Z

    iget-boolean v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->r:Z

    if-ne p1, v3, :cond_7

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->s:Z

    iget-boolean v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->s:Z

    if-ne p1, v3, :cond_7

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->t:Z

    iget-boolean v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->t:Z

    if-ne p1, v3, :cond_7

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->u:Z

    iget-boolean v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->u:Z

    if-ne p1, v3, :cond_7

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->v:Z

    iget-boolean v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->v:Z

    if-ne p1, v3, :cond_7

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->w:Z

    iget-boolean v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->w:Z

    if-ne p1, v3, :cond_7

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->x:Z

    iget-boolean v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->x:Z

    if-ne p1, v3, :cond_7

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->y:I

    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->y:I

    if-ne p1, v3, :cond_7

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->G:Landroid/util/SparseBooleanArray;

    iget-object v3, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->G:Landroid/util/SparseBooleanArray;

    .line 41
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    .line 42
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-ne v5, v4, :cond_7

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    .line 43
    invoke-virtual {p1, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v6

    if-gez v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->F:Landroid/util/SparseArray;

    iget-object v2, v2, Lcom/google/ads/interactivemedia/v3/internal/yh;->F:Landroid/util/SparseArray;

    .line 44
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 45
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ne v4, v3, :cond_7

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_6

    .line 46
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-ltz v5, :cond_7

    .line 47
    invoke-virtual {p1, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 48
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v7

    .line 49
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v8

    if-ne v8, v7, :cond_7

    .line 50
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 51
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/ads/interactivemedia/v3/internal/tb;

    .line 52
    invoke-interface {v5, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method public final hashCode()I
    .locals 2

    .line 59
    invoke-super {p0}, Lcom/google/ads/interactivemedia/v3/internal/yv;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->i:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->j:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->k:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->l:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->o:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->m:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->n:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->p:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->q:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->r:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->s:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->t:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->u:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->v:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->w:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->x:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->y:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 60
    invoke-super {p0, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/yv;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->b:I

    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->c:I

    .line 62
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->d:I

    .line 63
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->e:I

    .line 64
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->f:I

    .line 65
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->g:I

    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->h:I

    .line 67
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->i:I

    .line 68
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->j:Z

    .line 69
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/os/Parcel;Z)V

    iget-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->k:Z

    .line 70
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/os/Parcel;Z)V

    iget-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->l:Z

    .line 71
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/os/Parcel;Z)V

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->m:I

    .line 72
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->n:I

    .line 73
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->o:Z

    .line 74
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/os/Parcel;Z)V

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->p:I

    .line 75
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->q:I

    .line 76
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->r:Z

    .line 77
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/os/Parcel;Z)V

    iget-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->s:Z

    .line 78
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/os/Parcel;Z)V

    iget-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->t:Z

    .line 79
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/os/Parcel;Z)V

    iget-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->u:Z

    .line 80
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/os/Parcel;Z)V

    iget-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->v:Z

    .line 81
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/os/Parcel;Z)V

    iget-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->w:Z

    .line 82
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/os/Parcel;Z)V

    iget-boolean p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->x:Z

    .line 83
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Landroid/os/Parcel;Z)V

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->y:I

    .line 84
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->F:Landroid/util/SparseArray;

    .line 85
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 87
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 88
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 89
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    .line 90
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 93
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {p1, v5, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 94
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {p1, v4, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/yh;->G:Landroid/util/SparseBooleanArray;

    .line 95
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    return-void
.end method
