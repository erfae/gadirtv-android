.class public final Lcom/google/android/gms/internal/ads/zzbzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzepf<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfzx:Lcom/google/android/gms/internal/ads/zzbzc;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbzc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbzg;->zzfzx:Lcom/google/android/gms/internal/ads/zzbzc;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzbzc;)Lcom/google/android/gms/internal/ads/zzbzg;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbzg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbzg;-><init>(Lcom/google/android/gms/internal/ads/zzbzc;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbzg;->zzfzx:Lcom/google/android/gms/internal/ads/zzbzc;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzc;->zzamd()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
