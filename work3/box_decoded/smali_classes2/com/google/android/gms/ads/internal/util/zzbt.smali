.class public final Lcom/google/android/gms/ads/internal/util/zzbt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# static fields
.field private static zzefj:Lcom/google/android/gms/ads/internal/util/zzbt;


# instance fields
.field zzefk:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzyy()Lcom/google/android/gms/ads/internal/util/zzbt;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzbt;->zzefj:Lcom/google/android/gms/ads/internal/util/zzbt;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/ads/internal/util/zzbt;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/util/zzbt;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/util/zzbt;->zzefj:Lcom/google/android/gms/ads/internal/util/zzbt;

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzbt;->zzefj:Lcom/google/android/gms/ads/internal/util/zzbt;

    return-object v0
.end method
