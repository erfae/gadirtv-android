.class final synthetic Lcom/google/android/gms/cast/zzax;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-cast@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzet:Lcom/google/android/gms/cast/zzay;

.field private final zzeu:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/cast/zzay;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/cast/zzax;->zzet:Lcom/google/android/gms/cast/zzay;

    iput p2, p0, Lcom/google/android/gms/cast/zzax;->zzeu:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzax;->zzet:Lcom/google/android/gms/cast/zzay;

    iget v1, p0, Lcom/google/android/gms/cast/zzax;->zzeu:I

    .line 2
    iget-object v2, v0, Lcom/google/android/gms/cast/zzay;->zzev:Lcom/google/android/gms/cast/zzak;

    invoke-static {v2}, Lcom/google/android/gms/cast/zzak;->zzf(Lcom/google/android/gms/cast/zzak;)V

    .line 3
    iget-object v2, v0, Lcom/google/android/gms/cast/zzay;->zzev:Lcom/google/android/gms/cast/zzak;

    sget v3, Lcom/google/android/gms/cast/zzo;->zzaq:I

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/zzak;->zzc(Lcom/google/android/gms/cast/zzak;I)I

    .line 4
    iget-object v2, v0, Lcom/google/android/gms/cast/zzay;->zzev:Lcom/google/android/gms/cast/zzak;

    invoke-static {v2}, Lcom/google/android/gms/cast/zzak;->zzd(Lcom/google/android/gms/cast/zzak;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/zzp;

    .line 5
    invoke-virtual {v3, v1}, Lcom/google/android/gms/cast/zzp;->zzb(I)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/cast/zzay;->zzev:Lcom/google/android/gms/cast/zzak;

    invoke-static {v1}, Lcom/google/android/gms/cast/zzak;->zze(Lcom/google/android/gms/cast/zzak;)V

    .line 8
    iget-object v1, v0, Lcom/google/android/gms/cast/zzay;->zzev:Lcom/google/android/gms/cast/zzak;

    iget-object v0, v0, Lcom/google/android/gms/cast/zzay;->zzev:Lcom/google/android/gms/cast/zzak;

    iget-object v0, v0, Lcom/google/android/gms/cast/zzak;->zzdl:Lcom/google/android/gms/cast/zzay;

    invoke-static {v1, v0}, Lcom/google/android/gms/cast/zzak;->zza(Lcom/google/android/gms/cast/zzak;Lcom/google/android/gms/cast/internal/zzab;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method
