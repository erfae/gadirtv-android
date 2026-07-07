.class final Lcom/google/android/gms/cast/internal/zzaj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/cast/internal/zzam;


# instance fields
.field private final synthetic zzaef:Lcom/google/android/gms/cast/internal/zzam;

.field private final synthetic zzaeg:Lcom/google/android/gms/cast/internal/zzah;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/internal/zzah;Lcom/google/android/gms/cast/internal/zzam;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/cast/internal/zzaj;->zzaeg:Lcom/google/android/gms/cast/internal/zzah;

    iput-object p2, p0, Lcom/google/android/gms/cast/internal/zzaj;->zzaef:Lcom/google/android/gms/cast/internal/zzam;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(JILjava/lang/Object;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaj;->zzaeg:Lcom/google/android/gms/cast/internal/zzah;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/internal/zzah;->zza(Lcom/google/android/gms/cast/internal/zzah;Ljava/lang/Long;)Ljava/lang/Long;

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaj;->zzaef:Lcom/google/android/gms/cast/internal/zzam;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/cast/internal/zzam;->zza(JILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzb(J)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/cast/internal/zzaj;->zzaef:Lcom/google/android/gms/cast/internal/zzam;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/cast/internal/zzam;->zzb(J)V

    :cond_0
    return-void
.end method
