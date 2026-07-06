.class public abstract Lcom/google/android/play/core/splitinstall/testing/zzt;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.3"


# static fields
.field public static final zza:Lcom/google/android/play/core/splitinstall/testing/zzt;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/play/core/splitinstall/testing/zza;

    invoke-direct {v0}, Lcom/google/android/play/core/splitinstall/testing/zza;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/splitinstall/testing/zza;->zzb(Ljava/util/Map;)Lcom/google/android/play/core/splitinstall/testing/zzs;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/testing/zza;->zzd()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/play/core/splitinstall/testing/zza;->zzb(Ljava/util/Map;)Lcom/google/android/play/core/splitinstall/testing/zzs;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/play/core/splitinstall/testing/zza;->zzc()Lcom/google/android/play/core/splitinstall/testing/zzt;

    move-result-object v0

    .line 6
    sput-object v0, Lcom/google/android/play/core/splitinstall/testing/zzt;->zza:Lcom/google/android/play/core/splitinstall/testing/zzt;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zza()Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/play/core/splitinstall/model/SplitInstallErrorCode;
    .end annotation
.end method

.method public abstract zzb()Ljava/util/Map;
.end method
