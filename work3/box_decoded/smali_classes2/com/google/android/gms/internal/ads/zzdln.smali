.class final synthetic Lcom/google/android/gms/internal/ads/zzdln;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdka;


# static fields
.field static final zzgwb:Lcom/google/android/gms/internal/ads/zzdka;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdln;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdln;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdln;->zzgwb:Lcom/google/android/gms/internal/ads/zzdka;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaup;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaup;->onRewardedVideoCompleted()V

    return-void
.end method
