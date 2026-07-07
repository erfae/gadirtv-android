.class public Lcom/google/android/gms/internal/ads/zzbmh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final view:Landroid/view/View;

.field private final zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

.field private final zzfrz:Lcom/google/android/gms/internal/ads/zzdmx;

.field private final zzftc:Lcom/google/android/gms/internal/ads/zzbnz;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbdv;Lcom/google/android/gms/internal/ads/zzbnz;Lcom/google/android/gms/internal/ads/zzdmx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmh;->view:Landroid/view/View;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbmh;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbmh;->zzftc:Lcom/google/android/gms/internal/ads/zzbnz;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbmh;->zzfrz:Lcom/google/android/gms/internal/ads/zzdmx;

    return-void
.end method


# virtual methods
.method public zza(Ljava/util/Set;)Lcom/google/android/gms/internal/ads/zzbte;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/zzbxy<",
            "Lcom/google/android/gms/internal/ads/zzbtj;",
            ">;>;)",
            "Lcom/google/android/gms/internal/ads/zzbte;"
        }
    .end annotation

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbte;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzbte;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public final zzaim()Lcom/google/android/gms/internal/ads/zzbdv;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmh;->zzdii:Lcom/google/android/gms/internal/ads/zzbdv;

    return-object v0
.end method

.method public final zzaiz()Landroid/view/View;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmh;->view:Landroid/view/View;

    return-object v0
.end method

.method public final zzajl()Lcom/google/android/gms/internal/ads/zzbnz;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmh;->zzftc:Lcom/google/android/gms/internal/ads/zzbnz;

    return-object v0
.end method

.method public final zzajm()Lcom/google/android/gms/internal/ads/zzdmx;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmh;->zzfrz:Lcom/google/android/gms/internal/ads/zzdmx;

    return-object v0
.end method
