.class final Lcom/google/android/gms/internal/cast/zzcy;
.super Lcom/google/android/gms/internal/cast/zzdo;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# instance fields
.field private final synthetic zzaen:Lcom/google/android/gms/internal/cast/zzcz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzcz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzcy;->zzaen:Lcom/google/android/gms/internal/cast/zzcz;

    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zzdo;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzad(I)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/cast/zzcz;->zzfj()Lcom/google/android/gms/cast/internal/Logger;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onRemoteDisplayEnded"

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/cast/zzcy;->zzaen:Lcom/google/android/gms/internal/cast/zzcz;

    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzcz;->zza(Lcom/google/android/gms/internal/cast/zzcz;)V

    return-void
.end method
