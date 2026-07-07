.class final synthetic Lcom/google/android/gms/cast/zzbe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzet:Lcom/google/android/gms/cast/zzay;

.field private final zzex:Lcom/google/android/gms/cast/internal/zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/zzay;Lcom/google/android/gms/cast/internal/zzb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzbe;->zzet:Lcom/google/android/gms/cast/zzay;

    iput-object p2, p0, Lcom/google/android/gms/cast/zzbe;->zzex:Lcom/google/android/gms/cast/internal/zzb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzbe;->zzet:Lcom/google/android/gms/cast/zzay;

    iget-object v1, p0, Lcom/google/android/gms/cast/zzbe;->zzex:Lcom/google/android/gms/cast/internal/zzb;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/cast/zzay;->zzev:Lcom/google/android/gms/cast/zzak;

    invoke-static {v0, v1}, Lcom/google/android/gms/cast/zzak;->zza(Lcom/google/android/gms/cast/zzak;Lcom/google/android/gms/cast/internal/zzb;)V

    return-void
.end method
