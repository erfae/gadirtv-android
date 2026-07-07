.class final Lcom/google/android/gms/internal/ads/zzbpe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyo<",
        "Lcom/google/android/gms/internal/ads/zzatl;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfvy:Lcom/google/android/gms/internal/ads/zzboz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzboz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpe;->zzfvy:Lcom/google/android/gms/internal/ads/zzboz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzatl;

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpe;->zzfvy:Lcom/google/android/gms/internal/ads/zzboz;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzboz;->zza(Lcom/google/android/gms/internal/ads/zzboz;)Lcom/google/android/gms/internal/ads/zzbwd;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbwd;->zzbf(Z)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbpe;->zzfvy:Lcom/google/android/gms/internal/ads/zzboz;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzboz;->zza(Lcom/google/android/gms/internal/ads/zzboz;)Lcom/google/android/gms/internal/ads/zzbwd;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbwd;->zzbf(Z)V

    return-void
.end method
