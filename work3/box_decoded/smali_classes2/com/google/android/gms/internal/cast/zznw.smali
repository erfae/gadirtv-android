.class final Lcom/google/android/gms/internal/cast/zznw;
.super Lcom/google/android/gms/internal/cast/zznu;
.source "com.google.android.gms:play-services-cast@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/cast/zznu<",
        "Lcom/google/android/gms/internal/cast/zznt;",
        "Lcom/google/android/gms/internal/cast/zznt;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/cast/zznu;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/cast/zzon;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    check-cast p1, Lcom/google/android/gms/internal/cast/zznt;

    .line 21
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zznt;->zzb(Lcom/google/android/gms/internal/cast/zzon;)V

    return-void
.end method

.method final synthetic zzc(Ljava/lang/Object;Lcom/google/android/gms/internal/cast/zzon;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17
    check-cast p1, Lcom/google/android/gms/internal/cast/zznt;

    .line 18
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/cast/zznt;->zza(Lcom/google/android/gms/internal/cast/zzon;)V

    return-void
.end method

.method final zze(Ljava/lang/Object;)V
    .locals 0

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/cast/zzlc;

    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzlc;->zzbmy:Lcom/google/android/gms/internal/cast/zznt;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zznt;->zzib()V

    return-void
.end method

.method final synthetic zzf(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Lcom/google/android/gms/internal/cast/zznt;

    .line 27
    check-cast p1, Lcom/google/android/gms/internal/cast/zzlc;

    iput-object p2, p1, Lcom/google/android/gms/internal/cast/zzlc;->zzbmy:Lcom/google/android/gms/internal/cast/zznt;

    return-void
.end method

.method final synthetic zzg(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 12
    check-cast p1, Lcom/google/android/gms/internal/cast/zznt;

    check-cast p2, Lcom/google/android/gms/internal/cast/zznt;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/cast/zznt;->zzkz()Lcom/google/android/gms/internal/cast/zznt;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/cast/zznt;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 15
    :cond_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/cast/zznt;->zza(Lcom/google/android/gms/internal/cast/zznt;Lcom/google/android/gms/internal/cast/zznt;)Lcom/google/android/gms/internal/cast/zznt;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzl(Ljava/lang/Object;)I
    .locals 0

    .line 6
    check-cast p1, Lcom/google/android/gms/internal/cast/zznt;

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zznt;->zzjg()I

    move-result p1

    return p1
.end method

.method final synthetic zzo(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lcom/google/android/gms/internal/cast/zzlc;

    iget-object p1, p1, Lcom/google/android/gms/internal/cast/zzlc;->zzbmy:Lcom/google/android/gms/internal/cast/zznt;

    return-object p1
.end method

.method final synthetic zzp(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/google/android/gms/internal/cast/zznt;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/cast/zznt;->zzla()I

    move-result p1

    return p1
.end method
