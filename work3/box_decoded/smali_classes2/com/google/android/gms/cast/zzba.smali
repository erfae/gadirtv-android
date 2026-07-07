.class final synthetic Lcom/google/android/gms/cast/zzba;
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

    iput-object p1, p0, Lcom/google/android/gms/cast/zzba;->zzet:Lcom/google/android/gms/cast/zzay;

    iput p2, p0, Lcom/google/android/gms/cast/zzba;->zzeu:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzba;->zzet:Lcom/google/android/gms/cast/zzay;

    iget v1, p0, Lcom/google/android/gms/cast/zzba;->zzeu:I

    if-nez v1, :cond_1

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/cast/zzay;->zzev:Lcom/google/android/gms/cast/zzak;

    sget v2, Lcom/google/android/gms/cast/zzo;->zzar:I

    invoke-static {v1, v2}, Lcom/google/android/gms/cast/zzak;->zzc(Lcom/google/android/gms/cast/zzak;I)I

    .line 4
    iget-object v1, v0, Lcom/google/android/gms/cast/zzay;->zzev:Lcom/google/android/gms/cast/zzak;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/cast/zzak;->zza(Lcom/google/android/gms/cast/zzak;Z)Z

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/cast/zzay;->zzev:Lcom/google/android/gms/cast/zzak;

    invoke-static {v1, v2}, Lcom/google/android/gms/cast/zzak;->zzb(Lcom/google/android/gms/cast/zzak;Z)Z

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/cast/zzay;->zzev:Lcom/google/android/gms/cast/zzak;

    invoke-static {v0}, Lcom/google/android/gms/cast/zzak;->zzd(Lcom/google/android/gms/cast/zzak;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/cast/zzp;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/cast/zzp;->onConnected()V

    goto :goto_0

    :cond_0
    return-void

    .line 9
    :cond_1
    iget-object v2, v0, Lcom/google/android/gms/cast/zzay;->zzev:Lcom/google/android/gms/cast/zzak;

    sget v3, Lcom/google/android/gms/cast/zzo;->zzaq:I

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/zzak;->zzc(Lcom/google/android/gms/cast/zzak;I)I

    .line 10
    iget-object v2, v0, Lcom/google/android/gms/cast/zzay;->zzev:Lcom/google/android/gms/cast/zzak;

    invoke-static {v2}, Lcom/google/android/gms/cast/zzak;->zzd(Lcom/google/android/gms/cast/zzak;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/cast/zzp;

    .line 11
    invoke-virtual {v3, v1}, Lcom/google/android/gms/cast/zzp;->zza(I)V

    goto :goto_1

    .line 13
    :cond_2
    iget-object v0, v0, Lcom/google/android/gms/cast/zzay;->zzev:Lcom/google/android/gms/cast/zzak;

    invoke-static {v0}, Lcom/google/android/gms/cast/zzak;->zze(Lcom/google/android/gms/cast/zzak;)V

    return-void
.end method
