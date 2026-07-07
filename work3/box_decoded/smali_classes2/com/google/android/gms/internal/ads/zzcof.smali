.class final Lcom/google/android/gms/internal/ads/zzcof;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdyo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdyo<",
        "Lcom/google/android/gms/internal/ads/zzdnj;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzgnt:Lcom/google/android/gms/internal/ads/zzcod;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcod;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzgnt:Lcom/google/android/gms/internal/ads/zzcod;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdnj;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcof;->zzgnt:Lcom/google/android/gms/internal/ads/zzcod;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcod;->zzb(Lcom/google/android/gms/internal/ads/zzcod;)Lcom/google/android/gms/internal/ads/zzbuh;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbuh;->zzb(Lcom/google/android/gms/internal/ads/zzdnj;)V

    return-void
.end method

.method public final zzb(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
