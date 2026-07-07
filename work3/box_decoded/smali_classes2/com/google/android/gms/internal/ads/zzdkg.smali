.class final Lcom/google/android/gms/internal/ads/zzdkg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdvm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzdvm<",
        "Lcom/google/android/gms/internal/ads/zzatl;",
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
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkg;->zzhfi:Lcom/google/android/gms/internal/ads/zzdkf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzatl;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdkg;->zzhfi:Lcom/google/android/gms/internal/ads/zzdkf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdkj;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdps;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzatl;->zzdwb:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/ads/zzdps;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzdkj;-><init>(Lcom/google/android/gms/internal/ads/zzatl;Lcom/google/android/gms/internal/ads/zzdpq;Lcom/google/android/gms/internal/ads/zzdkh;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdkf;->zza(Lcom/google/android/gms/internal/ads/zzdkf;Lcom/google/android/gms/internal/ads/zzdkj;)Lcom/google/android/gms/internal/ads/zzdkj;

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdkg;->zzhfi:Lcom/google/android/gms/internal/ads/zzdkf;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdkf;->zzb(Lcom/google/android/gms/internal/ads/zzdkf;)Lcom/google/android/gms/internal/ads/zzdkj;

    move-result-object p1

    return-object p1
.end method
