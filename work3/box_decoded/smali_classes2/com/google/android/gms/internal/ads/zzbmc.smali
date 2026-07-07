.class public final Lcom/google/android/gms/internal/ads/zzbmc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzepf<",
        "Landroid/view/ViewGroup;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfta:Lcom/google/android/gms/internal/ads/zzblz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzblz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmc;->zzfta:Lcom/google/android/gms/internal/ads/zzblz;

    return-void
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzblz;)Lcom/google/android/gms/internal/ads/zzbmc;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbmc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbmc;-><init>(Lcom/google/android/gms/internal/ads/zzblz;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmc;->zzfta:Lcom/google/android/gms/internal/ads/zzblz;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzblz;->zzajg()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method
