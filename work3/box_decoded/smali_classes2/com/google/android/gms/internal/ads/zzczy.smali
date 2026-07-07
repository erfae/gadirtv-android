.class final synthetic Lcom/google/android/gms/internal/ads/zzczy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgyc:Lcom/google/android/gms/internal/ads/zzczz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzczz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzczy;->zzgyc:Lcom/google/android/gms/internal/ads/zzczz;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzczy;->zzgyc:Lcom/google/android/gms/internal/ads/zzczz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzczz;->zzasn()Lcom/google/android/gms/internal/ads/zzczw;

    move-result-object v0

    return-object v0
.end method
