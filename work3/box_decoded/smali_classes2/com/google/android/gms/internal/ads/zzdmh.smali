.class final synthetic Lcom/google/android/gms/internal/ads/zzdmh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgvz:Lcom/google/android/gms/internal/ads/zzve;

.field private final zzhgd:Lcom/google/android/gms/internal/ads/zzdmf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdmf;Lcom/google/android/gms/internal/ads/zzve;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzhgd:Lcom/google/android/gms/internal/ads/zzdmf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzgvz:Lcom/google/android/gms/internal/ads/zzve;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzhgd:Lcom/google/android/gms/internal/ads/zzdmf;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdmh;->zzgvz:Lcom/google/android/gms/internal/ads/zzve;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmf;->zzhgf:Lcom/google/android/gms/internal/ads/zzdma;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdma;->zza(Lcom/google/android/gms/internal/ads/zzdma;)Lcom/google/android/gms/internal/ads/zzdlf;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzdlf;->zzk(Lcom/google/android/gms/internal/ads/zzve;)V

    return-void
.end method
