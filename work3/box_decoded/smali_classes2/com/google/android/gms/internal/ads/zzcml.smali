.class final synthetic Lcom/google/android/gms/internal/ads/zzcml;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzckm:Landroid/content/Context;

.field private final zzgmj:Lcom/google/android/gms/internal/ads/zzef;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzef;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcml;->zzgmj:Lcom/google/android/gms/internal/ads/zzef;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcml;->zzckm:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcml;->zzgmj:Lcom/google/android/gms/internal/ads/zzef;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcml;->zzckm:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzca()Lcom/google/android/gms/internal/ads/zzdv;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdv;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
