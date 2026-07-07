.class final Lcom/google/android/gms/internal/ads/zzaqi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic zzdof:Lcom/google/android/gms/internal/ads/zzaqj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaqj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zzdof:Lcom/google/android/gms/internal/ads/zzaqj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zzdof:Lcom/google/android/gms/internal/ads/zzaqj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzaqj;->createIntent()Landroid/content/Intent;

    move-result-object p1

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzp;->zzkq()Lcom/google/android/gms/ads/internal/util/zzm;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqi;->zzdof:Lcom/google/android/gms/internal/ads/zzaqj;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaqj;->zza(Lcom/google/android/gms/internal/ads/zzaqj;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzm;->zza(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
