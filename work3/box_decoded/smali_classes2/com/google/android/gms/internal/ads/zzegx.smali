.class public final Lcom/google/android/gms/internal/ads/zzegx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdzx;


# static fields
.field private static final zziac:[B


# instance fields
.field private final zzigi:Ljava/security/interfaces/ECPrivateKey;

.field private final zzigj:Lcom/google/android/gms/internal/ads/zzegz;

.field private final zzigk:Ljava/lang/String;

.field private final zzigl:[B

.field private final zzigm:Lcom/google/android/gms/internal/ads/zzehf;

.field private final zzign:Lcom/google/android/gms/internal/ads/zzegy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 9
    sput-object v0, Lcom/google/android/gms/internal/ads/zzegx;->zziac:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzehf;Lcom/google/android/gms/internal/ads/zzegy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegx;->zzigi:Ljava/security/interfaces/ECPrivateKey;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzegz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzegz;-><init>(Ljava/security/interfaces/ECPrivateKey;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzegx;->zzigj:Lcom/google/android/gms/internal/ads/zzegz;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegx;->zzigl:[B

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzegx;->zzigk:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzegx;->zzigm:Lcom/google/android/gms/internal/ads/zzehf;

    .line 7
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzegx;->zzign:Lcom/google/android/gms/internal/ads/zzegy;

    return-void
.end method
