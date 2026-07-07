.class final synthetic Lcom/google/android/gms/internal/ads/zzcls;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzglj:Lcom/google/android/gms/internal/ads/zzclp;

.field private final zzglk:Lcom/google/android/gms/internal/ads/zzajc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzclp;Lcom/google/android/gms/internal/ads/zzajc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcls;->zzglj:Lcom/google/android/gms/internal/ads/zzclp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcls;->zzglk:Lcom/google/android/gms/internal/ads/zzajc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcls;->zzglj:Lcom/google/android/gms/internal/ads/zzclp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcls;->zzglk:Lcom/google/android/gms/internal/ads/zzajc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzclp;->zzc(Lcom/google/android/gms/internal/ads/zzajc;)V

    return-void
.end method
