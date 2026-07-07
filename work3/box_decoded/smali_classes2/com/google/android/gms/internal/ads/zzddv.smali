.class final synthetic Lcom/google/android/gms/internal/ads/zzddv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzhaj:Lcom/google/android/gms/internal/ads/zzdds;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdds;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzddv;->zzhaj:Lcom/google/android/gms/internal/ads/zzdds;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzddv;->zzhaj:Lcom/google/android/gms/internal/ads/zzdds;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdds;->zzasx()Lcom/google/android/gms/internal/ads/zzddt;

    move-result-object v0

    return-object v0
.end method
