.class public final Lcom/google/android/gms/internal/ads/zzcnt;
.super Lcom/google/android/gms/internal/ads/zzate;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final synthetic zzgne:Lcom/google/android/gms/internal/ads/zzcnu;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/zzcnu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzgne:Lcom/google/android/gms/internal/ads/zzcnu;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzate;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/util/zzap;)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzgne:Lcom/google/android/gms/internal/ads/zzcnu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcnu;->zzdkm:Lcom/google/android/gms/internal/ads/zzazq;

    .line 5
    new-instance v1, Lcom/google/android/gms/ads/internal/util/zzas;

    iget-object v2, p1, Lcom/google/android/gms/ads/internal/util/zzap;->zzacm:Ljava/lang/String;

    iget p1, p1, Lcom/google/android/gms/ads/internal/util/zzap;->errorCode:I

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/ads/internal/util/zzas;-><init>(Ljava/lang/String;I)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzazq;->setException(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public final zzb(Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzgne:Lcom/google/android/gms/internal/ads/zzcnu;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcnu;->zzdkm:Lcom/google/android/gms/internal/ads/zzazq;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzazq;->set(Ljava/lang/Object;)Z

    return-void
.end method
