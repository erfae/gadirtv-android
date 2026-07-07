.class public final Lcom/google/android/gms/internal/ads/zzccl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# static fields
.field public static final zzgdq:Lcom/google/android/gms/internal/ads/zzccl;


# instance fields
.field private final zzgdj:Lcom/google/android/gms/internal/ads/zzafk;

.field private final zzgdk:Lcom/google/android/gms/internal/ads/zzafj;

.field private final zzgdl:Lcom/google/android/gms/internal/ads/zzafy;

.field private final zzgdm:Lcom/google/android/gms/internal/ads/zzafx;

.field private final zzgdn:Lcom/google/android/gms/internal/ads/zzajt;

.field private final zzgdo:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzafq;",
            ">;"
        }
    .end annotation
.end field

.field private final zzgdp:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzafp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/zzccn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzccn;-><init>()V

    .line 36
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccn;->zzany()Lcom/google/android/gms/internal/ads/zzccl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzccl;->zzgdq:Lcom/google/android/gms/internal/ads/zzccl;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzccn;)V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzccn;->zzgdj:Lcom/google/android/gms/internal/ads/zzafk;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzgdj:Lcom/google/android/gms/internal/ads/zzafk;

    .line 27
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzccn;->zzgdk:Lcom/google/android/gms/internal/ads/zzafj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzgdk:Lcom/google/android/gms/internal/ads/zzafj;

    .line 28
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzccn;->zzgdl:Lcom/google/android/gms/internal/ads/zzafy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzgdl:Lcom/google/android/gms/internal/ads/zzafy;

    .line 29
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzccn;->zzgdo:Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzgdo:Landroidx/collection/SimpleArrayMap;

    .line 30
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzccn;->zzgdp:Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0, v1}, Landroidx/collection/SimpleArrayMap;-><init>(Landroidx/collection/SimpleArrayMap;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzgdp:Landroidx/collection/SimpleArrayMap;

    .line 31
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzccn;->zzgdm:Lcom/google/android/gms/internal/ads/zzafx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzgdm:Lcom/google/android/gms/internal/ads/zzafx;

    .line 32
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzccn;->zzgdn:Lcom/google/android/gms/internal/ads/zzajt;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzgdn:Lcom/google/android/gms/internal/ads/zzajt;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzccn;Lcom/google/android/gms/internal/ads/zzcco;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzccl;-><init>(Lcom/google/android/gms/internal/ads/zzccn;)V

    return-void
.end method


# virtual methods
.method public final zzanr()Lcom/google/android/gms/internal/ads/zzafk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzgdj:Lcom/google/android/gms/internal/ads/zzafk;

    return-object v0
.end method

.method public final zzans()Lcom/google/android/gms/internal/ads/zzafj;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzgdk:Lcom/google/android/gms/internal/ads/zzafj;

    return-object v0
.end method

.method public final zzant()Lcom/google/android/gms/internal/ads/zzafy;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzgdl:Lcom/google/android/gms/internal/ads/zzafy;

    return-object v0
.end method

.method public final zzanu()Lcom/google/android/gms/internal/ads/zzafx;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzgdm:Lcom/google/android/gms/internal/ads/zzafx;

    return-object v0
.end method

.method public final zzanv()Lcom/google/android/gms/internal/ads/zzajt;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzgdn:Lcom/google/android/gms/internal/ads/zzajt;

    return-object v0
.end method

.method public final zzanw()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzgdl:Lcom/google/android/gms/internal/ads/zzafy;

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzgdj:Lcom/google/android/gms/internal/ads/zzafk;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzgdk:Lcom/google/android/gms/internal/ads/zzafj;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzgdo:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v1, 0x3

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzgdn:Lcom/google/android/gms/internal/ads/zzajt;

    if-eqz v1, :cond_4

    const/4 v1, 0x7

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    return-object v0
.end method

.method public final zzanx()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzgdo:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 21
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzgdo:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 22
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzgdo:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2, v1}, Landroidx/collection/SimpleArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final zzga(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzafq;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzgdo:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzafq;

    return-object p1
.end method

.method public final zzgb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzafp;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzccl;->zzgdp:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzafp;

    return-object p1
.end method
