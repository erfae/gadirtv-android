.class final Lcom/google/android/gms/internal/ads/zzemw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.5.0"


# static fields
.field private static final zzirt:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final zziru:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzemv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzemv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzemw;->zzirt:Ljava/util/Iterator;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzemy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzemy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzemw;->zziru:Ljava/lang/Iterable;

    return-void
.end method

.method static zzbkd()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzemw;->zziru:Ljava/lang/Iterable;

    return-object v0
.end method

.method static synthetic zzbke()Ljava/util/Iterator;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzemw;->zzirt:Ljava/util/Iterator;

    return-object v0
.end method
