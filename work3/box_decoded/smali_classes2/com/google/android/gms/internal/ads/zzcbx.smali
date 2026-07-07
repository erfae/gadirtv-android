.class final synthetic Lcom/google/android/gms/internal/ads/zzcbx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzejc:Z

.field private final zzgch:Lcom/google/android/gms/internal/ads/zzcbt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcbt;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcbx;->zzgch:Lcom/google/android/gms/internal/ads/zzcbt;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcbx;->zzejc:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcbx;->zzgch:Lcom/google/android/gms/internal/ads/zzcbt;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcbx;->zzejc:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcbt;->zzbi(Z)V

    return-void
.end method
