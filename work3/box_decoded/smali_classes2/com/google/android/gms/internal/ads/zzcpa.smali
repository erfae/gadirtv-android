.class final synthetic Lcom/google/android/gms/internal/ads/zzcpa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzamf;


# static fields
.field static final zzdka:Lcom/google/android/gms/internal/ads/zzamf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcpa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcpa;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzcpa;->zzdka:Lcom/google/android/gms/internal/ads/zzamf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzatr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzatr;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method
