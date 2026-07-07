.class public final Lcom/google/vr/sdk/widgets/video/deps/nc$c;
.super Ljava/lang/Object;
.source "DefaultTrackSelector.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/nc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lcom/google/vr/sdk/widgets/video/deps/nc$c;

.field public static final s:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/vr/sdk/widgets/video/deps/nc$c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:Z

.field public final j:I

.field public final k:I

.field public final l:Z

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Z

.field public final q:Z

.field public final r:I

.field private final t:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/vr/sdk/widgets/video/deps/iw;",
            "Lcom/google/vr/sdk/widgets/video/deps/nc$d;",
            ">;>;"
        }
    .end annotation
.end field

.field private final u:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 157
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/nc$c;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->a:Lcom/google/vr/sdk/widgets/video/deps/nc$c;

    .line 158
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c$1;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/nc$c$1;-><init>()V

    sput-object v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->s:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    new-instance v2, Landroid/util/SparseArray;

    move-object v1, v2

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    new-instance v3, Landroid/util/SparseBooleanArray;

    move-object v2, v3

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    const v13, 0x7fffffff

    const/4 v14, 0x1

    const/4 v15, 0x1

    const v16, 0x7fffffff

    const v17, 0x7fffffff

    const/16 v18, 0x1

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v19}, Lcom/google/vr/sdk/widgets/video/deps/nc$c;-><init>(Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;Ljava/lang/String;Ljava/lang/String;ZIZZZZIIIZZIIZI)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->a(Landroid/os/Parcel;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->t:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readSparseBooleanArray()Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->u:Landroid/util/SparseBooleanArray;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->b:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->c:Ljava/lang/String;

    .line 29
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->d:Z

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->e:I

    .line 31
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->m:Z

    .line 32
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->n:Z

    .line 33
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->o:Z

    .line 34
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->p:Z

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->f:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->g:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->h:I

    .line 38
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->i:Z

    .line 39
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->q:Z

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->j:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->k:I

    .line 42
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Landroid/os/Parcel;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->l:Z

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->r:I

    return-void
.end method

.method constructor <init>(Landroid/util/SparseArray;Landroid/util/SparseBooleanArray;Ljava/lang/String;Ljava/lang/String;ZIZZZZIIIZZIIZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/vr/sdk/widgets/video/deps/iw;",
            "Lcom/google/vr/sdk/widgets/video/deps/nc$d;",
            ">;>;",
            "Landroid/util/SparseBooleanArray;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZIZZZZIIIZZIIZI)V"
        }
    .end annotation

    move-object v0, p0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 4
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->t:Landroid/util/SparseArray;

    move-object v1, p2

    .line 5
    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->u:Landroid/util/SparseBooleanArray;

    .line 6
    invoke-static {p3}, Lcom/google/vr/sdk/widgets/video/deps/ps;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->b:Ljava/lang/String;

    .line 7
    invoke-static {p4}, Lcom/google/vr/sdk/widgets/video/deps/ps;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->c:Ljava/lang/String;

    move v1, p5

    .line 8
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->d:Z

    move v1, p6

    .line 9
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->e:I

    move v1, p7

    .line 10
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->m:Z

    move v1, p8

    .line 11
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->n:Z

    move v1, p9

    .line 12
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->o:Z

    move v1, p10

    .line 13
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->p:Z

    move v1, p11

    .line 14
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->f:I

    move v1, p12

    .line 15
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->g:I

    move v1, p13

    .line 16
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->h:I

    move/from16 v1, p14

    .line 17
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->i:Z

    move/from16 v1, p15

    .line 18
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->q:Z

    move/from16 v1, p16

    .line 19
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->j:I

    move/from16 v1, p17

    .line 20
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->k:I

    move/from16 v1, p18

    .line 21
    iput-boolean v1, v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->l:Z

    move/from16 v1, p19

    .line 22
    iput v1, v0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->r:I

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Landroid/util/SparseArray;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/vr/sdk/widgets/video/deps/iw;",
            "Lcom/google/vr/sdk/widgets/video/deps/nc$d;",
            ">;>;"
        }
    .end annotation

    .line 101
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 104
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 105
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 106
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6, v5}, Ljava/util/HashMap;-><init>(I)V

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v5, :cond_0

    .line 108
    const-class v8, Lcom/google/vr/sdk/widgets/video/deps/iw;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Lcom/google/vr/sdk/widgets/video/deps/iw;

    .line 109
    const-class v9, Lcom/google/vr/sdk/widgets/video/deps/nc$d;

    invoke-virtual {v9}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-virtual {p0, v9}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Lcom/google/vr/sdk/widgets/video/deps/nc$d;

    .line 110
    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 112
    :cond_0
    invoke-virtual {v1, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private static a(Landroid/os/Parcel;Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/vr/sdk/widgets/video/deps/iw;",
            "Lcom/google/vr/sdk/widgets/video/deps/nc$d;",
            ">;>;)V"
        }
    .end annotation

    .line 115
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 116
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 118
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 119
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 120
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    .line 121
    invoke-virtual {p0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    invoke-virtual {p0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
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

    .line 124
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {p0, v5, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 125
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {p0, v4, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static a(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/vr/sdk/widgets/video/deps/iw;",
            "Lcom/google/vr/sdk/widgets/video/deps/nc$d;",
            ">;>;",
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/google/vr/sdk/widgets/video/deps/iw;",
            "Lcom/google/vr/sdk/widgets/video/deps/nc$d;",
            ">;>;)Z"
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 138
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 141
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_2

    .line 143
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 144
    invoke-static {v4, v3}, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->a(Ljava/util/Map;Ljava/util/Map;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z
    .locals 4

    .line 129
    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 130
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 133
    invoke-virtual {p0, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/google/vr/sdk/widgets/video/deps/iw;",
            "Lcom/google/vr/sdk/widgets/video/deps/nc$d;",
            ">;",
            "Ljava/util/Map<",
            "Lcom/google/vr/sdk/widgets/video/deps/iw;",
            "Lcom/google/vr/sdk/widgets/video/deps/nc$d;",
            ">;)Z"
        }
    .end annotation

    .line 148
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 149
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_0

    return v2

    .line 151
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 152
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/sdk/widgets/video/deps/iw;

    .line 153
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    return v2

    :cond_3
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(I)Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->u:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    return p1
.end method

.method public final a(ILcom/google/vr/sdk/widgets/video/deps/iw;)Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->t:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 47
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final b(ILcom/google/vr/sdk/widgets/video/deps/iw;)Lcom/google/vr/sdk/widgets/video/deps/nc$d;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->t:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 49
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/nc$d;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 52
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_1

    .line 54
    :cond_1
    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;

    .line 55
    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->d:Z

    iget-boolean v3, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->d:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->e:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->e:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->m:Z

    iget-boolean v3, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->m:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->n:Z

    iget-boolean v3, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->n:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->o:Z

    iget-boolean v3, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->o:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->p:Z

    iget-boolean v3, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->p:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->f:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->f:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->g:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->g:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->i:Z

    iget-boolean v3, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->i:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->q:Z

    iget-boolean v3, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->q:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->l:Z

    iget-boolean v3, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->l:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->j:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->j:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->k:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->k:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->h:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->h:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->r:I

    iget v3, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->r:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->b:Ljava/lang/String;

    .line 56
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->c:Ljava/lang/String;

    .line 57
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->u:Landroid/util/SparseBooleanArray;

    iget-object v3, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->u:Landroid/util/SparseBooleanArray;

    .line 58
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->a(Landroid/util/SparseBooleanArray;Landroid/util/SparseBooleanArray;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->t:Landroid/util/SparseArray;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->t:Landroid/util/SparseArray;

    .line 59
    invoke-static {v2, p1}, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 61
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->d:Z

    mul-int/lit8 v0, v0, 0x1f

    .line 62
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->m:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 64
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->n:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 65
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->o:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 66
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->p:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 67
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 68
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->g:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 69
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->i:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->q:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 71
    iget-boolean v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->l:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 72
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->j:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 73
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->k:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 74
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->h:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 75
    iget v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->r:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 77
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->b:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 78
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 81
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->t:Landroid/util/SparseArray;

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->a(Landroid/os/Parcel;Landroid/util/SparseArray;)V

    .line 82
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->u:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSparseBooleanArray(Landroid/util/SparseBooleanArray;)V

    .line 83
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 85
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->d:Z

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Landroid/os/Parcel;Z)V

    .line 86
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->m:Z

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Landroid/os/Parcel;Z)V

    .line 88
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->n:Z

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Landroid/os/Parcel;Z)V

    .line 89
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->o:Z

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Landroid/os/Parcel;Z)V

    .line 90
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->p:Z

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Landroid/os/Parcel;Z)V

    .line 91
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->i:Z

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Landroid/os/Parcel;Z)V

    .line 95
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->q:Z

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Landroid/os/Parcel;Z)V

    .line 96
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->k:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget-boolean p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->l:Z

    invoke-static {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/ps;->a(Landroid/os/Parcel;Z)V

    .line 99
    iget p2, p0, Lcom/google/vr/sdk/widgets/video/deps/nc$c;->r:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
