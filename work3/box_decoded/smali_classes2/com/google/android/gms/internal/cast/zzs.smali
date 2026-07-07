.class final synthetic Lcom/google/android/gms/internal/cast/zzs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/cast/zzba;


# static fields
.field static final zzmu:Lcom/google/android/gms/internal/cast/zzba;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/cast/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzs;->zzmu:Lcom/google/android/gms/internal/cast/zzba;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)Lcom/google/android/gms/common/api/Result;
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzt;->zza(Ljava/lang/Void;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Result;

    return-object p1
.end method
