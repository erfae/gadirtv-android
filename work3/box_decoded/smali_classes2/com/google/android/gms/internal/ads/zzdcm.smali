.class final synthetic Lcom/google/android/gms/internal/ads/zzdcm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgzu:Lcom/google/android/gms/internal/ads/zzdcn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdcn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdcm;->zzgzu:Lcom/google/android/gms/internal/ads/zzdcn;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdcm;->zzgzu:Lcom/google/android/gms/internal/ads/zzdcn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdcn;->zzast()Lcom/google/android/gms/internal/ads/zzdco;

    move-result-object v0

    return-object v0
.end method
