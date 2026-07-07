.class final synthetic Lcom/google/android/gms/internal/ads/zzddi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzhae:Lcom/google/android/gms/internal/ads/zzddj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzddj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddi;->zzhae:Lcom/google/android/gms/internal/ads/zzddj;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddi;->zzhae:Lcom/google/android/gms/internal/ads/zzddj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzddj;->zzasv()Lcom/google/android/gms/internal/ads/zzddg;

    move-result-object v0

    return-object v0
.end method
