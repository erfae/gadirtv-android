.class public final Lcom/google/android/gms/internal/ads/zzbrh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzepf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzepf<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzfxl:Lcom/google/android/gms/internal/ads/zzbrg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbrg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrh;->zzfxl:Lcom/google/android/gms/internal/ads/zzbrg;

    return-void
.end method

.method public static zzh(Lcom/google/android/gms/internal/ads/zzbrg;)Lcom/google/android/gms/internal/ads/zzbrh;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbrh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbrh;-><init>(Lcom/google/android/gms/internal/ads/zzbrg;)V

    return-object v0
.end method

.method public static zzi(Lcom/google/android/gms/internal/ads/zzbrg;)Ljava/lang/String;
    .locals 0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzbrg;->zzakw()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrh;->zzfxl:Lcom/google/android/gms/internal/ads/zzbrg;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbrg;->zzakw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
