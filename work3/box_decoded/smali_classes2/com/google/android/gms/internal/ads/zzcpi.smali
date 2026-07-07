.class public final Lcom/google/android/gms/internal/ads/zzcpi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# static fields
.field public static final zzgol:Lcom/google/android/gms/internal/ads/zzame;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzame<",
            "Lcom/google/android/gms/internal/ads/zzcpi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzgoh:Lcom/google/android/gms/internal/ads/zzatr;

.field public final zzgoi:Lorg/json/JSONObject;

.field public final zzgok:Lcom/google/android/gms/internal/ads/zzcpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcph;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcph;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcpi;->zzgol:Lcom/google/android/gms/internal/ads/zzame;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcpl;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzatr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcpi;->zzgok:Lcom/google/android/gms/internal/ads/zzcpl;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcpi;->zzgoi:Lorg/json/JSONObject;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcpi;->zzgoh:Lcom/google/android/gms/internal/ads/zzatr;

    return-void
.end method
