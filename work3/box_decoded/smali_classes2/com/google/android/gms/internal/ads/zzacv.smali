.class public final Lcom/google/android/gms/internal/ads/zzacv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.5.0"


# static fields
.field public static zzdbs:Lcom/google/android/gms/internal/ads/zzacn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacn<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdbt:Lcom/google/android/gms/internal/ads/zzacn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdbu:Lcom/google/android/gms/internal/ads/zzacn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacn<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdbv:Lcom/google/android/gms/internal/ads/zzacn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacn<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdbw:Lcom/google/android/gms/internal/ads/zzacn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacn<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static zzdbx:Lcom/google/android/gms/internal/ads/zzacn;
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
    .locals 5

    const-string v0, "gads:content_age_weight"

    const-wide/16 v1, 0x1

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzacn;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzacn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacv;->zzdbs:Lcom/google/android/gms/internal/ads/zzacn;

    const-string v0, "gads:enable_content_fetching"

    const/4 v3, 0x1

    .line 4
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzacn;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzacn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacv;->zzdbt:Lcom/google/android/gms/internal/ads/zzacn;

    const-string v0, "gads:fingerprint_number"

    const-wide/16 v3, 0xa

    .line 6
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzacn;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzacn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacv;->zzdbu:Lcom/google/android/gms/internal/ads/zzacn;

    const-string v0, "gads:content_length_weight"

    .line 8
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzacn;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzacn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacv;->zzdbv:Lcom/google/android/gms/internal/ads/zzacn;

    const-string v0, "gads:min_content_len"

    const-wide/16 v1, 0xb

    .line 10
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzacn;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzacn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacv;->zzdbw:Lcom/google/android/gms/internal/ads/zzacn;

    const-string v0, "gads:sleep_sec"

    .line 12
    invoke-static {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzacn;->zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzacn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzacv;->zzdbx:Lcom/google/android/gms/internal/ads/zzacn;

    return-void
.end method
