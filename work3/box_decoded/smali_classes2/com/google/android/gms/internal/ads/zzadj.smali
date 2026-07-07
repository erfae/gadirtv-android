.class public final Lcom/google/android/gms/internal/ads/zzadj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.5.0"


# static fields
.field private static zzddn:Lcom/google/android/gms/internal/ads/zzacn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacn<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzddo:Lcom/google/android/gms/internal/ads/zzacn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacn<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static zzddp:Lcom/google/android/gms/internal/ads/zzacn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacn<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gads:native:engine_js_url_with_protocol"

    const-string v1, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/native_ads.js"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzacn;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzacn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzadj;->zzddn:Lcom/google/android/gms/internal/ads/zzacn;

    const-string v0, "gads:sdk_core_location"

    const-string v1, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/sdk-core-v40-loader.html"

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzacn;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzacn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzadj;->zzddo:Lcom/google/android/gms/internal/ads/zzacn;

    const-string v0, "gads:sdk_core_js_location"

    const-string v1, "https://googleads.g.doubleclick.net/mads/static/mad/sdk/native/production/sdk-core-v40-impl.js"

    .line 6
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzacn;->zzi(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzacn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzadj;->zzddp:Lcom/google/android/gms/internal/ads/zzacn;

    return-void
.end method
