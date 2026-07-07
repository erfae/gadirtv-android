.class final synthetic Lcom/google/android/gms/internal/ads/zzdas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzgys:Lcom/google/android/gms/internal/ads/zzdat;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdas;->zzgys:Lcom/google/android/gms/internal/ads/zzdat;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdas;->zzgys:Lcom/google/android/gms/internal/ads/zzdat;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdat;->zzaso()Lcom/google/android/gms/internal/ads/zzdar;

    move-result-object v0

    return-object v0
.end method
