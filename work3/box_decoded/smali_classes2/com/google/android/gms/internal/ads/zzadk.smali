.class public final Lcom/google/android/gms/internal/ads/zzadk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.5.0"


# static fields
.field private static zzddq:Lcom/google/android/gms/internal/ads/zzacn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacn<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static zzddr:Lcom/google/android/gms/internal/ads/zzacn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacn<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static zzdds:Lcom/google/android/gms/internal/ads/zzacn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacn<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "gads:ad_loader:timeout_ms"

    const-wide/32 v1, 0xea60

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzacn;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzacn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzadk;->zzddq:Lcom/google/android/gms/internal/ads/zzacn;

    const-string v0, "gads:rendering:timeout_ms"

    .line 4
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzacn;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzacn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzadk;->zzddr:Lcom/google/android/gms/internal/ads/zzacn;

    const-string v0, "gads:resolve_future:default_timeout_ms"

    const-wide/16 v1, 0x7530

    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzacn;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzacn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzadk;->zzdds:Lcom/google/android/gms/internal/ads/zzacn;

    return-void
.end method
