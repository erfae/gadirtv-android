.class public abstract Lcom/google/android/gms/internal/cast/zzdu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"


# static fields
.field private static final zzafc:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/google/android/gms/internal/cast/zzdu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/cast/zzdx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/cast/zzdx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/cast/zzdu;->zzafc:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzfl()Lcom/google/android/gms/internal/cast/zzdu;
    .locals 1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/cast/zzdu;->zzafc:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/cast/zzdu;

    return-object v0
.end method


# virtual methods
.method public abstract zza(Lcom/google/android/gms/internal/cast/zzdw;)V
.end method
