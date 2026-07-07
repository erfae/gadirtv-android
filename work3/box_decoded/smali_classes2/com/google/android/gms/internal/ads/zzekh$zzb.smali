.class public abstract Lcom/google/android/gms/internal/ads/zzekh$zzb;
.super Lcom/google/android/gms/internal/ads/zzekh;
.source "com.google.android.gms:play-services-gass@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzelu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzekh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/gms/internal/ads/zzekh$zzb<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzekh<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/gms/internal/ads/zzelu;"
    }
.end annotation


# instance fields
.field protected zzinr:Lcom/google/android/gms/internal/ads/zzejx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzejx<",
            "Lcom/google/android/gms/internal/ads/zzekh$zze;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzekh;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzejx;->zzbhg()Lcom/google/android/gms/internal/ads/zzejx;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzekh$zzb;->zzinr:Lcom/google/android/gms/internal/ads/zzejx;

    return-void
.end method


# virtual methods
.method final zzbif()Lcom/google/android/gms/internal/ads/zzejx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzejx<",
            "Lcom/google/android/gms/internal/ads/zzekh$zze;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekh$zzb;->zzinr:Lcom/google/android/gms/internal/ads/zzejx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejx;->isImmutable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekh$zzb;->zzinr:Lcom/google/android/gms/internal/ads/zzejx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzejx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzekh$zzb;->zzinr:Lcom/google/android/gms/internal/ads/zzejx;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzekh$zzb;->zzinr:Lcom/google/android/gms/internal/ads/zzejx;

    return-object v0
.end method
