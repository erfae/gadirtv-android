.class final Lcom/google/android/gms/ads/internal/util/zzbx;
.super Landroid/content/BroadcastReceiver;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final synthetic zzefm:Lcom/google/android/gms/ads/internal/util/zzby;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzby;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzbx;->zzefm:Lcom/google/android/gms/ads/internal/util/zzby;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzbx;->zzefm:Lcom/google/android/gms/ads/internal/util/zzby;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzby;->zza(Lcom/google/android/gms/ads/internal/util/zzby;Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
