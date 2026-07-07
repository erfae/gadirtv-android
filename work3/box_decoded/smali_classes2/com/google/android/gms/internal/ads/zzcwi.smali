.class public final Lcom/google/android/gms/internal/ads/zzcwi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/zzg;


# instance fields
.field private final zzfte:Lcom/google/android/gms/internal/ads/zzbyc;

.field private final zzgar:Lcom/google/android/gms/internal/ads/zzbsl;

.field private final zzgas:Lcom/google/android/gms/internal/ads/zzbrt;

.field private final zzgat:Lcom/google/android/gms/internal/ads/zzbki;

.field private final zzgav:Lcom/google/android/gms/internal/ads/zzbxx;

.field private zzgun:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbrt;Lcom/google/android/gms/internal/ads/zzbsl;Lcom/google/android/gms/internal/ads/zzbyc;Lcom/google/android/gms/internal/ads/zzbxx;Lcom/google/android/gms/internal/ads/zzbki;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzgun:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzgas:Lcom/google/android/gms/internal/ads/zzbrt;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzgar:Lcom/google/android/gms/internal/ads/zzbsl;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzfte:Lcom/google/android/gms/internal/ads/zzbyc;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzgav:Lcom/google/android/gms/internal/ads/zzbxx;

    .line 7
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzgat:Lcom/google/android/gms/internal/ads/zzbki;

    return-void
.end method


# virtual methods
.method public final declared-synchronized zzh(Landroid/view/View;)V
    .locals 3

    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzgun:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzgat:Lcom/google/android/gms/internal/ads/zzbki;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbki;->onAdImpression()V

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzgav:Lcom/google/android/gms/internal/ads/zzbxx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbxx;->zzv(Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final zzkb()V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzgun:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzgas:Lcom/google/android/gms/internal/ads/zzbrt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbrt;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public final zzkc()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzgun:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzgar:Lcom/google/android/gms/internal/ads/zzbsl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbsl;->onAdImpression()V

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwi;->zzfte:Lcom/google/android/gms/internal/ads/zzbyc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbyc;->zzalx()V

    :cond_0
    return-void
.end method
