.class final Lcom/google/android/gms/internal/cast/zzkg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# instance fields
.field private final buffer:[B

.field private final zzbji:Lcom/google/android/gms/internal/cast/zzkp;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzkg;->buffer:[B

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzkp;->zza([B)Lcom/google/android/gms/internal/cast/zzkp;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzkg;->zzbji:Lcom/google/android/gms/internal/cast/zzkp;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/cast/zzkb;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/cast/zzkg;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final zzih()Lcom/google/android/gms/internal/cast/zzjy;
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzkg;->zzbji:Lcom/google/android/gms/internal/cast/zzkp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cast/zzkp;->zzil()V

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/cast/zzki;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzkg;->buffer:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cast/zzki;-><init>([B)V

    return-object v0
.end method

.method public final zzii()Lcom/google/android/gms/internal/cast/zzkp;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzkg;->zzbji:Lcom/google/android/gms/internal/cast/zzkp;

    return-object v0
.end method
