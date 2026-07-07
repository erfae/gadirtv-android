.class public final Lcom/google/android/gms/internal/ads/zzecj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.5.0"


# static fields
.field public static final zzhzr:Lcom/google/android/gms/internal/ads/zzegf;
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

.field private static final zzial:Ljava/lang/String;

.field private static final zziam:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzech;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzech;-><init>()V

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeae;->getKeyType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzecj;->zzial:Ljava/lang/String;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzecc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzecc;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeae;->getKeyType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzecj;->zziam:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegf;->zzbes()Lcom/google/android/gms/internal/ads/zzegf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzecj;->zzhzr:Lcom/google/android/gms/internal/ads/zzegf;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegf;->zzbes()Lcom/google/android/gms/internal/ads/zzegf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzecj;->zzhzs:Lcom/google/android/gms/internal/ads/zzegf;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzegf;->zzbes()Lcom/google/android/gms/internal/ads/zzegf;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzecj;->zzhzt:Lcom/google/android/gms/internal/ads/zzegf;

    .line 8
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeav;->zzbai()V

    .line 9
    new-instance v0, Lcom/google/android/gms/internal/ads/zzecc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzecc;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzech;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzech;-><init>()V

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeap;->zza(Lcom/google/android/gms/internal/ads/zzeaq;Lcom/google/android/gms/internal/ads/zzeae;Z)V

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeci;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzeci;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeap;->zza(Lcom/google/android/gms/internal/ads/zzeao;)V

    .line 11
    new-instance v0, Lcom/google/android/gms/internal/ads/zzecm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzecm;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeap;->zza(Lcom/google/android/gms/internal/ads/zzeao;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 14
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
