.class final Lcom/google/android/gms/internal/ads/zzemj;
.super Lcom/google/android/gms/internal/ads/zzeiz;
.source "com.google.android.gms:play-services-gass@@19.5.0"


# instance fields
.field private final zziqq:Lcom/google/android/gms/internal/ads/zzeml;

.field private zziqr:Lcom/google/android/gms/internal/ads/zzejd;

.field private final synthetic zziqs:Lcom/google/android/gms/internal/ads/zzemk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzemk;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemj;->zziqs:Lcom/google/android/gms/internal/ads/zzemk;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzeiz;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeml;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzeml;-><init>(Lcom/google/android/gms/internal/ads/zzeiu;Lcom/google/android/gms/internal/ads/zzemj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzemj;->zziqq:Lcom/google/android/gms/internal/ads/zzeml;

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzemj;->zzbjq()Lcom/google/android/gms/internal/ads/zzejd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemj;->zziqr:Lcom/google/android/gms/internal/ads/zzejd;

    return-void
.end method

.method private final zzbjq()Lcom/google/android/gms/internal/ads/zzejd;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemj;->zziqq:Lcom/google/android/gms/internal/ads/zzeml;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeml;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemj;->zziqq:Lcom/google/android/gms/internal/ads/zzeml;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeml;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzejf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeiu;->iterator()Ljava/util/Iterator;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzejd;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemj;->zziqr:Lcom/google/android/gms/internal/ads/zzejd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final nextByte()B
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemj;->zziqr:Lcom/google/android/gms/internal/ads/zzejd;

    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzejd;->nextByte()B

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemj;->zziqr:Lcom/google/android/gms/internal/ads/zzejd;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzejd;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzemj;->zzbjq()Lcom/google/android/gms/internal/ads/zzejd;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzemj;->zziqr:Lcom/google/android/gms/internal/ads/zzejd;

    :cond_0
    return v0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
