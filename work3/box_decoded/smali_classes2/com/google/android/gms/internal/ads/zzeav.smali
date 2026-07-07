.class public final Lcom/google/android/gms/internal/ads/zzeav;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# static fields
.field public static final zzhzj:Ljava/lang/String;

.field public static final zzhzk:Ljava/lang/String;

.field private static final zzhzl:Ljava/lang/String;

.field private static final zzhzm:Ljava/lang/String;

.field private static final zzhzn:Ljava/lang/String;

.field private static final zzhzo:Ljava/lang/String;

.field private static final zzhzp:Ljava/lang/String;

.field private static final zzhzq:Ljava/lang/String;

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


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeaz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeaz;-><init>()V

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeae;->getKeyType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeav;->zzhzj:Ljava/lang/String;

    .line 14
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebj;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeae;->getKeyType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeav;->zzhzk:Ljava/lang/String;

    .line 15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebk;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeae;->getKeyType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeav;->zzhzl:Ljava/lang/String;

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebe;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeae;->getKeyType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeav;->zzhzm:Ljava/lang/String;

    .line 17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebq;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeae;->getKeyType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeav;->zzhzn:Ljava/lang/String;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebu;-><init>()V

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeae;->getKeyType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeav;->zzhzo:Ljava/lang/String;

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebp;-><init>()V

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeae;->getKeyType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeav;->zzhzp:Ljava/lang/String;

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebz;-><init>()V

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeae;->getKeyType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeav;->zzhzq:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegf;->zzbes()Lcom/google/android/gms/internal/ads/zzegf;

    move-result-object v0

    .line 25
    sput-object v0, Lcom/google/android/gms/internal/ads/zzeav;->zzhzr:Lcom/google/android/gms/internal/ads/zzegf;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeav;->zzhzs:Lcom/google/android/gms/internal/ads/zzegf;

    .line 26
    sput-object v0, Lcom/google/android/gms/internal/ads/zzeav;->zzhzt:Lcom/google/android/gms/internal/ads/zzegf;

    .line 27
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeav;->zzbai()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 30
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
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzecy;->zzbai()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeaz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeaz;-><init>()V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeap;->zza(Lcom/google/android/gms/internal/ads/zzeae;Z)V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebe;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebe;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeap;->zza(Lcom/google/android/gms/internal/ads/zzeae;Z)V

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebj;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeap;->zza(Lcom/google/android/gms/internal/ads/zzeae;Z)V

    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzebk;->zzbr(Z)V

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebp;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeap;->zza(Lcom/google/android/gms/internal/ads/zzeae;Z)V

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebq;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeap;->zza(Lcom/google/android/gms/internal/ads/zzeae;Z)V

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebu;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeap;->zza(Lcom/google/android/gms/internal/ads/zzeae;Z)V

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzebz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzebz;-><init>()V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeap;->zza(Lcom/google/android/gms/internal/ads/zzeae;Z)V

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeay;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeay;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeap;->zza(Lcom/google/android/gms/internal/ads/zzeao;)V

    return-void
.end method
