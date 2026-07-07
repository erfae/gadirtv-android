.class final synthetic Lcom/google/android/gms/internal/ads/zzcyw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgvz:Lcom/google/android/gms/internal/ads/zzve;

.field private final zzgxb:Lcom/google/android/gms/internal/ads/zzcyu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcyu;Lcom/google/android/gms/internal/ads/zzve;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcyw;->zzgxb:Lcom/google/android/gms/internal/ads/zzcyu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcyw;->zzgvz:Lcom/google/android/gms/internal/ads/zzve;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcyw;->zzgxb:Lcom/google/android/gms/internal/ads/zzcyu;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcyw;->zzgvz:Lcom/google/android/gms/internal/ads/zzve;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcyu;->zzgxe:Lcom/google/android/gms/internal/ads/zzcyp;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcyp;->zza(Lcom/google/android/gms/internal/ads/zzcyp;)Lcom/google/android/gms/internal/ads/zzcyj;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcyj;->zzasd()Lcom/google/android/gms/internal/ads/zzbrz;

    move-result-object v0

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbrz;->zzk(Lcom/google/android/gms/internal/ads/zzve;)V

    return-void
.end method
