.class final Lcom/google/android/gms/internal/ads/zzehv;
.super Ljava/lang/ThreadLocal;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Ljavax/crypto/Mac;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzihs:Lcom/google/android/gms/internal/ads/zzehw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzehw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehv;->zzihs:Lcom/google/android/gms/internal/ads/zzehw;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method private final zzbfb()Ljavax/crypto/Mac;
    .locals 2

    .line 2
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzehh;->zzihe:Lcom/google/android/gms/internal/ads/zzehh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehv;->zzihs:Lcom/google/android/gms/internal/ads/zzehw;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzehw;->zza(Lcom/google/android/gms/internal/ads/zzehw;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzehh;->zzhq(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Mac;

    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzehv;->zzihs:Lcom/google/android/gms/internal/ads/zzehw;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzehw;->zzb(Lcom/google/android/gms/internal/ads/zzehw;)Ljava/security/Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzehv;->zzbfb()Ljavax/crypto/Mac;

    move-result-object v0

    return-object v0
.end method
