.class final Lcom/google/android/gms/internal/ads/zzbqw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyo<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzfwu:Lcom/google/android/gms/internal/ads/zzbqu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbqu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqw;->zzfwu:Lcom/google/android/gms/internal/ads/zzbqu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 3
    check-cast p1, Ljava/lang/Boolean;

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbqw;->zzfwu:Lcom/google/android/gms/internal/ads/zzbqu;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbqu;->zza(Lcom/google/android/gms/internal/ads/zzbqu;)Lcom/google/android/gms/internal/ads/zzbsl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsl;->onAdImpression()V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
