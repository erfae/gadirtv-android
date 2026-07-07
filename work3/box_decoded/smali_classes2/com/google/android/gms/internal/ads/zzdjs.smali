.class final Lcom/google/android/gms/internal/ads/zzdjs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdqb;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdqb;"
    }
.end annotation


# instance fields
.field public final executor:Ljava/util/concurrent/Executor;

.field public final zzbum:Ljava/lang/String;

.field public final zzdsr:Lcom/google/android/gms/internal/ads/zzvk;

.field public final zzgyt:Lcom/google/android/gms/internal/ads/zzvw;

.field public final zzhev:Lcom/google/android/gms/internal/ads/zzdkn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdkn<",
            "TR;>;"
        }
    .end annotation
.end field

.field public final zzhew:Lcom/google/android/gms/internal/ads/zzdkm;

.field private final zzhex:Lcom/google/android/gms/internal/ads/zzdpq;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdkn;Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzvk;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzvw;Lcom/google/android/gms/internal/ads/zzdpq;)V
    .locals 0
    .param p7    # Lcom/google/android/gms/internal/ads/zzdpq;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdkn<",
            "TR;>;",
            "Lcom/google/android/gms/internal/ads/zzdkm;",
            "Lcom/google/android/gms/internal/ads/zzvk;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/zzvw;",
            "Lcom/google/android/gms/internal/ads/zzdpq;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzhev:Lcom/google/android/gms/internal/ads/zzdkn;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzhew:Lcom/google/android/gms/internal/ads/zzdkm;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzdsr:Lcom/google/android/gms/internal/ads/zzvk;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzbum:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdjs;->executor:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzgyt:Lcom/google/android/gms/internal/ads/zzvw;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzhex:Lcom/google/android/gms/internal/ads/zzdpq;

    return-void
.end method


# virtual methods
.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjs;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final zzaua()Lcom/google/android/gms/internal/ads/zzdpq;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzhex:Lcom/google/android/gms/internal/ads/zzdpq;

    return-object v0
.end method

.method public final zzaub()Lcom/google/android/gms/internal/ads/zzdqb;
    .locals 9

    .line 12
    new-instance v8, Lcom/google/android/gms/internal/ads/zzdjs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzhev:Lcom/google/android/gms/internal/ads/zzdkn;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzhew:Lcom/google/android/gms/internal/ads/zzdkm;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzdsr:Lcom/google/android/gms/internal/ads/zzvk;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzbum:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdjs;->executor:Ljava/util/concurrent/Executor;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzgyt:Lcom/google/android/gms/internal/ads/zzvw;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzdjs;->zzhex:Lcom/google/android/gms/internal/ads/zzdpq;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzdjs;-><init>(Lcom/google/android/gms/internal/ads/zzdkn;Lcom/google/android/gms/internal/ads/zzdkm;Lcom/google/android/gms/internal/ads/zzvk;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzvw;Lcom/google/android/gms/internal/ads/zzdpq;)V

    return-object v8
.end method
