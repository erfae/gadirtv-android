.class public final Lcom/google/android/gms/internal/ads/zzqr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final zzbrc:Ljava/lang/String;

.field private final zzbrd:Lorg/json/JSONObject;

.field private final zzbre:Ljava/lang/String;

.field private final zzbrf:Ljava/lang/String;

.field private final zzbrg:Z

.field private final zzbrh:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzazh;Ljava/lang/String;Lorg/json/JSONObject;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzazh;->zzbrf:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbrf:Ljava/lang/String;

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbrd:Lorg/json/JSONObject;

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbre:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbrc:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbrg:Z

    .line 7
    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbrh:Z

    return-void
.end method


# virtual methods
.method public final getUniqueId()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbre:Ljava/lang/String;

    return-object v0
.end method

.method public final isNative()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbrh:Z

    return v0
.end method

.method public final zzlu()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbrc:Ljava/lang/String;

    return-object v0
.end method

.method public final zzlv()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbrf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzlw()Lorg/json/JSONObject;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqr;->zzbrd:Lorg/json/JSONObject;

    return-object v0
.end method
