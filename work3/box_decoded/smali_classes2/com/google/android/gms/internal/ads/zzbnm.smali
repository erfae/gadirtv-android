.class final synthetic Lcom/google/android/gms/internal/ads/zzbnm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzfow:Ljava/lang/Runnable;

.field private final zzfuc:Lcom/google/android/gms/internal/ads/zzbnk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbnk;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfuc:Lcom/google/android/gms/internal/ads/zzbnk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfow:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfuc:Lcom/google/android/gms/internal/ads/zzbnk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbnk;->zze(Ljava/lang/Runnable;)V

    return-void
.end method
