.class final Lcom/google/android/gms/internal/ads/zzdxo$zze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzdxo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final future:Lcom/google/android/gms/internal/ads/zzdyz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "+TV;>;"
        }
    .end annotation
.end field

.field final zzhwi:Lcom/google/android/gms/internal/ads/zzdxo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzdxo<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdxo;Lcom/google/android/gms/internal/ads/zzdyz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdxo<",
            "TV;>;",
            "Lcom/google/android/gms/internal/ads/zzdyz<",
            "+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxo$zze;->zzhwi:Lcom/google/android/gms/internal/ads/zzdxo;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxo$zze;->future:Lcom/google/android/gms/internal/ads/zzdyz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxo$zze;->zzhwi:Lcom/google/android/gms/internal/ads/zzdxo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdxo;->zzb(Lcom/google/android/gms/internal/ads/zzdxo;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxo$zze;->future:Lcom/google/android/gms/internal/ads/zzdyz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdxo;->zzf(Lcom/google/android/gms/internal/ads/zzdyz;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdxo;->zzazd()Lcom/google/android/gms/internal/ads/zzdxo$zza;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdxo$zze;->zzhwi:Lcom/google/android/gms/internal/ads/zzdxo;

    invoke-virtual {v1, v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzdxo$zza;->zza(Lcom/google/android/gms/internal/ads/zzdxo;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxo$zze;->zzhwi:Lcom/google/android/gms/internal/ads/zzdxo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdxo;->zzc(Lcom/google/android/gms/internal/ads/zzdxo;)V

    :cond_1
    return-void
.end method
