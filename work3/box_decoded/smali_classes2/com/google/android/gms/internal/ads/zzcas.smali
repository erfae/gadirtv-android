.class public final Lcom/google/android/gms/internal/ads/zzcas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzepf<",
        "Lcom/google/android/gms/internal/ads/zzwt;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzgal:Lcom/google/android/gms/internal/ads/zzcap;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcas;->zzgal:Lcom/google/android/gms/internal/ads/zzcap;

    return-void
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcas;->zzgal:Lcom/google/android/gms/internal/ads/zzcap;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcap;->zzamk()Lcom/google/android/gms/internal/ads/zzwt;

    move-result-object v0

    return-object v0
.end method
