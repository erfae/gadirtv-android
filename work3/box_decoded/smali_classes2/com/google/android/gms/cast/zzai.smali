.class public final Lcom/google/android/gms/cast/zzai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# static fields
.field public static final zzde:Lcom/google/android/gms/common/Feature;

.field private static final zzdf:Lcom/google/android/gms/common/Feature;

.field public static final zzdg:Lcom/google/android/gms/common/Feature;

.field private static final zzdh:Lcom/google/android/gms/common/Feature;

.field private static final zzdi:Lcom/google/android/gms/common/Feature;

.field public static final zzdj:[Lcom/google/android/gms/common/Feature;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/common/Feature;

    const-string v1, "cxless_client_minimal"

    const-wide/16 v2, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/google/android/gms/cast/zzai;->zzde:Lcom/google/android/gms/common/Feature;

    .line 2
    new-instance v1, Lcom/google/android/gms/common/Feature;

    const-string v4, "cxless_caf_control"

    invoke-direct {v1, v4, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v1, Lcom/google/android/gms/cast/zzai;->zzdf:Lcom/google/android/gms/common/Feature;

    .line 3
    new-instance v4, Lcom/google/android/gms/common/Feature;

    const-string v5, "module_flag_control"

    invoke-direct {v4, v5, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v4, Lcom/google/android/gms/cast/zzai;->zzdg:Lcom/google/android/gms/common/Feature;

    .line 4
    new-instance v5, Lcom/google/android/gms/common/Feature;

    const-string v6, "discovery_hint_supply"

    invoke-direct {v5, v6, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v5, Lcom/google/android/gms/cast/zzai;->zzdh:Lcom/google/android/gms/common/Feature;

    .line 5
    new-instance v6, Lcom/google/android/gms/common/Feature;

    const-string v7, "relay_casting_set_active_account"

    invoke-direct {v6, v7, v2, v3}, Lcom/google/android/gms/common/Feature;-><init>(Ljava/lang/String;J)V

    sput-object v6, Lcom/google/android/gms/cast/zzai;->zzdi:Lcom/google/android/gms/common/Feature;

    const/4 v2, 0x5

    new-array v2, v2, [Lcom/google/android/gms/common/Feature;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v4, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v6, v2, v0

    .line 6
    sput-object v2, Lcom/google/android/gms/cast/zzai;->zzdj:[Lcom/google/android/gms/common/Feature;

    return-void
.end method
