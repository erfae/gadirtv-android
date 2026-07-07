.class final synthetic Lcom/google/android/gms/cast/zzau;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/RemoteCall;


# instance fields
.field private final zzdk:Lcom/google/android/gms/cast/zzak;

.field private final zzek:Ljava/lang/String;

.field private final zzes:Lcom/google/android/gms/cast/LaunchOptions;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/zzak;Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzau;->zzdk:Lcom/google/android/gms/cast/zzak;

    iput-object p2, p0, Lcom/google/android/gms/cast/zzau;->zzek:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/cast/zzau;->zzes:Lcom/google/android/gms/cast/LaunchOptions;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/cast/zzau;->zzdk:Lcom/google/android/gms/cast/zzak;

    iget-object v1, p0, Lcom/google/android/gms/cast/zzau;->zzek:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/cast/zzau;->zzes:Lcom/google/android/gms/cast/LaunchOptions;

    check-cast p1, Lcom/google/android/gms/cast/internal/zzs;

    check-cast p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/android/gms/cast/zzak;->zza(Ljava/lang/String;Lcom/google/android/gms/cast/LaunchOptions;Lcom/google/android/gms/cast/internal/zzs;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    return-void
.end method
