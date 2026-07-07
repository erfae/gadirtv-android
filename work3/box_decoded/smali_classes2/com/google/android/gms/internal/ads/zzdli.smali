.class final synthetic Lcom/google/android/gms/internal/ads/zzdli;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdka;


# instance fields
.field private final zzdgt:Ljava/lang/String;

.field private final zzdha:Ljava/lang/String;

.field private final zzfxx:Lcom/google/android/gms/internal/ads/zzauf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzauf;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdli;->zzfxx:Lcom/google/android/gms/internal/ads/zzauf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdli;->zzdha:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdli;->zzdgt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzq(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdli;->zzfxx:Lcom/google/android/gms/internal/ads/zzauf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdli;->zzdha:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdli;->zzdgt:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzavq;

    .line 2
    new-instance v3, Lcom/google/android/gms/internal/ads/zzawd;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzauf;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzauf;->getAmount()I

    move-result v0

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzawd;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-interface {p1, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzavq;->zza(Lcom/google/android/gms/internal/ads/zzavc;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
