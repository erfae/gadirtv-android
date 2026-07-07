.class final synthetic Lcom/google/android/gms/internal/cast/zzaz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast-framework@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field private final zznp:Lcom/google/android/gms/internal/cast/zzbb;

.field private final zznq:Lcom/google/android/gms/internal/cast/zzba;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cast/zzbb;Lcom/google/android/gms/internal/cast/zzba;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cast/zzaz;->zznp:Lcom/google/android/gms/internal/cast/zzbb;

    iput-object p2, p0, Lcom/google/android/gms/internal/cast/zzaz;->zznq:Lcom/google/android/gms/internal/cast/zzba;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/cast/zzaz;->zznp:Lcom/google/android/gms/internal/cast/zzbb;

    iget-object v1, p0, Lcom/google/android/gms/internal/cast/zzaz;->zznq:Lcom/google/android/gms/internal/cast/zzba;

    .line 2
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/cast/zzba;->zza(Ljava/lang/Object;)Lcom/google/android/gms/common/api/Result;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/cast/zzbb;->setResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
