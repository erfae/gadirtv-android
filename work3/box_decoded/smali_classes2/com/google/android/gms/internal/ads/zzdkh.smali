.class final Lcom/google/android/gms/internal/ads/zzdkh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdvm<",
        "Lcom/google/android/gms/internal/ads/zzcoh;",
        "Lcom/google/android/gms/internal/ads/zzdkj;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzhfi:Lcom/google/android/gms/internal/ads/zzdkf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdkf;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkh;->zzhfi:Lcom/google/android/gms/internal/ads/zzdkf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcoh;

    const-string v0, ""

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaza;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "Failed to get a cache key, reverting to legacy flow."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzee(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkh;->zzhfi:Lcom/google/android/gms/internal/ads/zzdkf;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdkj;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdkf;->zza(Lcom/google/android/gms/internal/ads/zzdkf;)Lcom/google/android/gms/internal/ads/zzdpq;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Lcom/google/android/gms/internal/ads/zzdkj;-><init>(Lcom/google/android/gms/internal/ads/zzatl;Lcom/google/android/gms/internal/ads/zzdpq;Lcom/google/android/gms/internal/ads/zzdkh;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzdkf;->zza(Lcom/google/android/gms/internal/ads/zzdkf;Lcom/google/android/gms/internal/ads/zzdkj;)Lcom/google/android/gms/internal/ads/zzdkj;

    .line 7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkh;->zzhfi:Lcom/google/android/gms/internal/ads/zzdkf;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdkf;->zzb(Lcom/google/android/gms/internal/ads/zzdkf;)Lcom/google/android/gms/internal/ads/zzdkj;

    move-result-object p1

    return-object p1
.end method
