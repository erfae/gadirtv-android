.class final synthetic Lcom/google/android/gms/internal/ads/zzakv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbfi;


# instance fields
.field private final zzdin:Lcom/google/android/gms/internal/ads/zzakr;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzakr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzakv;->zzdin:Lcom/google/android/gms/internal/ads/zzakr;

    return-void
.end method

.method static zzb(Lcom/google/android/gms/internal/ads/zzakr;)Lcom/google/android/gms/internal/ads/zzbfi;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzakv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzakv;-><init>(Lcom/google/android/gms/internal/ads/zzakr;)V

    return-object v0
.end method


# virtual methods
.method public final zztu()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzakv;->zzdin:Lcom/google/android/gms/internal/ads/zzakr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzakr;->zztt()V

    return-void
.end method
