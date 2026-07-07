.class public Lcom/google/android/gms/internal/ads/zzeju;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.5.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzeju$zza;
    }
.end annotation


# static fields
.field private static volatile zzikg:Z = false

.field private static zzikh:Z = true

.field private static volatile zziki:Lcom/google/android/gms/internal/ads/zzeju;

.field private static volatile zzikj:Lcom/google/android/gms/internal/ads/zzeju;

.field private static final zzikk:Lcom/google/android/gms/internal/ads/zzeju;


# instance fields
.field private final zzikl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zzeju$zza;",
            "Lcom/google/android/gms/internal/ads/zzekh$zzd<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeju;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzeju;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeju;->zzikk:Lcom/google/android/gms/internal/ads/zzeju;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzeju;->zzikl:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeju;->zzikl:Ljava/util/Map;

    return-void
.end method

.method public static zzbhe()Lcom/google/android/gms/internal/ads/zzeju;
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeju;->zziki:Lcom/google/android/gms/internal/ads/zzeju;

    if-nez v0, :cond_1

    .line 3
    const-class v1, Lcom/google/android/gms/internal/ads/zzeju;

    monitor-enter v1

    .line 4
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeju;->zziki:Lcom/google/android/gms/internal/ads/zzeju;

    if-nez v0, :cond_0

    .line 7
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeju;->zzikk:Lcom/google/android/gms/internal/ads/zzeju;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzeju;->zziki:Lcom/google/android/gms/internal/ads/zzeju;

    .line 8
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static zzbhf()Lcom/google/android/gms/internal/ads/zzeju;
    .locals 2

    .line 10
    const-class v0, Lcom/google/android/gms/internal/ads/zzeju;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzeju;->zzikj:Lcom/google/android/gms/internal/ads/zzeju;

    if-eqz v1, :cond_0

    return-object v1

    .line 13
    :cond_0
    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzeju;->zzikj:Lcom/google/android/gms/internal/ads/zzeju;

    if-eqz v1, :cond_1

    .line 16
    monitor-exit v0

    return-object v1

    .line 18
    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzekg;->zze(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzeju;

    move-result-object v1

    .line 20
    sput-object v1, Lcom/google/android/gms/internal/ads/zzeju;->zzikj:Lcom/google/android/gms/internal/ads/zzeju;

    .line 21
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzels;I)Lcom/google/android/gms/internal/ads/zzekh$zzd;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/android/gms/internal/ads/zzels;",
            ">(TContainingType;I)",
            "Lcom/google/android/gms/internal/ads/zzekh$zzd<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeju;->zzikl:Ljava/util/Map;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzeju$zza;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzeju$zza;-><init>(Ljava/lang/Object;I)V

    .line 24
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzekh$zzd;

    return-object p1
.end method
