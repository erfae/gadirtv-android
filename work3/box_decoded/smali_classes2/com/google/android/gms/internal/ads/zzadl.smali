.class public final Lcom/google/android/gms/internal/ads/zzadl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.5.0"


# static fields
.field public static zzddt:Lcom/google/android/gms/internal/ads/zzacn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzacn<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "gads:signals_collection_on_service:enabled"

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzacn;->zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzacn;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzadl;->zzddt:Lcom/google/android/gms/internal/ads/zzacn;

    return-void
.end method
