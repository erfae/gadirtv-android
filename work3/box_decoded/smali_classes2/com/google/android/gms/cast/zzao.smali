.class final synthetic Lcom/google/android/gms/cast/zzao;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zzdk:Lcom/google/android/gms/cast/zzak;

.field private final zzem:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/zzak;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzao;->zzdk:Lcom/google/android/gms/cast/zzak;

    iput-boolean p2, p0, Lcom/google/android/gms/cast/zzao;->zzem:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/cast/zzao;->zzdk:Lcom/google/android/gms/cast/zzak;

    iget-boolean v1, p0, Lcom/google/android/gms/cast/zzao;->zzem:Z

    check-cast p1, Lcom/google/android/gms/cast/internal/zzs;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/gms/cast/zzak;->zza(ZLcom/google/android/gms/cast/internal/zzs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
