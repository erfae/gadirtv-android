.class public final Lcom/google/android/gms/internal/ads/zzcvu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcre;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcre<",
        "Lcom/google/android/gms/internal/ads/zzapo;",
        "Lcom/google/android/gms/internal/ads/zzcst;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgty:Lcom/google/android/gms/internal/ads/zzcwx;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcwx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvu;->zzgty:Lcom/google/android/gms/internal/ads/zzcwx;

    return-void
.end method


# virtual methods
.method public final zzf(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/zzcrb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzcrb<",
            "Lcom/google/android/gms/internal/ads/zzapo;",
            "Lcom/google/android/gms/internal/ads/zzcst;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdnr;
        }
    .end annotation

    .line 4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvu;->zzgty:Lcom/google/android/gms/internal/ads/zzcwx;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcwx;->zzgm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzapo;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 7
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcst;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcst;-><init>()V

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcrb;

    invoke-direct {v1, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzcrb;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbtc;Ljava/lang/String;)V

    return-object v1
.end method
