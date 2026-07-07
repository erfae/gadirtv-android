.class final synthetic Lcom/google/android/gms/cast/zzar;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zzdk:Lcom/google/android/gms/cast/zzak;

.field private final zzeo:Ljava/lang/String;

.field private final zzep:Lcom/google/android/gms/internal/cast/zzeg;

.field private final zzeq:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/zzak;Lcom/google/android/gms/internal/cast/zzeg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzar;->zzdk:Lcom/google/android/gms/cast/zzak;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/cast/zzar;->zzep:Lcom/google/android/gms/internal/cast/zzeg;

    iput-object p3, p0, Lcom/google/android/gms/cast/zzar;->zzeo:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/cast/zzar;->zzeq:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/cast/zzar;->zzdk:Lcom/google/android/gms/cast/zzak;

    iget-object v1, p0, Lcom/google/android/gms/cast/zzar;->zzep:Lcom/google/android/gms/internal/cast/zzeg;

    iget-object v2, p0, Lcom/google/android/gms/cast/zzar;->zzeo:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/cast/zzar;->zzeq:Ljava/lang/String;

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/cast/internal/zzs;

    move-object v5, p2

    check-cast v5, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/cast/zzak;->zza(Lcom/google/android/gms/internal/cast/zzeg;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/internal/zzs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
