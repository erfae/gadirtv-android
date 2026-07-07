.class final Lcom/google/android/gms/internal/ads/zzcem;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdvm<",
        "Lcom/google/android/gms/internal/ads/zzy;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgfv:D

.field private final synthetic zzgfw:Z

.field private final synthetic zzgfx:Lcom/google/android/gms/internal/ads/zzcej;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcej;DZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzgfx:Lcom/google/android/gms/internal/ads/zzcej;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzgfv:D

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzgfw:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzy;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzgfx:Lcom/google/android/gms/internal/ads/zzcej;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzy;->data:[B

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzgfv:D

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzcem;->zzgfw:Z

    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcej;->zza(Lcom/google/android/gms/internal/ads/zzcej;[BDZ)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method
