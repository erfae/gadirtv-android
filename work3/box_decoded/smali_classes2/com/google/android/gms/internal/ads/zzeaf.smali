.class public final Lcom/google/android/gms/internal/ads/zzeaf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# instance fields
.field private final zzhyn:Lcom/google/android/gms/internal/ads/zzefr;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzefr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeaf;->zzhyn:Lcom/google/android/gms/internal/ads/zzefr;

    return-void
.end method

.method static final zza(Lcom/google/android/gms/internal/ads/zzefr;)Lcom/google/android/gms/internal/ads/zzeaf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzefr;->zzbdu()I

    move-result v0

    if-lez v0, :cond_0

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeaf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzeaf;-><init>(Lcom/google/android/gms/internal/ads/zzefr;)V

    return-object v0

    .line 6
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeaf;->zzhyn:Lcom/google/android/gms/internal/ads/zzefr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeaw;->zzb(Lcom/google/android/gms/internal/ads/zzefr;)Lcom/google/android/gms/internal/ads/zzefs;

    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzekh;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzazz()Lcom/google/android/gms/internal/ads/zzefr;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeaf;->zzhyn:Lcom/google/android/gms/internal/ads/zzefr;

    return-object v0
.end method
