.class final synthetic Lcom/google/android/gms/internal/ads/zzclz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdha:Ljava/lang/String;

.field private final zzglr:Lcom/google/android/gms/internal/ads/zzcma;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcma;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzclz;->zzglr:Lcom/google/android/gms/internal/ads/zzcma;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzclz;->zzdha:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzclz;->zzglr:Lcom/google/android/gms/internal/ads/zzcma;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzclz;->zzdha:Ljava/lang/String;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcma;->zzgls:Lcom/google/android/gms/internal/ads/zzclp;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzclp;->zza(Lcom/google/android/gms/internal/ads/zzclp;Ljava/lang/String;)V

    return-void
.end method
