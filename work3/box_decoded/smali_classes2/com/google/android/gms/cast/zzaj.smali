.class final synthetic Lcom/google/android/gms/cast/zzaj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zzdk:Lcom/google/android/gms/cast/zzak;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/zzak;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzaj;->zzdk:Lcom/google/android/gms/cast/zzak;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzaj;->zzdk:Lcom/google/android/gms/cast/zzak;

    check-cast p1, Lcom/google/android/gms/cast/internal/zzs;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzs;->getService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/internal/zzz;

    iget-object v0, v0, Lcom/google/android/gms/cast/zzak;->zzdl:Lcom/google/android/gms/cast/zzay;

    invoke-interface {v1, v0}, Lcom/google/android/gms/cast/internal/zzz;->zzb(Lcom/google/android/gms/cast/internal/zzab;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/cast/internal/zzs;->getService()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/cast/internal/zzz;

    invoke-interface {p1}, Lcom/google/android/gms/cast/internal/zzz;->connect()V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void
.end method
