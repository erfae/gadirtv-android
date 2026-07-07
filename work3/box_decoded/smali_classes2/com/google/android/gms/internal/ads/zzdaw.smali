.class final synthetic Lcom/google/android/gms/internal/ads/zzdaw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgyv:Lcom/google/android/gms/internal/ads/zzdax;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdax;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzgyv:Lcom/google/android/gms/internal/ads/zzdax;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdaw;->zzgyv:Lcom/google/android/gms/internal/ads/zzdax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdax;->zzasp()Lcom/google/android/gms/internal/ads/zzdau;

    move-result-object v0

    return-object v0
.end method
