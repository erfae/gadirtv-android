.class final synthetic Lcom/google/android/gms/internal/ads/zzcdc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgeh:Lcom/google/android/gms/internal/ads/zzcda;

.field private final zzgeo:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcda;Landroid/view/ViewGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcdc;->zzgeh:Lcom/google/android/gms/internal/ads/zzcda;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcdc;->zzgeo:Landroid/view/ViewGroup;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcdc;->zzgeh:Lcom/google/android/gms/internal/ads/zzcda;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcdc;->zzgeo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcda;->zzb(Landroid/view/ViewGroup;)V

    return-void
.end method
