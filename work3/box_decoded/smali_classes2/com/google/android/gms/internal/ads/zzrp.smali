.class final Lcom/google/android/gms/internal/ads/zzrp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzbtp:Lcom/google/android/gms/internal/ads/zzrm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzrm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzbtp:Lcom/google/android/gms/internal/ads/zzrm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 4

    .line 2
    check-cast p1, Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzbtp:Lcom/google/android/gms/internal/ads/zzrm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrm;->zzbtl:Lcom/google/android/gms/internal/ads/zzrk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzbtp:Lcom/google/android/gms/internal/ads/zzrm;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzrm;->zzbti:Lcom/google/android/gms/internal/ads/zzre;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzbtp:Lcom/google/android/gms/internal/ads/zzrm;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzrm;->zzbtj:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzrp;->zzbtp:Lcom/google/android/gms/internal/ads/zzrm;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/ads/zzrm;->zzbtk:Z

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzrk;->zza(Lcom/google/android/gms/internal/ads/zzre;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method
