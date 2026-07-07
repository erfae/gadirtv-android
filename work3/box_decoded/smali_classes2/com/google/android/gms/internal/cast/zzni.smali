.class final Lcom/google/android/gms/internal/cast/zzni;
.super Lcom/google/android/gms/internal/cast/zzno;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cast/zzno;"
    }
.end annotation


# instance fields
.field private final synthetic zzbqq:Lcom/google/android/gms/internal/cast/zznd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/cast/zznd;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzni;->zzbqq:Lcom/google/android/gms/internal/cast/zznd;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/cast/zzno;-><init>(Lcom/google/android/gms/internal/cast/zznd;Lcom/google/android/gms/internal/cast/zzng;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/cast/zznd;Lcom/google/android/gms/internal/cast/zzng;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzni;-><init>(Lcom/google/android/gms/internal/cast/zznd;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/cast/zznf;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzni;->zzbqq:Lcom/google/android/gms/internal/cast/zznd;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/cast/zznf;-><init>(Lcom/google/android/gms/internal/cast/zznd;Lcom/google/android/gms/internal/cast/zzng;)V

    return-object v0
.end method
