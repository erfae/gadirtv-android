.class public final Lcom/google/android/gms/internal/ads/zzckq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final executor:Ljava/util/concurrent/Executor;

.field private final zzgke:Lcom/google/android/gms/internal/ads/zzckv;

.field private final zzgki:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzckv;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckq;->zzgke:Lcom/google/android/gms/internal/ads/zzckv;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzckv;->zzaqh()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckq;->zzgki:Ljava/util/Map;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckq;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzckq;)Ljava/util/Map;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzckq;->zzgki:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/ads/zzckq;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 8
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzckq;->executor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/ads/zzckq;)Lcom/google/android/gms/internal/ads/zzckv;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzckq;->zzgke:Lcom/google/android/gms/internal/ads/zzckv;

    return-object p0
.end method


# virtual methods
.method public final zzaqg()Lcom/google/android/gms/internal/ads/zzckp;
    .locals 1

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzckp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzckp;-><init>(Lcom/google/android/gms/internal/ads/zzckq;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzckp;->zzb(Lcom/google/android/gms/internal/ads/zzckp;)Lcom/google/android/gms/internal/ads/zzckp;

    move-result-object v0

    return-object v0
.end method
