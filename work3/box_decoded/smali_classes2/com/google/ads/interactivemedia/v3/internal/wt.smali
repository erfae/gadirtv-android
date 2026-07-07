.class final Lcom/google/ads/interactivemedia/v3/internal/wt;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/aak;
.implements Lcom/google/ads/interactivemedia/v3/internal/aao;
.implements Lcom/google/ads/interactivemedia/v3/internal/sv;
.implements Lcom/google/ads/interactivemedia/v3/internal/ii;
.implements Lcom/google/ads/interactivemedia/v3/internal/sr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/ads/interactivemedia/v3/internal/aak;",
        "Lcom/google/ads/interactivemedia/v3/internal/aao;",
        "Lcom/google/ads/interactivemedia/v3/internal/sv;",
        "Lcom/google/ads/interactivemedia/v3/internal/ii;",
        "Lcom/google/ads/interactivemedia/v3/internal/sr;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:Z

.field private C:I

.field private D:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private E:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private F:Z

.field private G:Lcom/google/ads/interactivemedia/v3/internal/tb;

.field private H:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/ads/interactivemedia/v3/internal/sz;",
            ">;"
        }
    .end annotation
.end field

.field private I:[I

.field private J:I

.field private K:Z

.field private L:[Z

.field private M:[Z

.field private N:J

.field private O:J

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:Z

.field private T:J

.field private U:Lcom/google/ads/interactivemedia/v3/internal/hk;

.field private V:Lcom/google/ads/interactivemedia/v3/internal/wh;

.field private final W:Lcom/google/ads/interactivemedia/v3/internal/zt;

.field private final X:Lcom/google/ads/interactivemedia/v3/internal/aaa;

.field private final b:I

.field private final c:Lcom/google/ads/interactivemedia/v3/internal/wq;

.field private final d:Lcom/google/ads/interactivemedia/v3/internal/wf;

.field private final e:Lcom/google/ads/interactivemedia/v3/internal/cz;

.field private final f:Lcom/google/ads/interactivemedia/v3/internal/hq;

.field private final g:Lcom/google/ads/interactivemedia/v3/internal/hn;

.field private final h:Lcom/google/ads/interactivemedia/v3/internal/aar;

.field private final i:Lcom/google/ads/interactivemedia/v3/internal/ry;

.field private final j:I

.field private final k:Lcom/google/ads/interactivemedia/v3/internal/wc;

.field private final l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/ads/interactivemedia/v3/internal/wh;",
            ">;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/ads/interactivemedia/v3/internal/wh;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/lang/Runnable;

.field private final o:Ljava/lang/Runnable;

.field private final p:Landroid/os/Handler;

.field private final q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/ads/interactivemedia/v3/internal/wl;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/ads/interactivemedia/v3/internal/hk;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/google/ads/interactivemedia/v3/internal/tl;

.field private t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

.field private u:[I

.field private final v:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Landroid/util/SparseIntArray;

.field private x:Lcom/google/ads/interactivemedia/v3/internal/ix;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Integer;

    const/4 v2, 0x1

    .line 1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->a:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(ILcom/google/ads/interactivemedia/v3/internal/wq;Lcom/google/ads/interactivemedia/v3/internal/wf;Ljava/util/Map;Lcom/google/ads/interactivemedia/v3/internal/zt;JLcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/hq;Lcom/google/ads/interactivemedia/v3/internal/hn;Lcom/google/ads/interactivemedia/v3/internal/aaa;Lcom/google/ads/interactivemedia/v3/internal/ry;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->b:I

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->c:Lcom/google/ads/interactivemedia/v3/internal/wq;

    iput-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->d:Lcom/google/ads/interactivemedia/v3/internal/wf;

    iput-object p4, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->r:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->W:Lcom/google/ads/interactivemedia/v3/internal/zt;

    iput-object p8, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->e:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput-object p9, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->f:Lcom/google/ads/interactivemedia/v3/internal/hq;

    iput-object p10, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->g:Lcom/google/ads/interactivemedia/v3/internal/hn;

    iput-object p11, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->X:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    iput-object p12, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->i:Lcom/google/ads/interactivemedia/v3/internal/ry;

    iput p13, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->j:I

    .line 3
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/aar;

    const-string p2, "Loader:HlsSampleStreamWrapper"

    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/aar;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->h:Lcom/google/ads/interactivemedia/v3/internal/aar;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/wc;

    .line 4
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/wc;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->k:Lcom/google/ads/interactivemedia/v3/internal/wc;

    const/4 p1, 0x0

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->u:[I

    new-instance p2, Ljava/util/HashSet;

    sget-object p3, Lcom/google/ads/interactivemedia/v3/internal/wt;->a:Ljava/util/Set;

    .line 5
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p4

    invoke-direct {p2, p4}, Ljava/util/HashSet;-><init>(I)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->v:Ljava/util/Set;

    new-instance p2, Landroid/util/SparseIntArray;

    .line 6
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-direct {p2, p3}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->w:Landroid/util/SparseIntArray;

    new-array p2, p1, [Lcom/google/ads/interactivemedia/v3/internal/ws;

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    new-array p2, p1, [Z

    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->M:[Z

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->L:[Z

    new-instance p1, Ljava/util/ArrayList;

    .line 7
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    .line 8
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->m:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    .line 9
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->q:Ljava/util/ArrayList;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/wm;

    .line 10
    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/wm;-><init>(Lcom/google/ads/interactivemedia/v3/internal/wt;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->n:Ljava/lang/Runnable;

    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/wn;

    .line 11
    invoke-direct {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/wn;-><init>(Lcom/google/ads/interactivemedia/v3/internal/wt;)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->o:Ljava/lang/Runnable;

    .line 12
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->p:Landroid/os/Handler;

    iput-wide p6, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->N:J

    iput-wide p6, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->O:J

    return-void
.end method

.method private static a(Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/cz;Z)Lcom/google/ads/interactivemedia/v3/internal/cz;
    .locals 5

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    iget-object v0, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    .line 61
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/abm;->i(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->i:Ljava/lang/String;

    .line 62
    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/abm;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a()Lcom/google/ads/interactivemedia/v3/internal/cy;

    move-result-object v2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->a:Ljava/lang/String;

    .line 65
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->b:Ljava/lang/String;

    .line 66
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->d(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->c:Ljava/lang/String;

    .line 67
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->e(Ljava/lang/String;)V

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->d:I

    .line 68
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->n(I)V

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->e:I

    .line 69
    invoke-virtual {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/cy;->k(I)V

    const/4 v3, -0x1

    if-eqz p2, :cond_1

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->f:I

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    .line 70
    :goto_0
    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/cy;->b(I)V

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->g:I

    goto :goto_1

    :cond_2
    const/4 p2, -0x1

    .line 71
    :goto_1
    invoke-virtual {v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->j(I)V

    .line 72
    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Ljava/lang/String;)V

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->q:I

    .line 73
    invoke-virtual {v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->p(I)V

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->r:I

    .line 74
    invoke-virtual {v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(I)V

    if-eqz v1, :cond_3

    .line 75
    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/cy;->f(Ljava/lang/String;)V

    :cond_3
    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->y:I

    if-eq p2, v3, :cond_4

    .line 76
    invoke-virtual {v2, p2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->c(I)V

    :cond_4
    iget-object p0, p0, Lcom/google/ads/interactivemedia/v3/internal/cz;->j:Lcom/google/ads/interactivemedia/v3/internal/ot;

    if-eqz p0, :cond_6

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/cz;->j:Lcom/google/ads/interactivemedia/v3/internal/ot;

    if-eqz p1, :cond_5

    .line 77
    invoke-virtual {p1, p0}, Lcom/google/ads/interactivemedia/v3/internal/ot;->a(Lcom/google/ads/interactivemedia/v3/internal/ot;)Lcom/google/ads/interactivemedia/v3/internal/ot;

    move-result-object p0

    .line 78
    :cond_5
    invoke-virtual {v2, p0}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a(Lcom/google/ads/interactivemedia/v3/internal/ot;)V

    .line 79
    :cond_6
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/cy;->a()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object p0

    return-object p0
.end method

.method private final a([Lcom/google/ads/interactivemedia/v3/internal/sz;)Lcom/google/ads/interactivemedia/v3/internal/tb;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 54
    aget-object v2, p1, v1

    .line 55
    iget v3, v2, Lcom/google/ads/interactivemedia/v3/internal/sz;->a:I

    new-array v3, v3, [Lcom/google/ads/interactivemedia/v3/internal/cz;

    const/4 v4, 0x0

    .line 56
    :goto_1
    iget v5, v2, Lcom/google/ads/interactivemedia/v3/internal/sz;->a:I

    if-ge v4, v5, :cond_0

    .line 57
    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/sz;->a(I)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v5

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->f:Lcom/google/ads/interactivemedia/v3/internal/hq;

    .line 58
    invoke-interface {v6, v5}, Lcom/google/ads/interactivemedia/v3/internal/hq;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(Ljava/lang/Class;)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/google/ads/interactivemedia/v3/internal/sz;

    .line 59
    invoke-direct {v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/sz;-><init>([Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/tb;

    invoke-direct {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/tb;-><init>([Lcom/google/ads/interactivemedia/v3/internal/sz;)V

    return-object v0
.end method

.method private static b(II)Lcom/google/ads/interactivemedia/v3/internal/ig;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x36

    .line 51
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unmapped track with id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " of type "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HlsSampleStreamWrapper"

    .line 52
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/ig;

    .line 53
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/ig;-><init>()V

    return-object p0
.end method

.method private static e(I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1

    :cond_1
    return v2

    :cond_2
    return v0
.end method

.method private final n()V
    .locals 6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 199
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    iget-boolean v5, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->P:Z

    .line 200
    invoke-virtual {v4, v5}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->P:Z

    return-void
.end method

.method private final p()V
    .locals 14

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->F:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->I:[I

    if-nez v0, :cond_18

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->A:Z

    if-nez v0, :cond_0

    goto/16 :goto_e

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 94
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 95
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/ss;->j()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->G:Lcom/google/ads/interactivemedia/v3/internal/tb;

    const/4 v1, 0x3

    const/4 v3, -0x1

    if-eqz v0, :cond_a

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/tb;->b:I

    .line 117
    new-array v4, v0, [I

    iput-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->I:[I

    .line 118
    invoke-static {v4, v3}, Ljava/util/Arrays;->fill([II)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_8

    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 119
    array-length v6, v5

    if-ge v4, v6, :cond_7

    .line 120
    aget-object v5, v5, v4

    .line 121
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/ss;->j()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v5

    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->G:Lcom/google/ads/interactivemedia/v3/internal/tb;

    .line 122
    invoke-virtual {v6, v3}, Lcom/google/ads/interactivemedia/v3/internal/tb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/sz;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/google/ads/interactivemedia/v3/internal/sz;->a(I)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v6

    iget-object v7, v5, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    .line 123
    iget-object v8, v6, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    .line 124
    invoke-static {v7}, Lcom/google/ads/interactivemedia/v3/internal/abm;->i(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v1, :cond_3

    .line 125
    invoke-static {v8}, Lcom/google/ads/interactivemedia/v3/internal/abm;->i(Ljava/lang/String;)I

    move-result v5

    if-ne v9, v5, :cond_6

    goto :goto_3

    .line 126
    :cond_3
    invoke-static {v7, v8}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "application/cea-608"

    .line 127
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "application/cea-708"

    .line 128
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    iget v5, v5, Lcom/google/ads/interactivemedia/v3/internal/cz;->D:I

    .line 129
    iget v6, v6, Lcom/google/ads/interactivemedia/v3/internal/cz;->D:I

    if-ne v5, v6, :cond_6

    .line 125
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->I:[I

    .line 130
    aput v4, v5, v3

    goto :goto_4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 129
    :cond_8
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->q:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :goto_5
    if-ge v2, v1, :cond_9

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 131
    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/wl;

    .line 132
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/wl;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 96
    array-length v0, v0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, -0x1

    :goto_6
    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ge v5, v0, :cond_10

    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 97
    aget-object v10, v10, v5

    .line 98
    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/ss;->j()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v10

    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v10, v10, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    .line 99
    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/abm;->b(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_b

    goto :goto_7

    .line 100
    :cond_b
    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/abm;->a(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    const/4 v8, 0x1

    goto :goto_7

    .line 101
    :cond_c
    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/abm;->c(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d

    const/4 v8, 0x3

    goto :goto_7

    :cond_d
    const/4 v8, 0x6

    .line 99
    :goto_7
    invoke-static {v8}, Lcom/google/ads/interactivemedia/v3/internal/wt;->e(I)I

    move-result v9

    invoke-static {v6}, Lcom/google/ads/interactivemedia/v3/internal/wt;->e(I)I

    move-result v10

    if-le v9, v10, :cond_e

    move v7, v5

    move v6, v8

    goto :goto_8

    :cond_e
    if-ne v8, v6, :cond_f

    const/4 v7, -0x1

    :cond_f
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 101
    :cond_10
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->d:Lcom/google/ads/interactivemedia/v3/internal/wf;

    .line 102
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/wf;->b()Lcom/google/ads/interactivemedia/v3/internal/sz;

    move-result-object v1

    .line 103
    iget v4, v1, Lcom/google/ads/interactivemedia/v3/internal/sz;->a:I

    iput v3, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->J:I

    new-array v3, v0, [I

    iput-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->I:[I

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v0, :cond_11

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->I:[I

    .line 104
    aput v3, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_11
    new-array v3, v0, [Lcom/google/ads/interactivemedia/v3/internal/sz;

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v0, :cond_16

    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 105
    aget-object v10, v10, v5

    invoke-virtual {v10}, Lcom/google/ads/interactivemedia/v3/internal/ss;->j()Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v10

    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Ljava/lang/Object;)Ljava/lang/Object;

    if-ne v5, v7, :cond_14

    .line 106
    new-array v11, v4, [Lcom/google/ads/interactivemedia/v3/internal/cz;

    if-ne v4, v9, :cond_12

    .line 108
    invoke-virtual {v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/sz;->a(I)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v10

    aput-object v10, v11, v2

    goto :goto_c

    :cond_12
    const/4 v12, 0x0

    :goto_b
    if-ge v12, v4, :cond_13

    .line 107
    invoke-virtual {v1, v12}, Lcom/google/ads/interactivemedia/v3/internal/sz;->a(I)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v13

    invoke-static {v13, v10, v9}, Lcom/google/ads/interactivemedia/v3/internal/wt;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/cz;Z)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v13

    aput-object v13, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 108
    :cond_13
    :goto_c
    new-instance v10, Lcom/google/ads/interactivemedia/v3/internal/sz;

    .line 109
    invoke-direct {v10, v11}, Lcom/google/ads/interactivemedia/v3/internal/sz;-><init>([Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    aput-object v10, v3, v5

    iput v5, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->J:I

    goto :goto_d

    :cond_14
    const/4 v11, 0x0

    if-ne v6, v8, :cond_15

    .line 107
    iget-object v12, v10, Lcom/google/ads/interactivemedia/v3/internal/cz;->l:Ljava/lang/String;

    .line 110
    invoke-static {v12}, Lcom/google/ads/interactivemedia/v3/internal/abm;->a(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_15

    iget-object v11, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->e:Lcom/google/ads/interactivemedia/v3/internal/cz;

    :cond_15
    new-instance v12, Lcom/google/ads/interactivemedia/v3/internal/sz;

    new-array v13, v9, [Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 111
    invoke-static {v11, v10, v2}, Lcom/google/ads/interactivemedia/v3/internal/wt;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;Lcom/google/ads/interactivemedia/v3/internal/cz;Z)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object v10

    aput-object v10, v13, v2

    invoke-direct {v12, v13}, Lcom/google/ads/interactivemedia/v3/internal/sz;-><init>([Lcom/google/ads/interactivemedia/v3/internal/cz;)V

    aput-object v12, v3, v5

    :goto_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 112
    :cond_16
    invoke-direct {p0, v3}, Lcom/google/ads/interactivemedia/v3/internal/wt;->a([Lcom/google/ads/interactivemedia/v3/internal/sz;)Lcom/google/ads/interactivemedia/v3/internal/tb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->G:Lcom/google/ads/interactivemedia/v3/internal/tb;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->H:Ljava/util/Set;

    if-nez v0, :cond_17

    const/4 v2, 0x1

    .line 113
    :cond_17
    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    .line 114
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->H:Ljava/util/Set;

    .line 115
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->s()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->c:Lcom/google/ads/interactivemedia/v3/internal/wq;

    .line 116
    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/wq;->h()V

    :cond_18
    :goto_e
    return-void
.end method

.method private final q()Lcom/google/ads/interactivemedia/v3/internal/wh;
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/wh;

    return-object v0
.end method

.method private final r()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->O:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final s()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->B:Z

    return-void
.end method

.method private final t()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->B:Z

    .line 13
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->G:Lcom/google/ads/interactivemedia/v3/internal/tb;

    .line 14
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->H:Ljava/util/Set;

    .line 15
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 3

    .line 16
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->t()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->I:[I

    .line 17
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->I:[I

    .line 18
    aget v0, v0, p1

    const/4 v1, -0x2

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->H:Ljava/util/Set;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->G:Lcom/google/ads/interactivemedia/v3/internal/tb;

    .line 19
    invoke-virtual {v2, p1}, Lcom/google/ads/interactivemedia/v3/internal/tb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/sz;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    return v1

    :cond_1
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->L:[Z

    .line 20
    aget-boolean v2, p1, v0

    if-eqz v2, :cond_2

    return v1

    :cond_2
    const/4 v1, 0x1

    .line 21
    aput-boolean v1, p1, v0

    return v0
.end method

.method public final a(IJ)I
    .locals 1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 253
    aget-object p1, v0, p1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->R:Z

    .line 254
    invoke-virtual {p1, p2, p3, v0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->b(JZ)I

    move-result p2

    .line 255
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ss;->d(I)V

    return p2
.end method

.method public final a(ILcom/google/ads/interactivemedia/v3/internal/da;Lcom/google/ads/interactivemedia/v3/internal/he;Z)I
    .locals 10

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    .line 150
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    .line 151
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    .line 152
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/wh;

    .line 153
    iget v2, v2, Lcom/google/ads/interactivemedia/v3/internal/wh;->a:I

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 154
    array-length v3, v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->L:[Z

    .line 155
    aget-boolean v5, v5, v4

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/ss;->i()I

    move-result v5

    if-ne v5, v2, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    .line 156
    invoke-static {v2, v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/util/List;II)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    .line 157
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/wh;

    .line 158
    iget-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/wh;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->E:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 159
    invoke-virtual {v9, v2}, Lcom/google/ads/interactivemedia/v3/internal/cz;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->i:Lcom/google/ads/interactivemedia/v3/internal/ry;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->b:I

    .line 160
    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/wh;->g:I

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/wh;->h:Ljava/lang/Object;

    iget-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/wh;->i:J

    move-object v4, v9

    invoke-virtual/range {v2 .. v8}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(ILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;J)V

    :cond_4
    iput-object v9, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->E:Lcom/google/ads/interactivemedia/v3/internal/cz;

    :cond_5
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 161
    aget-object v0, v0, p1

    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->R:Z

    .line 162
    invoke-virtual {v0, p2, p3, p4, v2}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(Lcom/google/ads/interactivemedia/v3/internal/da;Lcom/google/ads/interactivemedia/v3/internal/he;ZZ)I

    move-result p3

    const/4 p4, -0x5

    if-ne p3, p4, :cond_9

    .line 163
    iget-object p3, p2, Lcom/google/ads/interactivemedia/v3/internal/da;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    invoke-static {p3}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->z:I

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 164
    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->i()I

    move-result p1

    :goto_3
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    .line 165
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/wh;

    iget v0, v0, Lcom/google/ads/interactivemedia/v3/internal/wh;->a:I

    if-eq v0, p1, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    .line 166
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_7

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    .line 167
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/wh;

    iget-object p1, p1, Lcom/google/ads/interactivemedia/v3/internal/wh;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    goto :goto_4

    .line 169
    :cond_7
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->D:Lcom/google/ads/interactivemedia/v3/internal/cz;

    .line 168
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :goto_4
    invoke-virtual {p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/cz;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)Lcom/google/ads/interactivemedia/v3/internal/cz;

    move-result-object p3

    :cond_8
    iput-object p3, p2, Lcom/google/ads/interactivemedia/v3/internal/da;->a:Lcom/google/ads/interactivemedia/v3/internal/cz;

    const/4 p3, -0x5

    :cond_9
    return p3
.end method

.method public final bridge synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aan;JJLjava/io/IOException;I)Lcom/google/ads/interactivemedia/v3/internal/aal;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/tl;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/tl;->d()J

    move-result-wide v2

    instance-of v4, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;

    new-instance v6, Lcom/google/ads/interactivemedia/v3/internal/rg;

    iget-wide v7, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->c:J

    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->d:Lcom/google/ads/interactivemedia/v3/internal/zs;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/tl;->e()Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/tl;->f()Ljava/util/Map;

    invoke-direct {v6}, Lcom/google/ads/interactivemedia/v3/internal/rg;-><init>()V

    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/rl;

    iget v8, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->e:I

    iget v9, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->b:I

    iget-object v10, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget v11, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->g:I

    iget-object v12, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->h:Ljava/lang/Object;

    iget-wide v13, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->i:J

    invoke-static {v13, v14}, Lcom/google/ads/interactivemedia/v3/internal/bk;->a(J)J

    move-result-wide v13

    move-object/from16 p1, v6

    iget-wide v5, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->j:J

    invoke-static {v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/bk;->a(J)J

    move-result-wide v15

    invoke-direct/range {v7 .. v16}, Lcom/google/ads/interactivemedia/v3/internal/rl;-><init>(IILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJ)V

    new-instance v5, Lcom/google/ads/interactivemedia/v3/internal/aai;

    move-object/from16 v14, p6

    move/from16 v6, p7

    invoke-direct {v5, v14, v6}, Lcom/google/ads/interactivemedia/v3/internal/aai;-><init>(Ljava/io/IOException;I)V

    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/aaa;->a(Lcom/google/ads/interactivemedia/v3/internal/aai;)J

    move-result-wide v6

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    cmp-long v11, v6, v8

    if-eqz v11, :cond_0

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->d:Lcom/google/ads/interactivemedia/v3/internal/wf;

    invoke-virtual {v11, v1, v6, v7}, Lcom/google/ads/interactivemedia/v3/internal/wf;->a(Lcom/google/ads/interactivemedia/v3/internal/tl;J)Z

    move-result v6

    move/from16 v18, v6

    goto :goto_0

    :cond_0
    const/16 v18, 0x0

    :goto_0
    const/4 v6, 0x1

    if-eqz v18, :cond_4

    if-eqz v4, :cond_3

    const-wide/16 v4, 0x0

    cmp-long v7, v2, v4

    if-nez v7, :cond_3

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/wh;

    if-ne v2, v1, :cond_1

    const/4 v10, 0x1

    :cond_1
    invoke-static {v10}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->N:J

    iput-wide v2, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->O:J

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/wh;

    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/wh;->c()V

    :cond_3
    :goto_1
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/aar;->a:Lcom/google/ads/interactivemedia/v3/internal/aal;

    goto :goto_2

    :cond_4
    invoke-static {v5}, Lcom/google/ads/interactivemedia/v3/internal/aaa;->b(Lcom/google/ads/interactivemedia/v3/internal/aai;)J

    move-result-wide v2

    cmp-long v4, v2, v8

    if-eqz v4, :cond_5

    invoke-static {v10, v2, v3}, Lcom/google/ads/interactivemedia/v3/internal/aar;->a(ZJ)Lcom/google/ads/interactivemedia/v3/internal/aal;

    move-result-object v2

    goto :goto_2

    :cond_5
    sget-object v2, Lcom/google/ads/interactivemedia/v3/internal/aar;->b:Lcom/google/ads/interactivemedia/v3/internal/aal;

    :goto_2
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/aal;->a()Z

    move-result v3

    xor-int/2addr v3, v6

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->i:Lcom/google/ads/interactivemedia/v3/internal/ry;

    iget v7, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->e:I

    iget v8, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->b:I

    iget-object v9, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget v10, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->g:I

    iget-object v11, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->h:Ljava/lang/Object;

    iget-wide v12, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->i:J

    iget-wide v14, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->j:J

    move-object/from16 v6, p1

    move-object/from16 v16, p6

    move/from16 v17, v3

    invoke-virtual/range {v5 .. v17}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Lcom/google/ads/interactivemedia/v3/internal/rg;IILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->s:Lcom/google/ads/interactivemedia/v3/internal/tl;

    iget-wide v3, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->c:J

    :cond_6
    if-eqz v18, :cond_8

    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->B:Z

    if-nez v1, :cond_7

    iget-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->N:J

    invoke-virtual {v0, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/wt;->c(J)Z

    goto :goto_3

    :cond_7
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->c:Lcom/google/ads/interactivemedia/v3/internal/wq;

    invoke-interface {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/wq;->a(Lcom/google/ads/interactivemedia/v3/internal/sv;)V

    :cond_8
    :goto_3
    return-object v2
.end method

.method public final a(II)Lcom/google/ads/interactivemedia/v3/internal/ix;
    .locals 11

    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->a:Ljava/util/Set;

    .line 256
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 260
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->a(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->w:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    .line 261
    invoke-virtual {v0, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 282
    :cond_0
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->v:Ljava/util/Set;

    .line 262
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->u:[I

    .line 263
    aput p1, v1, v0

    :cond_1
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->u:[I

    .line 264
    aget v1, v1, v0

    if-ne v1, p1, :cond_2

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 265
    aget-object v3, v1, v0

    goto :goto_1

    .line 266
    :cond_2
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/wt;->b(II)Lcom/google/ads/interactivemedia/v3/internal/ig;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 257
    array-length v2, v1

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->u:[I

    .line 258
    aget v2, v2, v0

    if-ne v2, p1, :cond_4

    .line 259
    aget-object v3, v1, v0

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    if-nez v3, :cond_c

    .line 261
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->S:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 267
    array-length v0, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p2, v2, :cond_7

    if-ne p2, v1, :cond_6

    goto :goto_2

    :cond_6
    move v1, p2

    goto :goto_3

    :cond_7
    move v1, p2

    :goto_2
    const/4 v4, 0x1

    :goto_3
    new-instance v3, Lcom/google/ads/interactivemedia/v3/internal/ws;

    iget-object v6, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->W:Lcom/google/ads/interactivemedia/v3/internal/zt;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->p:Landroid/os/Handler;

    .line 268
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v7

    iget-object v8, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->f:Lcom/google/ads/interactivemedia/v3/internal/hq;

    iget-object v9, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->g:Lcom/google/ads/interactivemedia/v3/internal/hn;

    iget-object v10, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->r:Ljava/util/Map;

    move-object v5, v3

    invoke-direct/range {v5 .. v10}, Lcom/google/ads/interactivemedia/v3/internal/ws;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zt;Landroid/os/Looper;Lcom/google/ads/interactivemedia/v3/internal/hq;Lcom/google/ads/interactivemedia/v3/internal/hn;Ljava/util/Map;)V

    if-eqz v4, :cond_8

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->U:Lcom/google/ads/interactivemedia/v3/internal/hk;

    .line 269
    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/ws;->a(Lcom/google/ads/interactivemedia/v3/internal/hk;)V

    :cond_8
    iget-wide v5, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->T:J

    .line 270
    invoke-virtual {v3, v5, v6}, Lcom/google/ads/interactivemedia/v3/internal/ss;->b(J)V

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->V:Lcom/google/ads/interactivemedia/v3/internal/wh;

    if-eqz v2, :cond_9

    .line 271
    invoke-virtual {v3, v2}, Lcom/google/ads/interactivemedia/v3/internal/ws;->a(Lcom/google/ads/interactivemedia/v3/internal/wh;)V

    .line 272
    :cond_9
    invoke-virtual {v3, p0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(Lcom/google/ads/interactivemedia/v3/internal/sr;)V

    add-int/lit8 v2, v0, 0x1

    iget-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->u:[I

    .line 273
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    iput-object v5, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->u:[I

    .line 274
    aput p1, v5, v0

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 275
    invoke-static {p1, v3}, Lcom/google/ads/interactivemedia/v3/internal/ach;->b([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/ads/interactivemedia/v3/internal/ws;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->M:[Z

    .line 276
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->M:[Z

    .line 277
    aput-boolean v4, p1, v0

    iget-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->K:Z

    or-int/2addr p1, v4

    iput-boolean p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->K:Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->v:Ljava/util/Set;

    .line 278
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->w:Landroid/util/SparseIntArray;

    .line 279
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseIntArray;->append(II)V

    invoke-static {v1}, Lcom/google/ads/interactivemedia/v3/internal/wt;->e(I)I

    move-result p1

    iget v4, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->y:I

    invoke-static {v4}, Lcom/google/ads/interactivemedia/v3/internal/wt;->e(I)I

    move-result v4

    if-le p1, v4, :cond_a

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->z:I

    iput v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->y:I

    :cond_a
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->L:[Z

    .line 280
    invoke-static {p1, v2}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->L:[Z

    goto :goto_4

    .line 282
    :cond_b
    invoke-static {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/wt;->b(II)Lcom/google/ads/interactivemedia/v3/internal/ig;

    move-result-object p1

    return-object p1

    :cond_c
    :goto_4
    const/4 p1, 0x4

    if-ne p2, p1, :cond_e

    .line 280
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->x:Lcom/google/ads/interactivemedia/v3/internal/ix;

    if-nez p1, :cond_d

    .line 281
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/wr;

    iget p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->j:I

    invoke-direct {p1, v3, p2}, Lcom/google/ads/interactivemedia/v3/internal/wr;-><init>(Lcom/google/ads/interactivemedia/v3/internal/ix;I)V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->x:Lcom/google/ads/interactivemedia/v3/internal/ix;

    :cond_d
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->x:Lcom/google/ads/interactivemedia/v3/internal/ix;

    return-object p1

    :cond_e
    return-object v3
.end method

.method public final a(JZ)V
    .locals 4

    iget-boolean p3, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->A:Z

    if-eqz p3, :cond_1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->r()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 80
    array-length p3, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 81
    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->L:[Z

    aget-boolean v3, v3, v1

    invoke-virtual {v2, p1, p2, v0, v3}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(JZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final bridge synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aan;JJ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/tl;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->s:Lcom/google/ads/interactivemedia/v3/internal/tl;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->d:Lcom/google/ads/interactivemedia/v3/internal/wf;

    invoke-virtual {v2, v1}, Lcom/google/ads/interactivemedia/v3/internal/wf;->a(Lcom/google/ads/interactivemedia/v3/internal/tl;)V

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/rg;

    iget-wide v2, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->c:J

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->d:Lcom/google/ads/interactivemedia/v3/internal/zs;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/tl;->e()Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/tl;->f()Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/tl;->d()J

    invoke-direct {v4}, Lcom/google/ads/interactivemedia/v3/internal/rg;-><init>()V

    iget-wide v2, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->c:J

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->i:Lcom/google/ads/interactivemedia/v3/internal/ry;

    iget v5, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->e:I

    iget v6, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->b:I

    iget-object v7, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget v8, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->g:I

    iget-object v9, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->h:Ljava/lang/Object;

    iget-wide v10, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->i:J

    iget-wide v12, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->j:J

    invoke-virtual/range {v3 .. v13}, Lcom/google/ads/interactivemedia/v3/internal/ry;->b(Lcom/google/ads/interactivemedia/v3/internal/rg;IILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJ)V

    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->B:Z

    if-nez v1, :cond_0

    iget-wide v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->N:J

    invoke-virtual {p0, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/wt;->c(J)Z

    return-void

    :cond_0
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->c:Lcom/google/ads/interactivemedia/v3/internal/wq;

    invoke-interface {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/wq;->a(Lcom/google/ads/interactivemedia/v3/internal/sv;)V

    return-void
.end method

.method public final bridge synthetic a(Lcom/google/ads/interactivemedia/v3/internal/aan;JJZ)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/tl;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->s:Lcom/google/ads/interactivemedia/v3/internal/tl;

    new-instance v4, Lcom/google/ads/interactivemedia/v3/internal/rg;

    iget-wide v2, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->c:J

    iget-object v2, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->d:Lcom/google/ads/interactivemedia/v3/internal/zs;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/tl;->e()Landroid/net/Uri;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/tl;->f()Ljava/util/Map;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/tl;->d()J

    invoke-direct {v4}, Lcom/google/ads/interactivemedia/v3/internal/rg;-><init>()V

    iget-wide v2, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->c:J

    iget-object v3, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->i:Lcom/google/ads/interactivemedia/v3/internal/ry;

    iget v5, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->e:I

    iget v6, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->b:I

    iget-object v7, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget v8, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->g:I

    iget-object v9, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->h:Ljava/lang/Object;

    iget-wide v10, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->i:J

    iget-wide v12, v1, Lcom/google/ads/interactivemedia/v3/internal/tl;->j:J

    invoke-virtual/range {v3 .. v13}, Lcom/google/ads/interactivemedia/v3/internal/ry;->c(Lcom/google/ads/interactivemedia/v3/internal/rg;IILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJ)V

    if-nez p6, :cond_2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->r()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->C:I

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->n()V

    :cond_1
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->C:I

    if-lez v1, :cond_2

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->c:Lcom/google/ads/interactivemedia/v3/internal/wq;

    invoke-interface {v1, p0}, Lcom/google/ads/interactivemedia/v3/internal/wq;->a(Lcom/google/ads/interactivemedia/v3/internal/sv;)V

    :cond_2
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/hk;)V
    .locals 3

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->U:Lcom/google/ads/interactivemedia/v3/internal/hk;

    .line 246
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->U:Lcom/google/ads/interactivemedia/v3/internal/hk;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 247
    array-length v2, v1

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->M:[Z

    .line 248
    aget-boolean v2, v2, v0

    if-eqz v2, :cond_0

    .line 249
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/ws;->a(Lcom/google/ads/interactivemedia/v3/internal/hk;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/ads/interactivemedia/v3/internal/iu;)V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->d:Lcom/google/ads/interactivemedia/v3/internal/wf;

    .line 250
    invoke-virtual {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/wf;->a(Z)V

    return-void
.end method

.method public final varargs a([Lcom/google/ads/interactivemedia/v3/internal/sz;[I)V
    .locals 5

    .line 144
    invoke-direct {p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/wt;->a([Lcom/google/ads/interactivemedia/v3/internal/sz;)Lcom/google/ads/interactivemedia/v3/internal/tb;

    move-result-object p1

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->G:Lcom/google/ads/interactivemedia/v3/internal/tb;

    new-instance p1, Ljava/util/HashSet;

    .line 145
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->H:Ljava/util/Set;

    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 146
    aget v2, p2, v1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->H:Ljava/util/Set;

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->G:Lcom/google/ads/interactivemedia/v3/internal/tb;

    .line 147
    invoke-virtual {v4, v2}, Lcom/google/ads/interactivemedia/v3/internal/tb;->a(I)Lcom/google/ads/interactivemedia/v3/internal/sz;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->J:I

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->p:Landroid/os/Handler;

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->c:Lcom/google/ads/interactivemedia/v3/internal/wq;

    .line 148
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/wo;->a(Lcom/google/ads/interactivemedia/v3/internal/wq;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->s()V

    return-void
.end method

.method public final a(Landroid/net/Uri;J)Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->d:Lcom/google/ads/interactivemedia/v3/internal/wf;

    .line 142
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/ads/interactivemedia/v3/internal/wf;->a(Landroid/net/Uri;J)Z

    move-result p1

    return p1
.end method

.method public final a([Lcom/google/ads/interactivemedia/v3/internal/yr;[Z[Lcom/google/ads/interactivemedia/v3/internal/st;[ZJZ)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-wide/from16 v3, p5

    .line 210
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->t()V

    iget v5, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->C:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    array-length v8, v1

    const/4 v9, 0x0

    if-ge v7, v8, :cond_2

    .line 211
    aget-object v8, v2, v7

    check-cast v8, Lcom/google/ads/interactivemedia/v3/internal/wl;

    if-eqz v8, :cond_1

    .line 212
    aget-object v10, v1, v7

    if-eqz v10, :cond_0

    aget-boolean v10, p2, v7

    if-nez v10, :cond_1

    :cond_0
    iget v10, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->C:I

    add-int/lit8 v10, v10, -0x1

    iput v10, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->C:I

    .line 213
    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/wl;->d()V

    .line 214
    aput-object v9, v2, v7

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v7, 0x1

    if-nez p7, :cond_5

    iget-boolean v8, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->Q:Z

    if-eqz v8, :cond_3

    if-nez v5, :cond_4

    goto :goto_1

    .line 242
    :cond_3
    iget-wide v10, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->N:J

    cmp-long v5, v3, v10

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v5, 0x1

    .line 214
    :goto_2
    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->d:Lcom/google/ads/interactivemedia/v3/internal/wf;

    .line 215
    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/wf;->c()Lcom/google/ads/interactivemedia/v3/internal/yr;

    move-result-object v8

    move-object v14, v8

    const/4 v10, 0x0

    :goto_3
    array-length v11, v1

    if-ge v10, v11, :cond_a

    .line 216
    aget-object v11, v1, v10

    if-nez v11, :cond_6

    goto :goto_4

    :cond_6
    iget-object v12, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->G:Lcom/google/ads/interactivemedia/v3/internal/tb;

    invoke-interface {v11}, Lcom/google/ads/interactivemedia/v3/internal/yr;->f()Lcom/google/ads/interactivemedia/v3/internal/sz;

    move-result-object v13

    .line 217
    invoke-virtual {v12, v13}, Lcom/google/ads/interactivemedia/v3/internal/tb;->a(Lcom/google/ads/interactivemedia/v3/internal/sz;)I

    move-result v12

    iget v13, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->J:I

    if-ne v12, v13, :cond_7

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->d:Lcom/google/ads/interactivemedia/v3/internal/wf;

    .line 218
    invoke-virtual {v13, v11}, Lcom/google/ads/interactivemedia/v3/internal/wf;->a(Lcom/google/ads/interactivemedia/v3/internal/yr;)V

    move-object v14, v11

    .line 219
    :cond_7
    aget-object v11, v2, v10

    if-nez v11, :cond_9

    iget v11, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->C:I

    add-int/2addr v11, v7

    iput v11, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->C:I

    new-instance v11, Lcom/google/ads/interactivemedia/v3/internal/wl;

    .line 220
    invoke-direct {v11, v0, v12}, Lcom/google/ads/interactivemedia/v3/internal/wl;-><init>(Lcom/google/ads/interactivemedia/v3/internal/wt;I)V

    aput-object v11, v2, v10

    .line 221
    aput-boolean v7, p4, v10

    iget-object v13, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->I:[I

    if-eqz v13, :cond_9

    .line 222
    invoke-virtual {v11}, Lcom/google/ads/interactivemedia/v3/internal/wl;->a()V

    if-nez v5, :cond_9

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    iget-object v11, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->I:[I

    .line 223
    aget v11, v11, v12

    aget-object v5, v5, v11

    .line 224
    invoke-virtual {v5, v3, v4, v7}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(JZ)Z

    move-result v11

    if-nez v11, :cond_8

    .line 225
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/ss;->h()I

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :cond_9
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_a
    iget v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->C:I

    if-nez v1, :cond_d

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->d:Lcom/google/ads/interactivemedia/v3/internal/wf;

    .line 226
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/wf;->d()V

    iput-object v9, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->E:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput-boolean v7, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->P:Z

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    .line 227
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->h:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 228
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/aar;->d()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->A:Z

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 229
    array-length v3, v1

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_b

    aget-object v8, v1, v4

    .line 230
    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/ss;->o()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_b
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->h:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 231
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/aar;->e()V

    goto :goto_8

    .line 232
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->n()V

    goto :goto_8

    :cond_d
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    .line 233
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 234
    invoke-static {v14, v8}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->Q:Z

    if-nez v1, :cond_f

    const-wide/16 v8, 0x0

    cmp-long v1, v3, v8

    if-gez v1, :cond_e

    neg-long v8, v3

    :cond_e
    move-wide v12, v8

    .line 235
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->q()Lcom/google/ads/interactivemedia/v3/internal/wh;

    move-result-object v1

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->d:Lcom/google/ads/interactivemedia/v3/internal/wf;

    .line 236
    invoke-virtual {v8, v1, v3, v4}, Lcom/google/ads/interactivemedia/v3/internal/wf;->a(Lcom/google/ads/interactivemedia/v3/internal/wh;J)[Lcom/google/ads/interactivemedia/v3/internal/tw;

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v10, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->m:Ljava/util/List;

    move-object v11, v14

    move-object/from16 v17, v14

    move-wide v14, v8

    move-object/from16 v16, v10

    .line 237
    invoke-interface/range {v11 .. v16}, Lcom/google/ads/interactivemedia/v3/internal/yr;->a(JJLjava/util/List;)V

    iget-object v8, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->d:Lcom/google/ads/interactivemedia/v3/internal/wf;

    .line 238
    invoke-virtual {v8}, Lcom/google/ads/interactivemedia/v3/internal/wf;->b()Lcom/google/ads/interactivemedia/v3/internal/sz;

    move-result-object v8

    iget-object v1, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    invoke-virtual {v8, v1}, Lcom/google/ads/interactivemedia/v3/internal/sz;->a(Lcom/google/ads/interactivemedia/v3/internal/cz;)I

    move-result v1

    .line 239
    invoke-interface/range {v17 .. v17}, Lcom/google/ads/interactivemedia/v3/internal/yr;->i()I

    move-result v8

    if-eq v8, v1, :cond_10

    :cond_f
    iput-boolean v7, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->P:Z

    const/4 v1, 0x1

    const/4 v5, 0x1

    goto :goto_6

    :cond_10
    move/from16 v1, p7

    :goto_6
    if-eqz v5, :cond_12

    .line 240
    invoke-virtual {v0, v3, v4, v1}, Lcom/google/ads/interactivemedia/v3/internal/wt;->b(JZ)Z

    const/4 v1, 0x0

    :goto_7
    array-length v3, v2

    if-ge v1, v3, :cond_12

    .line 241
    aget-object v3, v2, v1

    if-eqz v3, :cond_11

    .line 242
    aput-boolean v7, p4, v1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 231
    :cond_12
    :goto_8
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->q:Ljava/util/ArrayList;

    .line 243
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    array-length v1, v2

    :goto_9
    if-ge v6, v1, :cond_14

    .line 244
    aget-object v3, v2, v6

    if-eqz v3, :cond_13

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->q:Ljava/util/ArrayList;

    .line 245
    check-cast v3, Lcom/google/ads/interactivemedia/v3/internal/wl;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_14
    iput-boolean v7, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->Q:Z

    return v5
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->B:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->N:J

    .line 50
    invoke-virtual {p0, v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/wt;->c(J)Z

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 2

    .line 283
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->t()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->I:[I

    .line 284
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->I:[I

    .line 285
    aget p1, v0, p1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->L:[Z

    .line 286
    aget-boolean v0, v0, p1

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->L:[Z

    const/4 v1, 0x0

    .line 287
    aput-boolean v1, v0, p1

    return-void
.end method

.method public final b(J)V
    .locals 4

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->T:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->T:J

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 251
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 252
    invoke-virtual {v3, p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/ss;->b(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(JZ)Z
    .locals 4

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->N:J

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->r()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->O:J

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->A:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-nez p3, :cond_3

    iget-object p3, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 201
    array-length p3, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 202
    aget-object v3, v3, v0

    .line 203
    invoke-virtual {v3, p1, p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(JZ)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->M:[Z

    .line 204
    aget-boolean v3, v3, v0

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->K:Z

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_1
    iput-wide p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->O:J

    iput-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->R:Z

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    .line 205
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->h:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 206
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aar;->d()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->h:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 207
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aar;->e()V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->h:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 208
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aar;->c()V

    .line 209
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->n()V

    :goto_2
    return v1
.end method

.method public final c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->j()V

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->R:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->B:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/dt;

    const-string v1, "Loading finished before preparation is complete."

    .line 138
    invoke-direct {v0, v1}, Lcom/google/ads/interactivemedia/v3/internal/dt;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final c(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->r()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 93
    aget-object p1, v0, p1

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->R:Z

    invoke-virtual {p1, v0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->b(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final c(J)Z
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->R:Z

    const/4 v2, 0x0

    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->h:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 22
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/aar;->d()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->h:Lcom/google/ads/interactivemedia/v3/internal/aar;

    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/aar;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->r()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 23
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iget-wide v3, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->O:J

    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 24
    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v5, v7

    iget-wide v9, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->O:J

    .line 25
    invoke-virtual {v8, v9, v10}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a(J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 49
    :cond_1
    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->m:Ljava/util/List;

    .line 26
    invoke-direct/range {p0 .. p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->q()Lcom/google/ads/interactivemedia/v3/internal/wh;

    move-result-object v3

    .line 27
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/wh;->h()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 28
    iget-wide v3, v3, Lcom/google/ads/interactivemedia/v3/internal/wh;->j:J

    goto :goto_1

    :cond_2
    iget-wide v4, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->N:J

    .line 29
    iget-wide v6, v3, Lcom/google/ads/interactivemedia/v3/internal/wh;->i:J

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_3
    :goto_1
    move-object v10, v1

    move-wide v8, v3

    .line 25
    iget-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->d:Lcom/google/ads/interactivemedia/v3/internal/wf;

    iget-boolean v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->B:Z

    const/4 v3, 0x1

    if-nez v1, :cond_5

    .line 30
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v11, 0x1

    :goto_3
    iget-object v12, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->k:Lcom/google/ads/interactivemedia/v3/internal/wc;

    move-wide/from16 v6, p1

    .line 31
    invoke-virtual/range {v5 .. v12}, Lcom/google/ads/interactivemedia/v3/internal/wf;->a(JJLjava/util/List;ZLcom/google/ads/interactivemedia/v3/internal/wc;)V

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->k:Lcom/google/ads/interactivemedia/v3/internal/wc;

    .line 32
    iget-boolean v4, v1, Lcom/google/ads/interactivemedia/v3/internal/wc;->b:Z

    .line 33
    iget-object v5, v1, Lcom/google/ads/interactivemedia/v3/internal/wc;->a:Lcom/google/ads/interactivemedia/v3/internal/tl;

    .line 34
    iget-object v6, v1, Lcom/google/ads/interactivemedia/v3/internal/wc;->c:Landroid/net/Uri;

    .line 35
    invoke-virtual {v1}, Lcom/google/ads/interactivemedia/v3/internal/wc;->a()V

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v4, :cond_6

    iput-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->O:J

    iput-boolean v3, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->R:Z

    return v3

    :cond_6
    if-nez v5, :cond_8

    if-eqz v6, :cond_7

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->c:Lcom/google/ads/interactivemedia/v3/internal/wq;

    .line 36
    invoke-interface {v1, v6}, Lcom/google/ads/interactivemedia/v3/internal/wq;->a(Landroid/net/Uri;)V

    :cond_7
    return v2

    .line 37
    :cond_8
    instance-of v1, v5, Lcom/google/ads/interactivemedia/v3/internal/wh;

    if-eqz v1, :cond_b

    .line 38
    move-object v1, v5

    check-cast v1, Lcom/google/ads/interactivemedia/v3/internal/wh;

    iput-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->V:Lcom/google/ads/interactivemedia/v3/internal/wh;

    iget-object v4, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->D:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iput-wide v7, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->O:J

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    .line 39
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/aop;->i()Lcom/google/ads/interactivemedia/v3/internal/aom;

    move-result-object v4

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 41
    array-length v7, v6

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v7, :cond_9

    aget-object v9, v6, v8

    .line 42
    invoke-virtual {v9}, Lcom/google/ads/interactivemedia/v3/internal/ss;->d()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/google/ads/interactivemedia/v3/internal/aom;->b(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 43
    :cond_9
    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/aom;->a()Lcom/google/ads/interactivemedia/v3/internal/aop;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/google/ads/interactivemedia/v3/internal/wh;->a(Lcom/google/ads/interactivemedia/v3/internal/wt;Lcom/google/ads/interactivemedia/v3/internal/aop;)V

    iget-object v4, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 44
    array-length v6, v4

    :goto_5
    if-ge v2, v6, :cond_b

    aget-object v7, v4, v2

    .line 45
    invoke-virtual {v7, v1}, Lcom/google/ads/interactivemedia/v3/internal/ws;->a(Lcom/google/ads/interactivemedia/v3/internal/wh;)V

    iget-boolean v8, v1, Lcom/google/ads/interactivemedia/v3/internal/wh;->n:Z

    if-eqz v8, :cond_a

    .line 46
    invoke-virtual {v7}, Lcom/google/ads/interactivemedia/v3/internal/ss;->c()V

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_b
    iput-object v5, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->s:Lcom/google/ads/interactivemedia/v3/internal/tl;

    iget-object v1, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->h:Lcom/google/ads/interactivemedia/v3/internal/aar;

    iget-object v2, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->X:Lcom/google/ads/interactivemedia/v3/internal/aaa;

    iget v4, v5, Lcom/google/ads/interactivemedia/v3/internal/tl;->e:I

    .line 47
    invoke-virtual {v2, v4}, Lcom/google/ads/interactivemedia/v3/internal/aaa;->a(I)I

    move-result v2

    .line 48
    invoke-virtual {v1, v5, v0, v2}, Lcom/google/ads/interactivemedia/v3/internal/aar;->a(Lcom/google/ads/interactivemedia/v3/internal/aan;Lcom/google/ads/interactivemedia/v3/internal/aak;I)J

    iget-object v6, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->i:Lcom/google/ads/interactivemedia/v3/internal/ry;

    .line 49
    new-instance v7, Lcom/google/ads/interactivemedia/v3/internal/rg;

    iget-object v1, v5, Lcom/google/ads/interactivemedia/v3/internal/tl;->d:Lcom/google/ads/interactivemedia/v3/internal/zs;

    invoke-direct {v7, v1}, Lcom/google/ads/interactivemedia/v3/internal/rg;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zs;)V

    iget v8, v5, Lcom/google/ads/interactivemedia/v3/internal/tl;->e:I

    iget v9, v0, Lcom/google/ads/interactivemedia/v3/internal/wt;->b:I

    iget-object v10, v5, Lcom/google/ads/interactivemedia/v3/internal/tl;->f:Lcom/google/ads/interactivemedia/v3/internal/cz;

    iget v11, v5, Lcom/google/ads/interactivemedia/v3/internal/tl;->g:I

    iget-object v12, v5, Lcom/google/ads/interactivemedia/v3/internal/tl;->h:Ljava/lang/Object;

    iget-wide v13, v5, Lcom/google/ads/interactivemedia/v3/internal/tl;->i:J

    iget-wide v1, v5, Lcom/google/ads/interactivemedia/v3/internal/tl;->j:J

    move-wide v15, v1

    invoke-virtual/range {v6 .. v16}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(Lcom/google/ads/interactivemedia/v3/internal/rg;IILcom/google/ads/interactivemedia/v3/internal/cz;ILjava/lang/Object;JJ)V

    return v3

    :cond_c
    :goto_6
    return v2
.end method

.method public final d()J
    .locals 7

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->R:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    :cond_0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->O:J

    return-wide v0

    :cond_1
    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->N:J

    .line 83
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->q()Lcom/google/ads/interactivemedia/v3/internal/wh;

    move-result-object v2

    .line 84
    invoke-virtual {v2}, Lcom/google/ads/interactivemedia/v3/internal/wh;->h()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    .line 85
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/wh;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    iget-wide v2, v2, Lcom/google/ads/interactivemedia/v3/internal/wh;->j:J

    .line 86
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :cond_4
    iget-boolean v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->A:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 87
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 88
    invoke-virtual {v5}, Lcom/google/ads/interactivemedia/v3/internal/ss;->k()J

    move-result-wide v5

    invoke-static {v0, v1, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    return-wide v0
.end method

.method public final d(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    invoke-virtual {p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->j()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 136
    aget-object p1, v0, p1

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/ss;->f()V

    return-void
.end method

.method public final e()J
    .locals 2

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->O:J

    return-wide v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->R:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 90
    :cond_1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->q()Lcom/google/ads/interactivemedia/v3/internal/wh;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/ads/interactivemedia/v3/internal/wh;->j:J

    return-wide v0
.end method

.method public final f(J)V
    .locals 8

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->h:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 170
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aar;->b()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->h:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 171
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aar;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->s:Lcom/google/ads/interactivemedia/v3/internal/tl;

    .line 172
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->d:Lcom/google/ads/interactivemedia/v3/internal/wf;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->s:Lcom/google/ads/interactivemedia/v3/internal/tl;

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->m:Ljava/util/List;

    .line 173
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/google/ads/interactivemedia/v3/internal/wf;->a(JLcom/google/ads/interactivemedia/v3/internal/tl;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->h:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 174
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/aar;->e()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->d:Lcom/google/ads/interactivemedia/v3/internal/wf;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->m:Ljava/util/List;

    .line 175
    invoke-virtual {v0, p1, p2, v1}, Lcom/google/ads/interactivemedia/v3/internal/wf;->a(JLjava/util/List;)I

    move-result p1

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    .line 176
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_b

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->h:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 177
    invoke-virtual {p2}, Lcom/google/ads/interactivemedia/v3/internal/aar;->d()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Lcom/google/ads/interactivemedia/v3/internal/app;->b(Z)V

    :goto_0
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    .line 178
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ge p1, p2, :cond_6

    move p2, p1

    :goto_1
    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    .line 179
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_4

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    .line 180
    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/ads/interactivemedia/v3/internal/wh;

    iget-boolean v2, v2, Lcom/google/ads/interactivemedia/v3/internal/wh;->n:Z

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    .line 181
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/wh;

    const/4 v2, 0x0

    :goto_2
    iget-object v3, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 182
    array-length v3, v3

    if-ge v2, v3, :cond_7

    .line 183
    invoke-virtual {p2, v2}, Lcom/google/ads/interactivemedia/v3/internal/wh;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 184
    aget-object v4, v4, v2

    invoke-virtual {v4}, Lcom/google/ads/interactivemedia/v3/internal/ss;->h()I

    move-result v4

    if-gt v4, v3, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    const/4 p1, -0x1

    :cond_7
    if-ne p1, v0, :cond_8

    goto :goto_6

    .line 185
    :cond_8
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->q()Lcom/google/ads/interactivemedia/v3/internal/wh;

    move-result-object p2

    iget-wide v6, p2, Lcom/google/ads/interactivemedia/v3/internal/wh;->j:J

    iget-object p2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    .line 186
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/ads/interactivemedia/v3/internal/wh;

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    .line 187
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, p1, v2}, Lcom/google/ads/interactivemedia/v3/internal/ach;->a(Ljava/util/List;II)V

    const/4 p1, 0x0

    :goto_4
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 188
    array-length v0, v0

    if-ge p1, v0, :cond_9

    .line 189
    invoke-virtual {p2, p1}, Lcom/google/ads/interactivemedia/v3/internal/wh;->a(I)I

    move-result v0

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 190
    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Lcom/google/ads/interactivemedia/v3/internal/ss;->b(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    .line 191
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->N:J

    iput-wide v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->O:J

    goto :goto_5

    .line 193
    :cond_a
    iget-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->l:Ljava/util/ArrayList;

    .line 192
    invoke-static {p1}, Lcom/google/ads/interactivemedia/v3/internal/apn;->a(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/ads/interactivemedia/v3/internal/wh;

    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/wh;->c()V

    .line 191
    :goto_5
    iput-boolean v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->R:Z

    iget-object v2, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->i:Lcom/google/ads/interactivemedia/v3/internal/ry;

    iget v3, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->y:I

    .line 193
    iget-wide v4, p2, Lcom/google/ads/interactivemedia/v3/internal/wh;->i:J

    invoke-virtual/range {v2 .. v7}, Lcom/google/ads/interactivemedia/v3/internal/ry;->a(IJJ)V

    :cond_b
    :goto_6
    return-void
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->h:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 92
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aar;->d()Z

    move-result v0

    return v0
.end method

.method public final g()Lcom/google/ads/interactivemedia/v3/internal/tb;
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->t()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->G:Lcom/google/ads/interactivemedia/v3/internal/tb;

    return-object v0
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 139
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 140
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/ss;->a()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i()V
    .locals 4

    iget-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->t:[Lcom/google/ads/interactivemedia/v3/internal/ws;

    .line 194
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 195
    invoke-virtual {v3}, Lcom/google/ads/interactivemedia/v3/internal/ss;->e()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->h:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 196
    invoke-virtual {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/aar;->a(Lcom/google/ads/interactivemedia/v3/internal/aao;)V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->p:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 197
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->F:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->q:Ljava/util/ArrayList;

    .line 198
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final j()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->h:Lcom/google/ads/interactivemedia/v3/internal/aar;

    .line 133
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/aar;->a()V

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->d:Lcom/google/ads/interactivemedia/v3/internal/wf;

    .line 134
    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/wf;->a()V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->v:Ljava/util/Set;

    .line 141
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method final bridge synthetic l()V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->p()V

    return-void
.end method

.method final bridge synthetic m()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->A:Z

    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/wt;->p()V

    return-void
.end method

.method public final o()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->n:Ljava/lang/Runnable;

    .line 143
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final w()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->S:Z

    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/ads/interactivemedia/v3/internal/wt;->o:Ljava/lang/Runnable;

    .line 82
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
