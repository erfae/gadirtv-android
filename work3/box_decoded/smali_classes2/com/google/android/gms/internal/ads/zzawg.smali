.class final synthetic Lcom/google/android/gms/internal/ads/zzawg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzdyk:Lcom/google/android/gms/internal/ads/zzawh;

.field private final zzdyl:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzawh;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzawg;->zzdyk:Lcom/google/android/gms/internal/ads/zzawh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzawg;->zzdyl:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzawg;->zzdyk:Lcom/google/android/gms/internal/ads/zzawh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzawg;->zzdyl:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzawh;->zza(Landroid/graphics/Bitmap;)V

    return-void
.end method
