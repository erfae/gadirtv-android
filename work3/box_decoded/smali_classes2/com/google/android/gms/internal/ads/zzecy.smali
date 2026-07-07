.class public final Lcom/google/android/gms/internal/ads/zzecy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# static fields
.field private static final zzhzr:Lcom/google/android/gms/internal/ads/zzegf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzhzs:Lcom/google/android/gms/internal/ads/zzegf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zzhzt:Lcom/google/android/gms/internal/ads/zzegf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final zziax:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/ads/zzecu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzecu;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeae;->getKeyType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzecy;->zziax:Ljava/lang/String;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegf;->zzbes()Lcom/google/android/gms/internal/ads/zzegf;

    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/gms/internal/ads/zzecy;->zzhzr:Lcom/google/android/gms/internal/ads/zzegf;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzecy;->zzhzs:Lcom/google/android/gms/internal/ads/zzegf;

    .line 8
    sput-object v0, Lcom/google/android/gms/internal/ads/zzecy;->zzhzt:Lcom/google/android/gms/internal/ads/zzegf;

    .line 9
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzecy;->zzbai()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 12
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static zzbai()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzecu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzecu;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeap;->zza(Lcom/google/android/gms/internal/ads/zzeae;Z)V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzecp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzecp;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeap;->zza(Lcom/google/android/gms/internal/ads/zzeae;Z)V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzecx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzecx;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeap;->zza(Lcom/google/android/gms/internal/ads/zzeao;)V

    return-void
.end method
