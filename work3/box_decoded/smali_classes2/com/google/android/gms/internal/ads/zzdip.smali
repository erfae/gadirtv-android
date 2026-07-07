.class final synthetic Lcom/google/android/gms/internal/ads/zzdip;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgvz:Lcom/google/android/gms/internal/ads/zzve;

.field private final zzhdr:Lcom/google/android/gms/internal/ads/zzdim;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdim;Lcom/google/android/gms/internal/ads/zzve;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdip;->zzhdr:Lcom/google/android/gms/internal/ads/zzdim;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdip;->zzgvz:Lcom/google/android/gms/internal/ads/zzve;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdip;->zzhdr:Lcom/google/android/gms/internal/ads/zzdim;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdip;->zzgvz:Lcom/google/android/gms/internal/ads/zzve;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdim;->zzhdq:Lcom/google/android/gms/internal/ads/zzdil;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdil;->zza(Lcom/google/android/gms/internal/ads/zzdil;)Lcom/google/android/gms/internal/ads/zzdir;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdir;->zzk(Lcom/google/android/gms/internal/ads/zzve;)V

    return-void
.end method
