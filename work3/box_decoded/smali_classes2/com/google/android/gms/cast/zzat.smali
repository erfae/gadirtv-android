.class final synthetic Lcom/google/android/gms/cast/zzat;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zzdk:Lcom/google/android/gms/cast/zzak;

.field private final zzek:Ljava/lang/String;

.field private final zzeo:Ljava/lang/String;

.field private final zzer:Lcom/google/android/gms/cast/zzbg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/zzak;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzbg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzat;->zzdk:Lcom/google/android/gms/cast/zzak;

    iput-object p2, p0, Lcom/google/android/gms/cast/zzat;->zzek:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/cast/zzat;->zzeo:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/cast/zzat;->zzer:Lcom/google/android/gms/cast/zzbg;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/cast/zzat;->zzdk:Lcom/google/android/gms/cast/zzak;

    iget-object v1, p0, Lcom/google/android/gms/cast/zzat;->zzek:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/cast/zzat;->zzeo:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/cast/zzat;->zzer:Lcom/google/android/gms/cast/zzbg;

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/cast/internal/zzs;

    move-object v5, p2

    check-cast v5, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/cast/zzak;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/cast/zzbg;Lcom/google/android/gms/cast/internal/zzs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
