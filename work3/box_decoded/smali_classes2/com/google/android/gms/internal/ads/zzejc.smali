.class final Lcom/google/android/gms/internal/ads/zzejc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.5.0"


# instance fields
.field private final buffer:[B

.field private final zzije:Lcom/google/android/gms/internal/ads/zzejo;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejc;->buffer:[B

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzejo;->zzv([B)Lcom/google/android/gms/internal/ads/zzejo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzejc;->zzije:Lcom/google/android/gms/internal/ads/zzejo;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzeix;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzejc;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzbfy()Lcom/google/android/gms/internal/ads/zzeiu;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejc;->zzije:Lcom/google/android/gms/internal/ads/zzejo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzejo;->zzbhb()V

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeje;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzejc;->buffer:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeje;-><init>([B)V

    return-object v0
.end method

.method public final zzbfz()Lcom/google/android/gms/internal/ads/zzejo;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzejc;->zzije:Lcom/google/android/gms/internal/ads/zzejo;

    return-object v0
.end method
