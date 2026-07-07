.class final synthetic Lcom/google/android/gms/cast/zzaz;
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

    iput-object p1, p0, Lcom/google/android/gms/cast/zzaz;->zzet:Lcom/google/android/gms/cast/zzay;

    iput p2, p0, Lcom/google/android/gms/cast/zzaz;->zzeu:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/zzaz;->zzet:Lcom/google/android/gms/cast/zzay;

    iget v1, p0, Lcom/google/android/gms/cast/zzaz;->zzeu:I

    .line 2
    iget-object v2, v0, Lcom/google/android/gms/cast/zzay;->zzev:Lcom/google/android/gms/cast/zzak;

    sget v3, Lcom/google/android/gms/cast/zzo;->zzas:I

    invoke-static {v2, v3}, Lcom/google/android/gms/cast/zzak;->zzc(Lcom/google/android/gms/cast/zzak;I)I

    .line 3
    iget-object v0, v0, Lcom/google/android/gms/cast/zzay;->zzev:Lcom/google/android/gms/cast/zzak;

    invoke-static {v0}, Lcom/google/android/gms/cast/zzak;->zzd(Lcom/google/android/gms/cast/zzak;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/cast/zzp;

    .line 4
    invoke-virtual {v2, v1}, Lcom/google/android/gms/cast/zzp;->onConnectionSuspended(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
