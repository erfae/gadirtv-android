.class final synthetic Lcom/google/android/gms/internal/ads/zzbat;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzejb:Lcom/google/android/gms/internal/ads/zzbar;

.field private final zzejc:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbar;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzejb:Lcom/google/android/gms/internal/ads/zzbar;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzejc:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzejb:Lcom/google/android/gms/internal/ads/zzbar;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbat;->zzejc:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbar;->zzat(Z)V

    return-void
.end method
