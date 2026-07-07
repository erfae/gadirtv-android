.class abstract Lcom/google/android/gms/internal/cast/zzlv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# static fields
.field private static final zzbos:Lcom/google/android/gms/internal/cast/zzlv;

.field private static final zzbot:Lcom/google/android/gms/internal/cast/zzlv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5
    new-instance v0, Lcom/google/android/gms/internal/cast/zzlx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzlx;-><init>(Lcom/google/android/gms/internal/cast/zzly;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzlv;->zzbos:Lcom/google/android/gms/internal/cast/zzlv;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/cast/zzma;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzma;-><init>(Lcom/google/android/gms/internal/cast/zzly;)V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzlv;->zzbot:Lcom/google/android/gms/internal/cast/zzlv;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zzly;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzlv;-><init>()V

    return-void
.end method

.method static zzjt()Lcom/google/android/gms/internal/cast/zzlv;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/cast/zzlv;->zzbos:Lcom/google/android/gms/internal/cast/zzlv;

    return-object v0
.end method

.method static zzju()Lcom/google/android/gms/internal/cast/zzlv;
    .locals 1

    .line 3
    sget-object v0, Lcom/google/android/gms/internal/cast/zzlv;->zzbot:Lcom/google/android/gms/internal/cast/zzlv;

    return-object v0
.end method


# virtual methods
.method abstract zza(Ljava/lang/Object;J)V
.end method

.method abstract zza(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method
