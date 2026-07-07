.class final Lcom/google/android/gms/cast/internal/zzq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzacn:Lcom/google/android/gms/cast/internal/zzn;

.field private final synthetic zzacq:Lcom/google/android/gms/cast/internal/zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/internal/zzp;Lcom/google/android/gms/cast/internal/zzn;Lcom/google/android/gms/cast/internal/zzb;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zzq;->zzacn:Lcom/google/android/gms/cast/internal/zzn;

    iput-object p3, p0, Lcom/google/android/gms/cast/internal/zzq;->zzacq:Lcom/google/android/gms/cast/internal/zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzq;->zzacn:Lcom/google/android/gms/cast/internal/zzn;

    iget-object v1, p0, Lcom/google/android/gms/cast/internal/zzq;->zzacq:Lcom/google/android/gms/cast/internal/zzb;

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/internal/zzn;->zza(Lcom/google/android/gms/cast/internal/zzn;Lcom/google/android/gms/cast/internal/zzb;)V

    return-void
.end method
